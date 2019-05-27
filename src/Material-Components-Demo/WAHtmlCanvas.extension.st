Extension { #name : #WAHtmlCanvas }

{ #category : #'*Material-Components-Demo' }
WAHtmlCanvas >> mdcDemoPadding [
	^ self div
		mdcClass: 'snippet-padding';
		yourself
]
