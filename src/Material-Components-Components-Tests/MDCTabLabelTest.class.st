Class {
	#name : #MDCTabLabelTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabLabelTest >> testBareBrush [
	self assert: [ :html | html mdcTabLabel ] generates: '<span class="mdc-tab__text-label"></span>'
]

{ #category : #tests }
MDCTabLabelTest >> testWithContent [
	self assert: [ :html | html mdcTabLabel: 'Test' ] generates: '<span class="mdc-tab__text-label">Test</span>'
]
