Class {
	#name : #MDCTabScrollerContentTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabScrollerContentTest >> testBareBrush [
	self assert: [ :html | html mdcTabScrollerContent ] generates: '<div class="mdc-tab-scroller__scroll-content"></div>'
]

{ #category : #tests }
MDCTabScrollerContentTest >> testWithContent [
	self assert: [ :html | html mdcTabScrollerContent: 'Test' ] generates: '<div class="mdc-tab-scroller__scroll-content">Test</div>'
]
