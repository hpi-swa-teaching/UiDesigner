accessing
scrollingMode
	"Decide when or if to show vertical scroll bar.
	#none ... deactivate any special handling
	#never ... expand vertically and never show scroll bar
	#limit ... use #scrollingLimit to decide when to add the scroll bar
	#always ... always show scroll bar and have the height specified by #scrollingLimit"
	
	^ scrollingMode ifNil: [scrollingMode := #none]