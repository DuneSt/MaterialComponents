Class {
	#name : #MDCRadioBackgroundTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Toggle'
}

{ #category : #tests }
MDCRadioBackgroundTest >> testBareBrush [
	self assert: [ :html | html mdcRadioBackground ] generates: '<div class="mdc-radio__background"><div class="mdc-radio__outer-circle"></div><div class="mdc-radio__inner-circle"></div></div>'
]

{ #category : #tests }
MDCRadioBackgroundTest >> testWithContent [
	"Not with this tag"
]
