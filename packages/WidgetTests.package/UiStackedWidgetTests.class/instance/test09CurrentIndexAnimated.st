tests
test09CurrentIndexAnimated
	"Timing issue. Maybe simulate world cycles for 500 ms. Would make test runs slower though..."

	sut animated: true.
	self test03CurrentIndexAndPage.  