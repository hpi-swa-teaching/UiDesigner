as yet unclassified
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [
			spec package: 'Designer'.
				
			spec
				group: 'default' with: #('Designer-Core' 'Designer-Support');
				group: 'Tests' with: #('Designer-Test');
				group: 'TravisCI' with: #('Tests')]
