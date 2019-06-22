Class {
	#name : #MDCRadioTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Toggle'
}

{ #category : #tests }
MDCRadioTest >> testBareBrush [
	self assert: [ :html | html mdcRadio ] generates: '<div class="mdc-radio" data-mdc-auto-init="MDCRadio"><div class="mdc-radio__background"><div class="mdc-radio__outer-circle"></div><div class="mdc-radio__inner-circle"></div></div></div>'
]

{ #category : #tests }
MDCRadioTest >> testIsAutoInitialized [
	self assert: [ :html | html mdcRadio ] generatedIncludes: 'data-mdc-auto-init="MDCRadio"'
]

{ #category : #tests }
MDCRadioTest >> testWithContent [
	self assert: [ :html | html mdcRadio: 'Test' ] generates: '<div class="mdc-radio" data-mdc-auto-init="MDCRadio">Test<div class="mdc-radio__background"><div class="mdc-radio__outer-circle"></div><div class="mdc-radio__inner-circle"></div></div></div>'
]
