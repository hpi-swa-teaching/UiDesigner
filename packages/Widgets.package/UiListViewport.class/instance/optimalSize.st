accessing
optimalSize

	columns ifEmpty: [^ 1@1].

	self orientation = #default ifTrue: [
		^ columns first optimalSize @ self height].
	
	self orientation = #vertical ifTrue: [
		^ maxItemExtent x @ self height].
	
	self orientation = #horizontal ifTrue: [
		^ self width @ maxItemExtent y].