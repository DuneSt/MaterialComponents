Class {
	#name : #MDCDrawer,
	#superclass : #WATagBrush,
	#traits : 'TMDCAutoInitBrush',
	#classTraits : 'TMDCAutoInitBrush classTrait',
	#instVars : [
		'isModal'
	],
	#category : #'Material-Components-Components-Layout'
}

{ #category : #options }
MDCDrawer >> closeModalWhenElementIsSelected [
	canvas document addLoadScript: 'MDC.drawer.initModalClosingOnClick()' js
]

{ #category : #initialization }
MDCDrawer >> initialize [
	self flag: #todo.
	super initialize.
	isModal := false.
	self
		mdcClass: 'drawer';
		autoInit
]

{ #category : #options }
MDCDrawer >> modal [
	self mdcClass: 'drawer--modal'.
	isModal := true
]

{ #category : #accessing }
MDCDrawer >> tag [
	^ 'aside'
]

{ #category : #public }
MDCDrawer >> with: aBlock [
	super with: aBlock.
	isModal ifFalse: [ ^ self ].
	
	canvas div class: 'mdc-drawer-scrim'.
]
