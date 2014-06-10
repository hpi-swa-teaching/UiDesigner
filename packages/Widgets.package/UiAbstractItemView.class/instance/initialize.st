initialization
initialize

	"Initialize headers."
	verticalHeader := Morph new color: Color transparent; changeTableLayout; listDirection: #topToBottom; hResizing: #shrinkWrap; cellInset: -1 "hacky".
	horizontalHeader := Morph new color: Color transparent; changeTableLayout; listDirection: #leftToRight; vResizing: #shrinkWrap.
	vHeaderScroller := UiTransformMorph new.
	hHeaderScroller := UiTransformMorph new.

	super initialize.
	
	self
		borderWidth: 0;
		color: Color white.
	super color: Color transparent.
		
	self
		verticalScrollBarPolicy: #asNeeded;
		horizontalScrollBarPolicy: #asNeeded.
		
	"Initialize viewport."
	self widget: self viewportClass new.
	self widget groupSpec: UiItemViewGroupSpec new. "for creating group separator items"
	
	self connect: self viewport signal: #focusChanged: toSelector: #scrollToShow:.
	self connect: self viewport signal: #hovered: toSelector: #onHovered:.
	self connect: self viewport signal: #clicked: toSelector: #onClicked:.
	self connect: self viewport signal: #doubleClicked: toSelector: #onDoubleClicked:.
	self connect: self viewport signal: #selectionChanged: toSelector: #onSelectionChanged:.
	self connect: self viewport signal: #currentIndexChanged: toSelector: #onCurrentIndexChanged:.
	self connect: self viewport signal: #activated: toSelector: #onActivated:.
	self connect: self viewport signal: #returnPressed: toSelector: #onReturnPressed:.
	self connect: self viewport signal: #menuRequestedAt:on: toSelector: #showMenuAt:on:.
	self connect: self viewport signal: #edited: toSelector: #onEdited:.
	self connect: self viewport signal: #objectDropped:type:from:on: toSelector: #onObjectDropped:type:from:on:.
	self connect: self viewport signal: #objectDropped:type:from:before: toSelector: #onObjectDropped:type:from:before:.
	self connect: self viewport signal: #objectDropped:type:from:after: toSelector: #onObjectDropped:type:from:after:.
	self connect: self viewport signal: #objectDropped:type:from: toSelector: #objectDropped:type:from:.

	self connect: self viewport signal: #keyStroked:on: toSelector: #onKeyStroked:on:.

	"Needs to be redefined here beacuse the viewport catches keyboard and mouse events."
	self connect: self viewport signal: #mouseWheelUp to: self verticalScrollBar selector: #decreaseValueBySingleStep.
	self connect: self viewport signal: #mouseWheelDown to: self verticalScrollBar selector: #increaseValueBySingleStep.

	self viewport verticalHeader: verticalHeader.
	self viewport horizontalHeader: horizontalHeader.
	
	"Vertical scrolling is dependent from default item height."
	self verticalScrollBar singleStep: UiItemViewColumnSpec defaultItemExtent y.
	
	"Initialize headers - Finish."
	verticalHeader connect: self viewport signal: #resizedToWidth:height: toSelector: #height: pattern: #(2).
	vHeaderScroller connect: self transformMorph signal: #verticalOffsetChanged: toSelector: #verticalOffset:.
	self connect: vHeaderScroller signal: #areaChanged toSelector: #resizeVerticalHeaderScroller.
	vHeaderScroller addMorph: verticalHeader.

	horizontalHeader connect: self viewport signal: #resizedToWidth:height: toSelector: #width:.
	hHeaderScroller connect: self transformMorph signal: #horizontalOffsetChanged: toSelector: #horizontalOffset:.
	self connect: hHeaderScroller signal: #areaChanged toSelector: #resizeHorizontalHeaderScroller.
	hHeaderScroller addMorph: horizontalHeader.