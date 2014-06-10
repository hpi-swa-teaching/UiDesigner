rows/columns - to cell
cellIndexAt: colAndRow

	| row column |
	row := colAndRow y.
	column := colAndRow x.

	^ (self columnOrder mapIndexOf: column)
		@ (self rowOrder mapIndexOf: row)