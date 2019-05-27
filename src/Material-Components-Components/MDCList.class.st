Class {
	#name : #MDCList,
	#superclass : #WAUnorderedListTag,
	#traits : 'TMDCBrush + TMDCAutoInitBrush',
	#classTraits : 'TMDCBrush classTrait + TMDCAutoInitBrush classTrait',
	#instVars : [
		'tag'
	],
	#category : #'Material-Components-Components-Lists'
}

{ #category : #initialization }
MDCList >> initialize [
	self flag: #todo.
	super initialize.
	self autoInit.
	self mdcClass: 'list'
]

{ #category : #options }
MDCList >> navigation [
	self tag: 'nav'
]

{ #category : #accessing }
MDCList >> tag [
	^ tag ifNil: [ super tag ]
]

{ #category : #accessing }
MDCList >> tag: aString [
	tag := aString
]
