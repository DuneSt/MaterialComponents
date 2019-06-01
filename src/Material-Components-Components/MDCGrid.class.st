"
Description
--------------------

Material design’s responsive UI is based on a column-variate grid layout. It has 12 columns on desktop, 8 columns on tablet and 4 columns on phone.

This brush allows to create a grid.

Public API and Key Messages
--------------------

Browse the #options protocol to find the different ways to customize a button.

Examples
--------------------
	
	html
		mdcGrid: [ html
			mdcGridInner: [ 1 to: 12 do: [ :i | html mdcCell: 1 size: 1 ].
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
"
Class {
	#name : #MDCGrid,
	#superclass : #MDCDivTag,
	#category : #'Material-Components-Components-LayoutGrid'
}

{ #category : #options }
MDCGrid >> alignLeft [
	<mdcApi: 'Optional, specifies the alignment of the whole grid to be at the left in case the grid does not takes the full width' priority: 30>
	self mdcClass: 'layout-grid--align-left'
]

{ #category : #options }
MDCGrid >> alignRight [
	<mdcApi: 'Optional, specifies the alignment of the whole grid to be at the right in case the grid does not takes the full width' priority: 30>
	self mdcClass: 'layout-grid--align-right'
]

{ #category : #options }
MDCGrid >> cellSpacing: anInteger [
	<mdcApi: 'Optional, specifies the space between edges of adjacent cells in pixels. This option applies the same space on desktop, tablet and mobile.' priority: 70>
	self cellSpacingDesktop: anInteger tablet: anInteger phone: anInteger
]

{ #category : #options }
MDCGrid >> cellSpacingDesktop: anInteger1 tablet: anInteger2 phone: anInteger3 [
	<mdcApi: 'Optional, specifies the space between edges of adjacent cells in pixels on different devices.' priority: 80>
	self
		styleAt: '--mdc-layout-grid-gutter-desktop' put: anInteger1 asString , 'px';
		styleAt: '--mdc-layout-grid-gutter-tablet' put: anInteger2 asString , 'px';
		styleAt: '--mdc-layout-grid-gutter-phone' put: anInteger3 asString , 'px'
]

{ #category : #options }
MDCGrid >> fixedColumnWidth: anInteger [
	<mdcApi:
		'Optional, specifies the grid should have fixed column width of the value passed as parameter in pixels. Cells on multiple columns will also includes the margins in their size. This option applies the same width on desktop, tablet and mobile.'
	priority: 10>
	self fixedColumnWidthDesktop: anInteger tablet: anInteger phone: anInteger
]

{ #category : #options }
MDCGrid >> fixedColumnWidthDesktop: anInteger1 tablet: anInteger2 phone: anInteger3 [
	<mdcApi:
		'Optional, specifies the grid should have fixed column width that can varie depending on the device of the values passed as parameters in pixels. Cells on multiple columns will also includes the margins in their size.'
	priority: 20>
	self
		mdcClass: 'layout-grid--fixed-column-width';
		styleAt: '--mdc-layout-grid-column-width-desktop' put: anInteger1 asString , 'px';
		styleAt: '--mdc-layout-grid-column-width-tablet' put: anInteger2 asString , 'px';
		styleAt: '--mdc-layout-grid-column-width-phone' put: anInteger3 asString , 'px'
]

{ #category : #initialization }
MDCGrid >> initialize [
	<mdcConstructor: #mdcGrid description: 'Creates a grid wrapper to contain a grid.'>
	<mdcConstructor: #mdcGrid: description: 'Creates a grid wrapper to contain a grid with implicit content.'>
	super initialize.
	self mdcClass: 'layout-grid'
]

{ #category : #options }
MDCGrid >> margin: anInteger [
	<mdcApi: 'Optional, specifies the space between the edge of the grid and the edge of the first cell in pixels. This option applies the same margin on desktop, tablet and mobile.' priority: 50>
	self marginDesktop: anInteger tablet: anInteger phone: anInteger
]

{ #category : #options }
MDCGrid >> marginDesktop: anInteger1 tablet: anInteger2 phone: anInteger3 [
	<mdcApi: 'Optional, specifies the space between the edge of the grid and the edge of the first cell in pixel on different devices.' priority: 60>
	self
		styleAt: '--mdc-layout-grid-margin-desktop' put: anInteger1 asString , 'px';
		styleAt: '--mdc-layout-grid-margin-tablet' put: anInteger2 asString , 'px';
		styleAt: '--mdc-layout-grid-margin-phone' put: anInteger3 asString , 'px'
]

{ #category : #options }
MDCGrid >> noSpacing [
	<mdcApi: 'Optional, remove the margin and cell spacing of the grid. All cells will stick to each others and to the borders of the grid.' priority: 90>
	self
		margin: 0;
		cellSpacing: 0
]
