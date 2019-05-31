Class {
	#name : #MDCCellTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-LayoutGrid'
}

{ #category : #tests }
MDCCellTest >> testBareBrush [
	self assert: [ :html | html mdcCell ] generates: '<div class="mdc-layout-grid__cell"></div>'
]

{ #category : #tests }
MDCCellTest >> testBottom [
	self
		assert: [ :html | 
			html mdcCell
				bottom;
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid__cell mdc-layout-grid__cell--align-bottom">Test</div>'
]

{ #category : #tests }
MDCCellTest >> testDesktopSize [
	self assert: [ :html | html mdcCell: 'Test' desktopSize: 2 ] generates: '<div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-2-desktop">Test</div>'
]

{ #category : #tests }
MDCCellTest >> testDesktopTabletPhoneWith [
	self
		assert: [ :html | 
			html
				mdcCellDesktop: 4
				tablet: 3
				phone: 2
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop mdc-layout-grid__cell--span-3-tablet mdc-layout-grid__cell--span-2-phone">Test</div>'
]

{ #category : #tests }
MDCCellTest >> testMiddle [
	self
		assert: [ :html | 
			html mdcCell
				middle;
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid__cell mdc-layout-grid__cell--align-middle">Test</div>'
]

{ #category : #tests }
MDCCellTest >> testOrder [
	self
		assert: [ :html | 
			html mdcCell
				order: 2;
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid__cell mdc-layout-grid__cell--order-2">Test</div>'
]

{ #category : #tests }
MDCCellTest >> testPhoneSize [
	self assert: [ :html | html mdcCell: 'Test' phoneSize: 2 ] generates: '<div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-2-phone">Test</div>'
]

{ #category : #tests }
MDCCellTest >> testSize [
	self assert: [ :html | html mdcCell: 'Test' size: 2 ] generates: '<div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-2">Test</div>'
]

{ #category : #tests }
MDCCellTest >> testTabletSize [
	self assert: [ :html | html mdcCell: 'Test' tabletSize: 2 ] generates: '<div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-2-tablet">Test</div>'
]

{ #category : #tests }
MDCCellTest >> testTop [
	self
		assert: [ :html | 
			html mdcCell
				top;
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid__cell mdc-layout-grid__cell--align-top">Test</div>'
]

{ #category : #tests }
MDCCellTest >> testWithContent [
	self assert: [ :html | html mdcCell: 'Content' ] generates: '<div class="mdc-layout-grid__cell">Content</div>'
]
