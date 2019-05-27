Class {
	#name : #MDCTopAppBarTitle,
	#superclass : #MDCSpanTag,
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MDCTopAppBarTitle >> initialize [
	self flag: #todo.
	super initialize.
	self mdcClass: 'top-app-bar__title'
]

{ #category : #accessing }
MDCTopAppBarTitle >> tag [
	^ 'span'
]
