as yet unclassified
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'Designer-Core';
				package: 'Designer-Support';
				package: 'Designer-Tests' with: [ spec requires: #('default')].
				
			spec
				group: 'default' with: #('Designer-Core' 'Designer-Support');
				group: 'Tests' with: #('Designer-Test');
				group: 'TravisCI' with: #('Tests')]