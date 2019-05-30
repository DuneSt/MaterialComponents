Class {
	#name : #MDCGridInnerTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-LayoutGrid'
}

{ #category : #tests }
MDCGridInnerTest >> testBareBrush [
	self assert: [ :html | html mdcGridInner ] generates: '<div class="mdc-layout-grid__inner"></div>'
]

{ #category : #tests }
MDCGridInnerTest >> testWithContent [
	self assert: [ :html | html mdcGridInner: 'Content' ] generates: '<div class="mdc-layout-grid__inner">Content</div>'
]
