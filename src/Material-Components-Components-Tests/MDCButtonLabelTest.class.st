"
A MDCButtonLabelTest is a test class for testing the behavior of MDCButtonLabel
"
Class {
	#name : #MDCButtonLabelTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Buttons'
}

{ #category : #tests }
MDCButtonLabelTest >> testBareBrush [
	self assert: [ :html | html mdcButtonLabel ] generates: '<span class="mdc-button__label"></span>'
]

{ #category : #tests }
MDCButtonLabelTest >> testWithContent [
	self assert: [ :html | html mdcButtonLabel: 'Validate' ] generates: '<span class="mdc-button__label">Validate</span>'
]
