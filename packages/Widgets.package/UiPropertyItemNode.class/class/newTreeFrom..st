instance creation
newTreeFrom: someAssociations
	"Allow to create a tree structure by following the path of association values."

	| node |
	node := self new addDefaultGroup.
	someAssociations do: [:assoc |
		| child |
		child := self newTreeFrom: assoc value.
		child data: assoc key.
		node addChild: child].
	
	^ node

"	UiPropertyItemNode newFrom: {#apple -> {#green -> {}. #yellow -> {}. #brown -> {#noWorm -> {}} }}.
"