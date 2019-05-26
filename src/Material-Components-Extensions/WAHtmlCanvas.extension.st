Extension { #name : #WAHtmlCanvas }

{ #category : #'*Material-Components-Extensions' }
WAHtmlCanvas >> mdcLeftPanel [
	^ self aside
		class: 'mdc-left-panel';
		mdcElevation: 2;
		yourself
]

{ #category : #'*Material-Components-Extensions' }
WAHtmlCanvas >> mdcLeftPanelResizer [
	self render: MDCLeftPanelResizer new
]
