"
Description
--------------------

MDC Top App Bar acts as a container for items such as application title, navigation icon, and action items.

"
Class {
	#name : #MCTopAppBar,
	#superclass : #WATagBrush,
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MCTopAppBar >> initialize [
	super initialize.
	self class: 'mdc-top-app-bar'
]

{ #category : #accessing }
MCTopAppBar >> tag [
	^ 'header'
]
