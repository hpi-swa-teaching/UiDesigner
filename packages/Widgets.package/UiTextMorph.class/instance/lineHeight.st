accessing
lineHeight
	"Return the height of one line in pixel."
	
	self flag: #tofix. "calculation is wrong"
	^ self textStyle leading + self textStyle lineGrid + 1.1