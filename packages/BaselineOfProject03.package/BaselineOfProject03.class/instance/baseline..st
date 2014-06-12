baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                project: 'Widgets' with: [ spec
     						className: 'ConfigurationOfWidgets';
						versionString: #stable;
						loads: #('default');		
       						repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository';
						yourself ];
                package: 'Designer-Core' with: [ spec requires: #('Widgets' 'Designer-Support') ];
                package: 'Designer-Support' with: [ spec requires: #('Widgets') ];
                package: 'Designer-Templates' with: [ spec requires: #('Widgets') ];
                package: 'Designer-Tests' with: [ spec requires: #('Designer-Core' 'Widgets') ].
            spec
                group: 'default' with: #('Designer-Core' 'Designer-Support' 'Designer-Templates');
                group: 'Tests' with: #('Designer-Tests');
                group: 'TravisCI' with: #('Tests') ]
