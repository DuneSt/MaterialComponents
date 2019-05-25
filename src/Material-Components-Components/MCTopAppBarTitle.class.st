Class {
	#name : #MCTopAppBarTitle,
	#superclass : #MCSpanTag,
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MCTopAppBarTitle >> initialize [
	super initialize.
	self mdcClass: 'top-app-bar__title'
]

{ #category : #accessing }
MCTopAppBarTitle >> tag [
	^ 'span'
]
