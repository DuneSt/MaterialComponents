"
Description
--------------------

I am a screen containing divers demo on MDC tab bar.
"
Class {
	#name : #MDCTabBarDemoScreen,
	#superclass : #MDCComponentDemo,
	#category : #'Material-Components-Demo-Components2'
}

{ #category : #accessing }
MDCTabBarDemoScreen class >> description [
	^ 'Tabs make it easy to explore and switch between different views.'
]

{ #category : #accessing }
MDCTabBarDemoScreen class >> icon [
	^ 'compTabsPng'
]

{ #category : #accessing }
MDCTabBarDemoScreen class >> title [
	^ 'Tab Bar'
]

{ #category : #accessing }
MDCTabBarDemoScreen >> actualClasses [
	^ { MDCTabBar }
]

{ #category : #accessing }
MDCTabBarDemoScreen >> pageNotes [
	^ 'Note: Some subcomposants of the tab bar can be used individually outside a tab bar.'
]

{ #category : #rendering }
MDCTabBarDemoScreen >> renderScreenContentOn: html [
	self render: self tabBar fullWidth: true on: html
]

{ #category : #code }
MDCTabBarDemoScreen >> renderTabBarDemoOn: html [
	html mdcTabBar: [  ]
]

{ #category : #sections }
MDCTabBarDemoScreen >> tabBar [ 
	^ OrderedDictionary new
		add: 'Tab bar' -> #renderTabBarDemoOn:;
		yourself
]

{ #category : #accessing }
MDCTabBarDemoScreen >> warningMessage [
	^ 'Page under construction.'
]
