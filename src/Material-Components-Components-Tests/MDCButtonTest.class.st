Class {
	#name : #MDCButtonTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests'
}

{ #category : #tests }
MDCButtonTest >> testBareBrush [
	self assert: [ :html | html mdcButton ] generates: '<button class="mdc-button" type="submit"></button>'
]

{ #category : #tests }
MDCButtonTest >> testWithContent [
	self assert: [ :html | html mdcButton: 'Validate' ] generates: '<button class="mdc-button" type="submit">Validate</button>'
]
