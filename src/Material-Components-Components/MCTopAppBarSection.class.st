Class {
	#name : #MCTopAppBarSection,
	#superclass : #MCDivTag,
	#category : #'Material-Components-Components-Layout'
}

{ #category : #options }
MCTopAppBarSection >> alignEnd [
	self class: 'mdc-top-app-bar__section--align-end'
]

{ #category : #options }
MCTopAppBarSection >> alignStart [
	self class: 'mdc-top-app-bar__section--align-start'
]

{ #category : #initialization }
MCTopAppBarSection >> initialize [
	super initialize.
	self class: 'mdc-top-app-bar__section'
]
