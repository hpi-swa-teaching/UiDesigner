event handling
onKeyStroked: aKeyboardEvent on: aModelIndex
	"Default keyboard interaction."

	aKeyboardEvent keyCharacter = $*
		ifTrue: [
			self flag: #badSytle. "mt: Need other callback. This one deals only with given aModelIndex..."
			self selection selectedIndices do: [:i |
				self expandAllIndices: i]].
	aKeyboardEvent keyCharacter = Character arrowRight
		ifTrue: [self expandIndex: aModelIndex].
	aKeyboardEvent keyCharacter = Character arrowLeft
		ifTrue: [self collapseIndex: aModelIndex].
		
	super onKeyStroked: aKeyboardEvent on: aModelIndex.