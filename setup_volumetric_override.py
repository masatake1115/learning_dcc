import numpy as np

node = hou.pwd()
geo = node.geometry()

# Add code to modify contents of geo.
# Use drop down menu to select examples.


def MinimumBoundingRectangle( hull_points ):
    """
    Find the smallest bounding rectangle for a set of points.
    Returns a set of points representing the corners of the bounding box.

    :param points: an nx2 matrix of coordinates
    :rval: an nx2 matrix of coordinates
    """
    pi2 = np.pi/2.

    # calculate edge angles
    edges = np.zeros((len(hull_points)-1, 2))
    edges = hull_points[1:] - hull_points[:-1]

    angles = np.zeros((len(edges)))
    angles = np.arctan2(edges[:, 1], edges[:, 0])

    angles = np.abs(np.mod(angles, pi2))
    angles = np.unique(angles)

    # find rotation matrices
    rotations = np.vstack([
        np.cos(angles),
        np.cos(angles-pi2),
        np.cos(angles+pi2),
        np.cos(angles)]).T
    rotations = rotations.reshape((-1, 2, 2))

    # apply rotations to the hull
    rot_points = np.dot(rotations, hull_points.T)

    # find the bounding points
    min_x = np.nanmin(rot_points[:, 0], axis=1)
    max_x = np.nanmax(rot_points[:, 0], axis=1)
    min_y = np.nanmin(rot_points[:, 1], axis=1)
    max_y = np.nanmax(rot_points[:, 1], axis=1)

    # find the box with the best area
    areas = (max_x - min_x) * (max_y - min_y)
    best_idx = np.argmin(areas)

    # return the best box
    x1 = max_x[best_idx]
    x2 = min_x[best_idx]
    y1 = max_y[best_idx]
    y2 = min_y[best_idx]
    r = rotations[best_idx]

    rval = np.zeros((4, 2))
    rval[0] = np.dot([x1, y2], r)
    rval[1] = np.dot([x2, y2], r)
    rval[2] = np.dot([x2, y1], r)
    rval[3] = np.dot([x1, y1], r)

    return rval



convex_hull = node.input(1).geometry()


points = np.empty((0,2),float)

for p in convex_hull.points():
    pos = p.position()
    points = np.append( points, np.array([[pos.x(),pos.z()]]), axis=0 )
   
print( points )

mbr = MinimumBoundingRectangle( points )

mbr_len = len(mbr)
# Register mbr points
for p in mbr:
    point = geo.createPoint()
    point.setPosition( (p[0], 0.0, p[1]) )

# Create primitives
for i in range(mbr_len):
    poly = geo.createPolygon()
    poly.addVertex( geo.point(i) )
    poly.addVertex( geo.point((i+1)%mbr_len) )
    

# TODO: Add mbr_area attribute in detail






import math

node = hou.pwd()
geo = node.geometry()

# Add code to modify contents of geo.
# Use drop down menu to select examples.



def DotProduct( a, b ):
    return a.x() * b.x() + a.y() * b.y()


    
# Returns z component of 2d vector crossproduct
def CrossProductZ( a, b ):
        return a.x() * b.y() - b.x() * a.y()



def Distance( a, b ):
    d = a-b
    return math.sqrt( d.x()*d.x() + d.y()*d.y() )
        
    
    
def ClosestPointOnLineSegment( P, Q1, Q2, clampQ1=True, clampQ2=True ):
    s = 0
    O = Q1

    Q12 = Q2 - Q1

    Q12_P       = DotProduct( Q12, P )
    Q12_Q1      = DotProduct( Q12, Q1 )
    Q12_Q12     = DotProduct( Q12, Q12 )

    if( Q12_Q12 < 1.0e-9 ):
        return

    s = ( Q12_P - Q12_Q1 ) / Q12_Q12
    if( clampQ1 ): s = max( s, 0 )
    if( clampQ2 ): s = min( s, 1 )

    O = Q1 + s*Q12

    return O, s



# Distance to line segment
def DistanceToLineSegment( P, Q1, Q2, clampQ1=True, clampQ2=True ):
    #O = Point2D()# closest point on line segment(Q1, Q2)
    #s = 0.0# Q1->Q2 vector scale
    O, s = ClosestPointOnLineSegment( P, Q1, Q2, clampQ1, clampQ2 )
    return Distance( P, O )




def IsAbove( p, q1, q2 ):
    return CrossProductZ( q2-q1, p-q1 ) > 0



def GatherAbove( points, q1, q2 ):

    results = []
    farthest_idx = -1

    max_d = 0
    for p in points:
        # Check if p is on the left side(above) of line segment (q1,q2)
        if( not IsAbove( p, q1, q2 ) ): continue
        
        d = DistanceToLineSegment( p, q1, q2, False, False )
        if( d > max_d ):# Record fartherst point index
            max_d = d
            farthest_idx = len(results)
        results.append(p)

    return results, farthest_idx



def QuickHull_rec( points, q1, q2 ):#, hull_points ):

    #print( "//============= QuickHull_rec: %s, %s ===============//" % (q1, q2) )

    hull_points = []

    upper_points, farthest_idx = GatherAbove( points, q1, q2 )

    if( farthest_idx!=-1 ):# The farthest point found.
        #print( "  appending farthest upper point to hull_points:", upper_points[farthest_idx] )

        # Traverse (q1-farthest) sub segment and gather hull points
        hull_points += QuickHull_rec( upper_points, q1, upper_points[farthest_idx] )#, hull_points )

        # Append farthest point
        hull_points.append( upper_points[farthest_idx] )

        # Traverse (farthest-q2) sub segment and gather hull points
        hull_points += QuickHull_rec( upper_points, upper_points[farthest_idx], q2 )#, hull_points )

    return hull_points



def QuickHull( points ):
    # 出力
    hull_points = []

    # Get split segment end points
    q1, q2 = ( min( points, key=lambda item : item.x()), max( points, key=lambda item : item.x()) )

    hull_points.append(q1)
    hull_points += QuickHull_rec( points, q1, q2)#, hull_points )

    hull_points.append(q2)
    hull_points += QuickHull_rec( points, q2, q1)#, hull_points )

    return hull_points


    


#################################################################
#                           main                                #
#################################################################

geom_in1 = node.input(1).geometry()
points = [ hou.Vector2(p.position().x(), p.position().z()) for p in geom_in1.points() ]

hull_points = QuickHull( points )

poly = geo.createPolygon(False)
for p in hull_points:
    point = geo.createPoint()
    point.setPosition( (p.x(), 0.0, p.y()) )
    poly.addVertex( point )
poly.addVertex( geo.point(0) )
