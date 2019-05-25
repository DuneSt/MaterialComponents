"
I am a baseline of MaterialComponents. Read more at: https://github.com/DuneSt/MaterialComponents
"
Class {
	#name : #BaselineOfMaterialComponents,
	#superclass : #BaselineOf,
	#category : #BaselineOfMaterialComponents
}

{ #category : #baseline }
BaselineOfMaterialComponents >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Dependencies"
			self
				seaside3: spec;
				fileLibraryHelper: spec;
				materialColors: spec.	
			
			"Packages"
			spec
				package: 'Material-Components-Components' with: [ spec requires: #('MaterialColors' 'Seaside3') ];
				"package: 'Material-Components-Components-Tests' with: [ spec requires: #('components') ];
				package: 'Material-Components-Widgets' with: [ spec requires: #('components') ];
				package: 'Material-Components-Widgets-Tests' with: [ spec requires: #('widgets' 'Material-Components-Components-Tests') ];
				package: 'Material-Components-Extensions' with: [ spec requires: #('utils' 'components') ];
				package: 'Material-Components-Extensions-Tests' with: [ spec requires: #('extensions' 'Material-Components-Components-Tests') ];"
				package: 'Material-Components-Utils' with: [ spec requires: #('Seaside3') ];
				package: 'Material-Components-Demo' with: [ spec requires: #('core' 'utils') ];
				package: 'Material-Components-Dev' with: [ spec requires: #('core' 'utils' 'FileLibraryHelper') ].
			
			"Groups"
			spec
				group: 'all' with: #('default');
				"group: 'core' with: #('components' 'widgets' 'extensions');"
				group: 'components' with: #('Material-Components-Components');
				"group: 'widgets' with: #('Material-Components-Widgets');
				group: 'extensions' with: #('Material-Components-Extensions');"
				group: 'utils' with: #('Material-Components-Utils');
				group: 'default' with: #('core' 'tests' 'demo');
				group: 'demo' with: #('Material-Components-Demo');
				group: 'dev' with: #('default' 'Material-Components-Dev')";
				group: 'tests' with: #('Material-Components-Components-Tests' 'Material-Components-Widgets-Tests' 'Material-Components-Extensions-Tests')" ]
]

{ #category : #dependencies }
BaselineOfMaterialComponents >> fileLibraryHelper: spec [
	"I small project to help developers to manage the files in the FileLibrary."

	spec
		baseline: 'FileLibraryHelper'
		with: [ spec repository: 'github://jecisc/FileLibraryHelper:v1.x.x/src' ]
]

{ #category : #dependencies }
BaselineOfMaterialComponents >> materialColors: spec [
	spec
		baseline: 'MaterialColors'
		with: [ spec repository: 'github://DuneSt/MaterialColors:v2.x.x/src' ]
]

{ #category : #accessing }
BaselineOfMaterialComponents >> projectClass [
	^ [ self class environment at: #MetacelloCypressBaselineProject ]
		on: NotFound
		do: [ super projectClass ]
]

{ #category : #dependencies }
BaselineOfMaterialComponents >> seaside3: spec [
	spec
		baseline: 'Seaside3'
		with: [ spec
				loads: #('Core' 'JQuery' 'Zinc');
				repository: 'github://SeasideSt/Seaside/repository' ]
]
