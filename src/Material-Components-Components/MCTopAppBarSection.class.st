Class {
	#name : #MCTopAppBarSection,
	#superclass : #MCDivTag,
	#category : #'Material-Components-Components-Layout'
}

{ #category : #options }
MCTopAppBarSection >> alignEnd [
	self mdcClass: 'top-app-bar__section--align-end'
]

{ #category : #options }
MCTopAppBarSection >> alignStart [
	self mdcClass: 'top-app-bar__section--align-start'
]

{ #category : #initialization }
MCTopAppBarSection >> initialize [
	super initialize.
	self mdcClass: 'top-app-bar__section'
]
