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
MDCGrid >> fixedColumnWidth: anInteger [
	<mdcApi:
		'Optional, specifies the grid should have fixed column width of the value passed as parameter in pixels. Cells on multiple columns will also includes the margins in their size. This option applies the same width on desktop, tablet and mobile.'
	priority: 10>
	self fixedColumnWidthDesktop: anInteger tablet: anInteger phone: anInteger
]

{ #category : #options }
MDCGrid >> fixedColumnWidthDesktop: anInteger1 tablet: anInteger2 phone: anInteger3 [
	<mdcApi:
		'Optional, specifies the grid should have fixed column width that can varie dépending on the device of the values passed as parameters in pixels. Cells on multiple columns will also includes the margins in their size.'
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
