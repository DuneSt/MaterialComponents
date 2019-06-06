Class {
	#name : #MDCTabScrollerTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabScrollerTest >> testBareBrush [
	self assert: [ :html | html mdcTabScroller ] generates: '<div class="mdc-tab-scroller"></div>'
]

{ #category : #tests }
MDCTabScrollerTest >> testWithContent [
	self assert: [ :html | html mdcTabScroller: 'Test' ] generates: '<div class="mdc-tab-scroller">Test</div>'
]
