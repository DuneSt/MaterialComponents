Class {
	#name : #MDCTopAppBarTitle,
	#superclass : #MDCSpanTag,
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MDCTopAppBarTitle >> initialize [
	super initialize.
	self mdcClass: 'top-app-bar__title'
]

{ #category : #accessing }
MDCTopAppBarTitle >> tag [
	^ 'span'
]
