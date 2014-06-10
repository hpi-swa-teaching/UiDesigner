rows/columns - to morph
morphAt: aCellIndex

	^ self columnOrder items: (self rowAt: aCellIndex y) items at: aCellIndex x