"
A MDCRadioButtonTest is a test class for testing the behavior of MDCRadioButton
"
Class {
	#name : #MDCRadioButtonTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Toggle'
}

{ #category : #tests }
MDCRadioButtonTest >> testBareBrush [
	self assert: [ :html | html mdcRadioButton ] generates: '<input class="mdc-radio__native-control" type="radio"/>'
]

{ #category : #tests }
MDCRadioButtonTest >> testWithContent [
	"Not with this tag"
]
