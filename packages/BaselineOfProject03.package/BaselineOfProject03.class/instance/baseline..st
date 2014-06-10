baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'Designer-Core';
                package: 'Designer-Tests' with: [ spec requires: #('Designer-Core') ].
            spec
                group: 'default' with: #('Designer-Core');
                group: 'Tests' with: #('Designer-Tests');
                group: 'TravisCI' with: #('Tests') ]
