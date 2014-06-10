drag/drop
dropsBefore: evt bounds: cellBounds

	^ evt position y < (cellBounds top + (cellBounds height // 2))