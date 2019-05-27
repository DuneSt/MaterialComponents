Class {
	#name : #MDCButton,
	#superclass : #WAButtonTag,
	#traits : 'TMDCButton + TMDCRipples',
	#classTraits : 'TMDCButton classTrait + TMDCRipples classTrait',
	#category : #'Material-Components-Components-Buttons'
}

{ #category : #options }
MDCButton >> dense [
	self flag: #todo. "test class"
	self mdcClass: 'button--dense'
]

{ #category : #'syntaxic sugar' }
MDCButton >> icon: aString label: aString2 [ 
	self with: [ 
		canvas mdcIcon
			buttonIcon;
			with: aString.
		canvas mdcButtonLabel: aString2 ]
]

{ #category : #'syntaxic sugar' }
MDCButton >> label: aStringOrBlock [
	self with: [ canvas mdcButtonLabel: aStringOrBlock ]
]
