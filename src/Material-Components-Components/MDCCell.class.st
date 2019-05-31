"
Description
--------------------

Material design’s responsive UI is based on a column-variate grid layout. It has 12 columns on desktop, 8 columns on tablet and 4 columns on phone.

This brush allows to create a cell contained in a grid.

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
	#name : #MDCCell,
	#superclass : #MDCDivTag,
	#category : #'Material-Components-Components-LayoutGrid'
}

{ #category : #options }
MDCCell >> bottom [
	<mdcApi: 'Optional, specifies the alignment of cell to be at the bottom of its parent.' priority: 70>
		
	self mdcClass: 'layout-grid__cell--align-bottom'
]

{ #category : #options }
MDCCell >> desktopSize: anInteger [
	<mdcApi: 'Optional, specifies the number of columns the cell spans on desktop.' priority: 20>
	self mdcClass: 'layout-grid__cell--span-' , anInteger asString , '-desktop'
]

{ #category : #initialization }
MDCCell >> initialize [
	<mdcConstructor: #mdcCell description: 'Creates a cell for a layout grid.'>
	<mdcConstructor: #mdcCell: description: 'Creates a cell for a layout grid with implicit content.'>
	<mdcConstructor: #mdcCell:size: description: 'Creates a cell for a layout grid with implicit content specifying the number of columns the cell spans.'>
	<mdcConstructor: #mdcCell:desktopSize: description: 'Creates a cell for a layout grid with implicit content specifying the number of columns the cell spans to apply on desktop.'>
	<mdcConstructor: #mdcCell:tabletSize: description: 'Creates a cell for a layout grid with implicit content specifying the number of columns the cell spans to apply on tablet.'>
	<mdcConstructor: #mdcCell:phoneSize: description: 'Creates a cell for a layout grid with implicit content specifying the number of columns the cell spans to apply on mobile.'>
	<mdcConstructor: #mdlCellDesktop:tablet:phone:with: description: 'Creates a cell for a layout grid with implicit content specifying the number of columns the cell spans to apply on desktop, tablet and mobile.'>
	super initialize.
	self mdcClass: 'layout-grid__cell'
]

{ #category : #options }
MDCCell >> middle [
	<mdcApi: 'Optional, specifies the alignment of cell to be at the middle of its parent.' priority: 60>
		
	self mdcClass: 'layout-grid__cell--align-middle'
]

{ #category : #options }
MDCCell >> order: anInteger [
	<mdcApi: 'Optional, specifies the order of the cell. Parameter need to be an integer between 1 and 12. Please bear in mind that this may have an impact on accessibility, since screen readers and other tools tend to follow source order.' priority: 80>
	self mdcClass: 'layout-grid__cell--order-', anInteger asString
]

{ #category : #options }
MDCCell >> phoneSize: anInteger [ 
	<mdcApi: 'Optional, specifies the number of columns the cell spans on mobile.' priority: 40>
	self mdcClass: 'layout-grid__cell--span-', anInteger asString , '-phone'
]

{ #category : #options }
MDCCell >> size: anInteger [
	<mdcApi: 'Optional, specifies the number of columns the cell spans.' priority: 10>
	self mdcClass: 'layout-grid__cell--span-' , anInteger asString
]

{ #category : #options }
MDCCell >> tabletSize: anInteger [ 
	<mdcApi: 'Optional, specifies the number of columns the cell spans on tablet.' priority: 30>
	self mdcClass: 'layout-grid__cell--span-', anInteger asString , '-tablet'
]

{ #category : #options }
MDCCell >> top [
	<mdcApi: 'Optional, specifies the alignment of cell to be at the top of its parent.' priority: 50>
		
	self mdcClass: 'layout-grid__cell--align-top'
]
