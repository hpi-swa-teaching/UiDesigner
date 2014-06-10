updating
step
	
	killTime <= Time now ifTrue: [self stopStepping; fadeOutAndDelete]