"
Description
--------------------

I am an error raised if the user try to apply an elevation to an element with a parameter out of the accepted elevation range.
"
Class {
	#name : #MDCWrongElevation,
	#superclass : #Error,
	#instVars : [
		'parameter'
	],
	#category : #'Material-Components-Components-Exceptions'
}

{ #category : #signalling }
MDCWrongElevation class >> signalFor: anInteger [
	^ self new
		parameter: anInteger;
		signal
]

{ #category : #printing }
MDCWrongElevation >> messageText [
	^ messageText
		ifNil: [ String
				streamContents: [ :stream | 
					stream
						<< 'Elevation received ';
						print: (self parameter ifNil: [ 'nil' ]);
						<< ' as parameter but elevation should be between 0 and 24.' ] ]
]

{ #category : #accessing }
MDCWrongElevation >> parameter [
	^ parameter
]

{ #category : #accessing }
MDCWrongElevation >> parameter: anObject [
	parameter := anObject
]
