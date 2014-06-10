iterator api - testing
hasPrevious

	^ self currentIndex ~= self rootIndex or: [self hasFinished]