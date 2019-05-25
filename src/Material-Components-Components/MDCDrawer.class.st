Class {
	#name : #MDCDrawer,
	#superclass : #WATagBrush,
	#traits : 'TMDCBrush + TMDCAutoInitBrush',
	#classTraits : 'TMDCBrush classTrait + TMDCAutoInitBrush classTrait',
	#instVars : [
		'isModal'
	],
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MDCDrawer >> initialize [
	super initialize.
	isModal := false.
	self
		mdcClass: 'drawer';
		autoInit
]

{ #category : #options }
MDCDrawer >> modal [
	^ self modalWithId: canvas nextId
]

{ #category : #options }
MDCDrawer >> modalWithId: aString [
	self id: aString.
	self mdcClass: 'drawer--modal'.
	isModal := true.
	^ aString
]

{ #category : #accessing }
MDCDrawer >> tag [
	^ 'aside'
]

{ #category : #public }
MDCDrawer >> with: aBlock [
	super with: aBlock.
	isModal ifTrue: [ canvas div class: 'mdc-drawer-scrim' ]
]
