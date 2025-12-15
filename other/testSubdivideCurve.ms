fn subdivideSplineSegments targetShape segmentCount =
(
    -- Make splile shape editable
    convertTo targetShape Edit_Spline --Editable_Spline

    local num_splines = numSplines targetShape
    

    -- iterate all splines in the targetShape
    for s = 1 to num_splines do
    (
        local num_segments = /*getNumSegments*/numSegments targetShape s
		getsegmen
        
		print( num_segments  )
        -- Iterate segments
        -- Segment index starts from 1 in MaxScript
        for segIndex = num_segments to 1 by -1 do
        (
			count = 3

			for i = 1 to count do
			(
				d = dummy()
				pathInterp d theSpline ((i-1.0)/(count-1))
			)			
			
		
        )
    )
    
    -- Inform completion
    completeRedraw()
    format "Object '%' : all segments are splitted into % \n" targetShape.name segmentCount
)

-- --- exec ---
(
    local selectedObjects = selection as array
    local targetSegmentCount = 5 -- Specify arbitrary numbers!
    
    if selectedObjects.count == 0 do (
        messageBox "Select spline shape(curve)." title:"Error"
        return undefined
    )
    
    for obj in selectedObjects do (
        -- process spline shape
        if superclassof obj == Shape do (
            subdivideSplineSegments obj targetSegmentCount
        )
    )
)