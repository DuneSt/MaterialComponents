Class {
	#name : #MDCRadioOuterCircleTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Toggle'
}

{ #category : #tests }
MDCRadioOuterCircleTest >> testBareBrush [
	self assert: [ :html | html mdcRadioOuterCircle ] generates: '<div class="mdc-radio__outer-circle"></div>'
]

{ #category : #tests }
MDCRadioOuterCircleTest >> testWithContent [
	"Not with this tag"
]
