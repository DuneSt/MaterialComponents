Class {
	#name : #MDCTabContentTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabContentTest >> testBareBrush [
	self assert: [ :html | html mdcTabContent ] generates: '<span class="mdc-tab__content"></span>'
]

{ #category : #tests }
MDCTabContentTest >> testWithContent [
	self assert: [ :html | html mdcTabContent: 'Test' ] generates: '<span class="mdc-tab__content">Test</span>'
]
