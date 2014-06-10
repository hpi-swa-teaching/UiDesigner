accessing
selectBlock: aBlock
	"Filter nodes resp. control node visibility, e.g., [:node | node text size > 5]."

	self viewport selectBlock: aBlock.