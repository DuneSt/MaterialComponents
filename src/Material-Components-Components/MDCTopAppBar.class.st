"
Description
--------------------

MDC Top App Bar acts as a container for items such as application title, navigation icon, and action items.

"
Class {
	#name : #MDCTopAppBar,
	#superclass : #WATagBrush,
	#traits : 'TMDCAutoInitBrush',
	#classTraits : 'TMDCAutoInitBrush classTrait',
	#category : #'Material-Components-Components-Layout'
}

{ #category : #options }
MDCTopAppBar >> dense [
	self mdcClass: 'top-app-bar--dense'
]

{ #category : #initialization }
MDCTopAppBar >> initialize [
	self flag: #todo.
	super initialize.
	self
		mdcClass: 'top-app-bar';
		autoInit
]

{ #category : #options }
MDCTopAppBar >> prominent [
	self mdcClass: 'top-app-bar--prominent'
]

{ #category : #accessing }
MDCTopAppBar >> tag [
	^ 'header'
]
