Class {
	#name : #MDCGridTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-LayoutGrid'
}

{ #category : #tests }
MDCGridTest >> testAlignLeft [
	self
		assert: [ :html | 
			html mdcGrid
				alignLeft;
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid mdc-layout-grid--align-left">Test</div>'
]

{ #category : #tests }
MDCGridTest >> testAlignRight [
	self
		assert: [ :html | 
			html mdcGrid
				alignRight;
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid mdc-layout-grid--align-right">Test</div>'
]

{ #category : #tests }
MDCGridTest >> testBareBrush [
	self assert: [ :html | html mdcGrid ] generates: '<div class="mdc-layout-grid"></div>'
]

{ #category : #tests }
MDCGridTest >> testCellSpacing [
	self
		assert: [ :html | 
			html mdcGrid
				cellSpacing: 10;
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid" style="--mdc-layout-grid-gutter-desktop:10px;--mdc-layout-grid-gutter-tablet:10px;--mdc-layout-grid-gutter-phone:10px">Test</div>'
]

{ #category : #tests }
MDCGridTest >> testCellSpacingDesktopTabletPhone [
	self
		assert: [ :html | 
			html mdcGrid
				cellSpacingDesktop: 30 tablet: 20 phone: 10;
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid" style="--mdc-layout-grid-gutter-desktop:30px;--mdc-layout-grid-gutter-tablet:20px;--mdc-layout-grid-gutter-phone:10px">Test</div>'
]

{ #category : #tests }
MDCGridTest >> testFixedColumnWidth [
	self
		assert: [ :html | 
			html mdcGrid
				fixedColumnWidth: 10;
				with: 'Test' ]
		generates:
			'<div class="mdc-layout-grid mdc-layout-grid--fixed-column-width" style="--mdc-layout-grid-column-width-desktop:10px;--mdc-layout-grid-column-width-tablet:10px;--mdc-layout-grid-column-width-phone:10px">Test</div>'
]

{ #category : #tests }
MDCGridTest >> testFixedColumnWidthDesktopTabletPhone [
	self
		assert: [ :html | 
			html mdcGrid
				fixedColumnWidthDesktop: 40 tablet: 30 phone: 20;
				with: 'Test' ]
		generates:
			'<div class="mdc-layout-grid mdc-layout-grid--fixed-column-width" style="--mdc-layout-grid-column-width-desktop:40px;--mdc-layout-grid-column-width-tablet:30px;--mdc-layout-grid-column-width-phone:20px">Test</div>'
]

{ #category : #tests }
MDCGridTest >> testMargin [
	self
		assert: [ :html | 
			html mdcGrid
				margin: 30;
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid" style="--mdc-layout-grid-margin-desktop:30px;--mdc-layout-grid-margin-tablet:30px;--mdc-layout-grid-margin-phone:30px">Test</div>'
]

{ #category : #tests }
MDCGridTest >> testMarginDesktopTabletPhone [
	self
		assert: [ :html | 
			html mdcGrid
				marginDesktop: 30 tablet: 20 phone: 10;
				with: 'Test' ]
		generates: '<div class="mdc-layout-grid" style="--mdc-layout-grid-margin-desktop:30px;--mdc-layout-grid-margin-tablet:20px;--mdc-layout-grid-margin-phone:10px">Test</div>'
]

{ #category : #tests }
MDCGridTest >> testNoSpacing [
	self
		assert: [ :html | 
			html mdcGrid
				noSpacing;
				with: 'Test' ]
		generates:
			'<div class="mdc-layout-grid" style="--mdc-layout-grid-margin-desktop:0px;--mdc-layout-grid-margin-tablet:0px;--mdc-layout-grid-margin-phone:0px;--mdc-layout-grid-gutter-desktop:0px;--mdc-layout-grid-gutter-tablet:0px;--mdc-layout-grid-gutter-phone:0px">Test</div>'
]

{ #category : #tests }
MDCGridTest >> testWithContent [
	self assert: [ :html | html mdcGrid: 'Content' ] generates: '<div class="mdc-layout-grid">Content</div>'
]
