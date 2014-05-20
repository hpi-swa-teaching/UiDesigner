| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'Project03';
  repository: 'filetree://', gitPath, '/SWTI2014-Project-03/packages';
  get.

Metacello new
  baseline: 'Project03';
  repository: 'filetree://', gitPath, '/SWTI2014-Project-03/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'Designer-Tests' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
