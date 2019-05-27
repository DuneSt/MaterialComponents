Class {
	#name : #MDCListItemText,
	#superclass : #MDCSpanTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Lists'
}

{ #category : #initialization }
MDCListItemText >> initialize [
	self flag: #todo.
	super initialize.
	self mdcClass: 'list-item__text'
]
