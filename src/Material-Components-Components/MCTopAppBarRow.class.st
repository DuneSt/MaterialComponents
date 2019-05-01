"
Description
--------------------

I am a brush to create a row in a Top App Bar.
"
Class {
	#name : #MCTopAppBarRow,
	#superclass : #MCDivTag,
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MCTopAppBarRow >> initialize [
	super initialize.
	self class: 'mdc-top-app-bar__row'
]
