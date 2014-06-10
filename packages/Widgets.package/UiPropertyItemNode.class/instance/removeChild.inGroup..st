removing
removeChild: aNode inGroup: aGroup

	^ self removeChildAt: ((self children at: aGroup) indexOf: aNode) inGroup: aGroup