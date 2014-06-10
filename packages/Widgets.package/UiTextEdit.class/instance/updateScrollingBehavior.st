layouting
updateScrollingBehavior
	"Read #scrollingLimit and #scrollingMode and update height and scroll bar visibility."
	
	self scrollingMode ~= #none
		ifTrue: [
			areaResizable := true.
			verticalScrollBarPolicy := #asNeeded].
	
	self scrollingMode = #never
		ifTrue: [verticalScrollBarPolicy := #alwaysOff].
		
	self scrollingMode = #limit ifTrue: [
		self scrollingLimit < self textMorph lineCountComposed
			ifTrue: [
				verticalScrollBarPolicy := #alwaysOn.
				self height: self preferredHeight]
			ifFalse: [verticalScrollBarPolicy := #alwaysOff]].
		
	self scrollingMode = #always ifTrue: [
		verticalScrollBarPolicy := #alwaysOn.
		self height: self preferredHeight].