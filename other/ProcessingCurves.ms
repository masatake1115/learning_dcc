fn processSelectedObject = 
(
	local sampleCount = 20  -- ????????????

	selectedObject = selection[1]
	
	-- check selection
	if selection.count != 1 or not isKindOf selectedObject Shape then
	(
		messageBox "Selct spline"
		return undefined
	)

	
	local num_segments = numSegments selectedObject 1
	print(num_segments )
	
	local seg_lengths = getSegLengths selectedObject 1
	print( seg_lengths )
	-- seg_lengths format [  normalized length[1], normalized length[2], normalized length[3], length[1], length[2], length[3], total length  ]
	
	print("----------")
	
	local curveLen = curveLength selectedObject 1
	print( curveLen )
	
	print("TODO: place point on curve")
	
	local shapeTotalLength = 0.0

	/*
	for i=1 to num_segments do
	(
		local curveLen = curveLength selectedObject i
		
	)
	*/
	
	/*
	local shapeTotalLength = 0.0
	local numCurves = numSplines selectedObject
	
	format "NumCurves: %\n" numCurves
	
	for i = 1 to numCurves do
	(
		local curveLen = curveLength selectedObject i
		
		format "curve % len = %\n" i curveLen
		shapeTotalLength = shapeTotalLength + curveLen
	)
	
	format "Object '%' 's total length: % \n" selectedObject.name shapeTotalLength
	*/
/*		
	count = 10

	for i = 1 to count do
	(
		--d = dummy()
		local pos = pathInterp selectedObject 1 ((i-1.0)/(count-1))
		local pt = point size:5 cross:true
		pt.pos = pos
		pt.name = ("SamplePoint_" + i as string)
	)	
*/		

/*
	local splineIndex = 1
	local splineLength = curveLength shp splineIndex

	for i = 0 to sampleCount - 1 do
	(
		-- ????(0.0 ~ 1.0)
		local dist = (splineLength * i) / (sampleCount - 1)
		--local t = dist / splineLength
		local t = float(i)/float(sampleCount)
		-- ???????????
		local pos = pathInterp shp splineIndex t

		-- Point Helper ???
		local pt = point size:5 cross:true
		pt.pos = pos
		pt.name = ("SamplePoint_" + i as string)
	)
*/
)


processSelectedObject()