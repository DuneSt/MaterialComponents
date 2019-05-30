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
MDCGridTest >> testWithContent [
	self assert: [ :html | html mdcGrid: 'Content' ] generates: '<div class="mdc-layout-grid">Content</div>'
]
