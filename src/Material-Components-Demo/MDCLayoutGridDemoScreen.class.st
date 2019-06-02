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
	^ 'Layout Grid'
]

{ #category : #accessing }
MDCLayoutGridDemoScreen >> actualClasses [
	^ { MDCGrid. MDCInnerGrid. MDCCell }
]

{ #category : #sections }
MDCLayoutGridDemoScreen >> cellPositions [ 
	^ OrderedDictionary new
		add: 'Cell positions' -> #renderCellPositionsDemoOn:;
		yourself
]

{ #category : #sections }
MDCLayoutGridDemoScreen >> cellsOrder [
	^ OrderedDictionary new
		add: 'Cell order' -> #renderCellOrderDemoOn:;
		yourself
]

{ #category : #sections }
MDCLayoutGridDemoScreen >> fixedColumnWidth [ 
	^ OrderedDictionary new
		add: 'Grid with fixed columns width' -> #renderFixedColumnWidthDemoOn:;
		yourself
]

{ #category : #sections }
MDCLayoutGridDemoScreen >> gridAlignment [ 
	^ OrderedDictionary new
		add: 'Grid alignment' -> #renderGridAlignmentDemoOn:;
		yourself
]

{ #category : #sections }
MDCLayoutGridDemoScreen >> gridLayout [ 
	^ OrderedDictionary new
		add: 'Responsive grid' -> #renderGridDemoOn:;
		yourself
]

{ #category : #sections }
MDCLayoutGridDemoScreen >> gridSpacings [ 
	^ OrderedDictionary new
		add: 'Grid spacings' -> #renderGridSpacingsDemoOn:;
		yourself
]

{ #category : #sections }
MDCLayoutGridDemoScreen >> nestedGridLayout [ 
	^ OrderedDictionary new
		add: 'Nested grid' -> #renderNestedGridDemoOn:;
		yourself
]

{ #category : #rendering }
MDCLayoutGridDemoScreen >> pageNotes [
	^ 'Note: For the demo''s sake, grids and cells colors are updated in the style to make them visible.'
]

{ #category : #code }
MDCLayoutGridDemoScreen >> renderCellOrderDemoOn: html [
	html mdcGrid
		mdcElevation: 2;
		with: [ html
				mdcInnerGrid: [ html mdcCell
						size: 3;
						order: 4;
						with: 1.
					html mdcCell
						size: 3;
						order: 1;
						with: 2.
					html mdcCell
						size: 3;
						order: 3;
						with: 3.
					html mdcCell
						size: 3;
						order: 2;
						with: 4 ] ]
]

{ #category : #code }
MDCLayoutGridDemoScreen >> renderCellPositionsDemoOn: html [
	html mdcGrid
		mdcElevation: 4;
		with: [ html mdcInnerGrid
				style: 'height: 150px;';
				with: [ html mdcCell
						top;
						size: 3;
						with: 'Top'.
					html mdcCell
						middle;
						size: 3;
						with: 'Middle'.
					html mdcCell
						bottom;
						size: 3;
						with: 'Bottom'.
					html mdcCell
						size: 3;
						with: 'Stretch' ] ]
]

{ #category : #code }
MDCLayoutGridDemoScreen >> renderFixedColumnWidthDemoOn: html [
	html mdcGrid
		mdcElevation: 4;
		fixedColumnWidth: 30;
		with: [ html
				mdcInnerGrid: [ 1 to: 12 do: [ :i | html mdcCell: 1 size: 1 ].
					1 to: 3 do: [ :i | html mdcCell: 4 size: 4 ] ] ].
	html break.
	html mdcGrid
		mdcElevation: 4;
		fixedColumnWidthDesktop: 40 tablet: 30 phone: 20;
		with: [ html
				mdcInnerGrid: [ 1 to: 12 do: [ :i | html mdcCell: 1 size: 1 ].
					1 to: 3 do: [ :i | html mdcCell: 4 size: 4 ] ] ]
]

{ #category : #code }
MDCLayoutGridDemoScreen >> renderGridAlignmentDemoOn: html [
	html mdcGrid
		mdcElevation: 4;
		style: 'width: 50%;';
		with: [ html mdcInnerGrid with: [ 4 timesRepeat: [ html mdcCell: 3 size: 3 ] ] ].
	html break.
	html mdcGrid
		mdcElevation: 4;
		alignLeft;
		style: 'width: 50%;';
		with: [ html mdcInnerGrid with: [ 4 timesRepeat: [ html mdcCell: 3 size: 3 ] ] ].
	html break.
	html mdcGrid
		mdcElevation: 4;
		alignRight;
		style: 'width: 50%;';
		with: [ html mdcInnerGrid with: [ 4 timesRepeat: [ html mdcCell: 3 size: 3 ] ] ]
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
MDCLayoutGridDemoScreen >> renderGridSpacingsDemoOn: html [
	html mdcGrid
		mdcElevation: 4;
		margin: 10;
		cellSpacing: 20;
		with: [ html mdcInnerGrid with: [ 4 timesRepeat: [ html mdcCell: 3 size: 3 ] ] ].
	html break.
	html mdcGrid
		mdcElevation: 4;
		marginDesktop: 30 tablet: 20 phone: 10;
		cellSpacingDesktop: 40 tablet: 30 phone: 20;
		with: [ html mdcInnerGrid with: [ 4 timesRepeat: [ html mdcCell: 3 size: 3 ] ] ].
	html break.
	html mdcGrid
		mdcElevation: 4;
		noSpacing;
		with: [ html mdcInnerGrid with: [ 4 timesRepeat: [ html mdcCell: 3 size: 3 ] ] ]
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
		render: self nestedGridLayout fullWidth: true on: html;
		render: self cellPositions fullWidth: true on: html;
		render: self cellsOrder fullWidth: true on: html;
		render: self fixedColumnWidth fullWidth: true on: html;
		render: self gridAlignment fullWidth: true on: html;
		render: self gridSpacings fullWidth: true on: html
]
