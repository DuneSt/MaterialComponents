"
Description
--------------------

Simple session for the demo application. I save the root component to help with the application management.

Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	rootComponent:		<aComponent>	The root component of the demo. Should be a MDCDemo instance.

"
Class {
	#name : #MDCDemoSession,
	#superclass : #WASession,
	#instVars : [
		'rootComponent'
	],
	#category : #'Material-Components-Demo-Core'
}

{ #category : #accessing }
MDCDemoSession >> rootComponent [
	^ rootComponent
]

{ #category : #accessing }
MDCDemoSession >> rootComponent: anObject [
	rootComponent := anObject
]
