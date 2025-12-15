srcObj = selection[1]
#instObj = instance srcObj


posArray = #(
    [0, 0, 100],
    [100, 0, 0],
    [0, 100, 0],
    [100, 100, 0]
)

/*
-- Create Instance
for p in posArray do (
    inst = instance srcObj
    inst.position = p
)
*/

-- Create Reference
for p in posArray do (
    refObj = reference srcObj	
    refObj.position = p
)
