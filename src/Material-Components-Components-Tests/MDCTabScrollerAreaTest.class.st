Class {
	#name : #MDCTabScrollerAreaTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabScrollerAreaTest >> testBareBrush [
	self assert: [ :html | html mdcTabScrollerArea ] generates: '<div class="mdc-tab-scroller__scroll-area"></div>'
]

{ #category : #tests }
MDCTabScrollerAreaTest >> testWithContent [
	self assert: [ :html | html mdcTabScrollerArea: 'Test' ] generates: '<div class="mdc-tab-scroller__scroll-area">Test</div>'
]
