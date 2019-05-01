"
Description
--------------------

Simple session for the demo application. I save the root component to help with the application management.

Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	rootComponent:		<aComponent>	The root component of the demo. Should be a MCDemo instance.

"
Class {
	#name : #MCDemoSession,
	#superclass : #WASession,
	#instVars : [
		'rootComponent'
	],
	#category : #'Material-Components-Demo-Core'
}

{ #category : #accessing }
MCDemoSession >> rootComponent [
	^ rootComponent
]

{ #category : #accessing }
MCDemoSession >> rootComponent: anObject [
	rootComponent := anObject
]
