"
Description
--------------------

I am a screen containing divers demo on MDC elevations.
"
Class {
	#name : #MDCElevationDemoScreen,
	#superclass : #MDCComponentDemo,
	#category : #'Material-Components-Demo-Components'
}

{ #category : #accessing }
MDCElevationDemoScreen class >> description [
	^ 'Elevation is the relative depth, or distance, between two surfaces along the z-axis.'
]

{ #category : #accessing }
MDCElevationDemoScreen class >> icon [
	^ 'elevationPng'
]

{ #category : #accessing }
MDCElevationDemoScreen class >> title [
	^ 'Elevation'
]

{ #category : #sections }
MDCElevationDemoScreen >> elevations [
	^ OrderedDictionary new
		add: 'Elevations' -> #renderElevationsOn:;
		yourself
]

{ #category : #rendering }
MDCElevationDemoScreen >> renderDocumentationOn: html [
	html div
		mdcClass: 'documentation';
		with: [ html heading
				level2;
				with: 'API'.

			html paragraph: 'Options: '.
			html
				table: [ html
						tableHead: [ html
								tableRow: [ html
										tableHeading: 'Selector';
										tableHeading: 'Description' ] ].
					html
						tableBody: [ html
								tableRow: [ html
										tableData: [ html code: '#mdcElevation:' ];
										tableData:
											'Elevation is the relative depth, or distance, between two surfaces along the z-axis.
	It takes as parameter an Integer that should be between 0 and 24. 0 will not add any elevation. 24 is the max elevation possible.' ].
							html
								tableRow: [ html
										tableData: [ html code: '#mdcElevationTransition' ];
										tableData: 'Applies the correct css rules to transition an element between elevations.' ] ] ] ]
]

{ #category : #rendering }
MDCElevationDemoScreen >> renderElevationsOn: html [
	html mdcGrid
		cellSpacing: 50;
		with: [ html
				mdcInnerGrid: [ 0 to: 24 do: [ :elevation | 
						html mdcCell
							size: 2;
							mdcElevation: elevation;
							with: elevation asString , 'dp' ] ] ]
]

{ #category : #rendering }
MDCElevationDemoScreen >> renderScreenContentOn: html [
	self render: self elevations fullWidth: true on: html
]
