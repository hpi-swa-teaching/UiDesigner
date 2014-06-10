context menu
showContextMenuForMorph: aMorph atHand: aHand

	| menu |
	menu := SBMenu new.
	
	self
		connect: (menu addAction: (SBAction new text: 'vResizing'))
		signal: #triggered
		to: aMorph
		selector: #vResizing:
		pattern: #(=#spaceFill).
	
	"Clean up the menu."
	menu connect: self signal: #focusChanged: toSelector: #delete.
	
	"Get focus and show menu."
	aHand newKeyboardFocus: self.
	menu popUp..