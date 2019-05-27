"
Description
--------------------

I am a brush to create a row in a Top App Bar.
"
Class {
	#name : #MDCTopAppBarRow,
	#superclass : #MDCDivTag,
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MDCTopAppBarRow >> initialize [
	self flag: #todo.
	super initialize.
	self mdcClass: 'top-app-bar__row'
]
