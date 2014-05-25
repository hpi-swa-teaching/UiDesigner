as yet unclassified
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'Designer-Core';
				package: 'Designer-Support';
				package: 'Designer-Tests'.
				
			spec
				group: 'default';
				group: 'Tests';
				group: 'TravisCI']