item model - hierarchy
childCountInGroup: groupName
	"Override this if you can return the group size in a faster way ;-)"

	^ (self perform: groupName) size