"
Description
--------------------

I am a screen containing divers demo on MDC layout grid.
"
Class {
	#name : #MDCLayoutGridDemoScreen,
	#superclass : #MDCComponentDemo,
	#category : #'Material-Components-Demo-Components'
}

{ #category : #accessing }
MDCLayoutGridDemoScreen class >> description [
	^ 'Material design’s responsive UI is based on a column-variate grid layout. It has 12 columns on desktop, 8 columns on tablet and 4 columns on phone.'
]

{ #category : #accessing }
MDCLayoutGridDemoScreen class >> icon [
	^ 'compgridPng'
]

{ #category : #accessing }
MDCLayoutGridDemoScreen class >> title [
	^ 'Layout grid'
]

{ #category : #accessing }
MDCLayoutGridDemoScreen >> actualClasses [
	^ { MDCGrid. MDCInnerGrid. MDCCell }
]

{ #category : #sections }
MDCLayoutGridDemoScreen >> gridLayout [ 
	^ OrderedDictionary new
		add: 'Responsive grid' -> #renderGridDemoOn:;
		yourself
]

{ #category : #sections }
MDCLayoutGridDemoScreen >> nestedGridLayout [ 
	^ OrderedDictionary new
		add: 'Nested grid' -> #renderNestedGridDemoOn:;
		yourself
]

{ #category : #code }
MDCLayoutGridDemoScreen >> renderGridDemoOn: html [
	html mdcGrid
		mdcElevation: 4;
		with: [ html
				mdcInnerGrid: [ 1 to: 12 do: [ :i | html mdcCell: 1 size: 1 ].
					1 to: 3 do: [ :i | html mdcCell: 4 size: 4 ].
					#(6 4 2) do: [ :int | html mdcCell: int size: int ].
					html mdcCell
						size: 6;
						tabletSize: 8;
						with: '6 (8 tablet)'.
					html mdcCell
						size: 4;
						tabletSize: 6;
						with: '4 (6 tablet)'.
					html mdcCell
						size: 2;
						phoneSize: 4;
						with: '2 (4 phone)' ] ]
]

{ #category : #code }
MDCLayoutGridDemoScreen >> renderNestedGridDemoOn: html [
	html mdcGrid
		mdcElevation: 4;
		with: [ html mdcInnerGrid: [ 
					1 to: 4 do: [ :i | html mdcCell: 'Level 1-' , i asString size: 4 ].
					html mdcCell: [ 
						html mdcInnerGrid: [ 
							1 to: 4 do: [ :i | 
								html mdcCell: 'Level 2-' , i asString size: 6 ] ] ] size: 12 ] ]
]

{ #category : #rendering }
MDCLayoutGridDemoScreen >> renderScreenContentOn: html [
	self
		render: self gridLayout fullWidth: true on: html;
		render: self nestedGridLayout fullWidth: true on: html
]

{ #category : #rendering }
MDCLayoutGridDemoScreen >> renderTitleComponentContent: html [
	super renderTitleComponentContent: html.
	html paragraph: [ html strong: 'Note: For the demo''s sake, grids and cells colors are updated in the style to make them visible.' ]
]

{ #category : #accessing }
MDCLayoutGridDemoScreen >> warningMessage [
	^ 'Grid components are in progress and not finished.'
]
