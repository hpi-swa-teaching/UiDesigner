iterator api - testing
hasPrevious

	^ self current ~= self root first or: [self hasFinished]