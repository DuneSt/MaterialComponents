Class {
	#name : #MDCTabScrollerTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabScrollerTest >> testBareBrush [
	self assert: [ :html | html mdcTabScroller ] generates: '<div class="mdc-tab-scroller" data-mdc-auto-init="MDCTabScroller"></div>'
]

{ #category : #tests }
MDCTabScrollerTest >> testIsAutoInitialized [
	self assert: [ :html | html mdcTabScroller ] generatedIncludes: 'data-mdc-auto-init="MDCTabScroller"'
]

{ #category : #tests }
MDCTabScrollerTest >> testWithContent [
	self assert: [ :html | html mdcTabScroller: 'Test' ] generates: '<div class="mdc-tab-scroller" data-mdc-auto-init="MDCTabScroller">Test</div>'
]
