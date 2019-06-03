Class {
	#name : #MDCIcon,
	#superclass : #WATagBrush,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Core'
}

{ #category : #accessing }
MDCIcon >> buttonIcon [
	self
		mdcClass: 'button__icon';
		attributeAt: 'aria-hidden' put: 'true'
]

{ #category : #initialization }
MDCIcon >> initialize [
	self flag: #todo.
	super initialize.
	self class: 'material-icons'
]

{ #category : #accessing }
MDCIcon >> tabIcon [
	self
		mdcClass: 'tab__icon';
		attributeAt: 'aria-hidden' put: 'true'
]

{ #category : #accessing }
MDCIcon >> tag [
	^ 'i'
]
