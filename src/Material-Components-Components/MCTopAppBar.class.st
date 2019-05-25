"
Description
--------------------

MDC Top App Bar acts as a container for items such as application title, navigation icon, and action items.

"
Class {
	#name : #MCTopAppBar,
	#superclass : #WATagBrush,
	#traits : 'TAutoInitBrush + TMDCBrush',
	#classTraits : 'TAutoInitBrush classTrait + TMDCBrush classTrait',
	#category : #'Material-Components-Components-Layout'
}

{ #category : #options }
MCTopAppBar >> dense [
	self mdcClass: 'top-app-bar--dense'
]

{ #category : #initialization }
MCTopAppBar >> initialize [
	super initialize.
	self mdcClass: 'top-app-bar'.
	self autoInit: 'MDCTopAppBar'
]

{ #category : #options }
MCTopAppBar >> prominent [
	self mdcClass: 'top-app-bar--prominent'
]

{ #category : #accessing }
MCTopAppBar >> tag [
	^ 'header'
]
