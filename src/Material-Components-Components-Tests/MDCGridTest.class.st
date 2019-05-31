Class {
	#name : #MDCGridTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-LayoutGrid'
}

{ #category : #tests }
MDCGridTest >> testBareBrush [
	self assert: [ :html | html mdcGrid ] generates: '<div class="mdc-layout-grid"></div>'
]

{ #category : #tests }
MDCGridTest >> testFixedColumnWidth [
	self assert: [ :html | html mdcGrid fixedColumnWidth: 10 ] generates: '<div class="mdc-layout-grid mdc-layout-grid--fixed-column-width" style="--mdc-layout-grid-column-width-desktop:10px;--mdc-layout-grid-column-width-tablet:10px;--mdc-layout-grid-column-width-phone:10px"></div>'
]

{ #category : #tests }
MDCGridTest >> testFixedColumnWidthDesktopTabletPhone [
	self assert: [ :html | html mdcGrid fixedColumnWidthDesktop: 40 tablet: 30 phone: 20 ] generates: '<div class="mdc-layout-grid mdc-layout-grid--fixed-column-width" style="--mdc-layout-grid-column-width-desktop:40px;--mdc-layout-grid-column-width-tablet:30px;--mdc-layout-grid-column-width-phone:20px"></div>'
]

{ #category : #tests }
MDCGridTest >> testWithContent [
	self assert: [ :html | html mdcGrid: 'Content' ] generates: '<div class="mdc-layout-grid">Content</div>'
]
