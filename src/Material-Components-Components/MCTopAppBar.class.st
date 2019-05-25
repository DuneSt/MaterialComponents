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

{ #category : #options }
MCTopAppBar >> dense [
	self class: 'mdc-top-app-bar--dense'
]

{ #category : #initialization }
MCTopAppBar >> initialize [
	super initialize.
	self class: 'mdc-top-app-bar'.
	self attributeAt: 'data-mdc-auto-init' put: 'MDCTopAppBar'
]

{ #category : #options }
MCTopAppBar >> prominent [
	self class: 'mdc-top-app-bar--prominent'
]

{ #category : #accessing }
MCTopAppBar >> tag [
	^ 'header'
]