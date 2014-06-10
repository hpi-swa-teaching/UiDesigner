initialization
createItem

	| item |
	item := self itemClass new
		balloonText: nil;
		enabled: true;
		icon: nil;
		menu: nil;
		text: nil;
		yourself.
	self connect: item signal: #deleted to: self model selector: #removeChild:inGroup: pattern: #(0 =items).
	^ item