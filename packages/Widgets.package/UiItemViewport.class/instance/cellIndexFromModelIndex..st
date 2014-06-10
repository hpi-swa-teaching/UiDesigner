rows/columns - to cell
cellIndexFromModelIndex: aModelIndex

	| row column |
	aModelIndex ifNil: [^ nil].

	row := rows indexOf: (self rowFor: aModelIndex).
	column := columns indexOf: (self columnFor: aModelIndex).

	^ (self columnOrder mapIndexOf: column)
		@ (self rowOrder mapIndexOf: row)