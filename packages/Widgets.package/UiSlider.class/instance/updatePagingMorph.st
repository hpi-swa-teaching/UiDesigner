updating
updatePagingMorph

	pagingMorph
		extent: 5@5.

	self orientation = #horizontal ifTrue: [
		pagingMorph
			hResizing: #spaceFill;
			vResizing: #rigid].
		
	self orientation = #vertical ifTrue: [
		pagingMorph
			hResizing: #rigid;
			vResizing: #spaceFill].