Class {
	#name : #MCTopAppBarTitle,
	#superclass : #WATagBrush,
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MCTopAppBarTitle >> initialize [
	super initialize.
	self class: 'mdc-top-app-bar__title'
]

{ #category : #accessing }
MCTopAppBarTitle >> tag [
	^ 'span'
]
