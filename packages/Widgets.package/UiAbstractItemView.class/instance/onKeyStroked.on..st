signals - unboxing
onKeyStroked: aKeyboardEvent on: aModelIndex

	aModelIndex ifNil: [^ self].
	self keyStroked: aKeyboardEvent on: aModelIndex node.