"
Description
--------------------

I am a simple component allowing to resize a panel to the left of the window. 

"
Class {
	#name : #MDCLeftPanelResizer,
	#superclass : #MDCAbstractPanelResizer,
	#category : #'Material-Components-Extensions'
}

{ #category : #accessing }
MDCLeftPanelResizer >> initMethodName [
	^ 'MDC.panels.initLeftResizers()'
]

{ #category : #accessing }
MDCLeftPanelResizer >> panelClass [
	^ 'resizer-left'
]
