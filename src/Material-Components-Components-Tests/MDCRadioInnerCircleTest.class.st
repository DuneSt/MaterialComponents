Class {
	#name : #MDCRadioInnerCircleTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Toggle'
}

{ #category : #tests }
MDCRadioInnerCircleTest >> testBareBrush [
	self assert: [ :html | html mdcRadioInnerCircle ] generates: '<div class="mdc-radio__inner-circle"></div>'
]

{ #category : #tests }
MDCRadioInnerCircleTest >> testWithContent [
	"Not with this tag"
]
