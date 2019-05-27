Class {
	#name : #MDCTopAppBarSection,
	#superclass : #MDCDivTag,
	#category : #'Material-Components-Components-Layout'
}

{ #category : #options }
MDCTopAppBarSection >> alignEnd [
	self mdcClass: 'top-app-bar__section--align-end'
]

{ #category : #options }
MDCTopAppBarSection >> alignStart [
	self mdcClass: 'top-app-bar__section--align-start'
]

{ #category : #initialization }
MDCTopAppBarSection >> initialize [
	self flag: #todo.
	super initialize.
	self mdcClass: 'top-app-bar__section'
]
