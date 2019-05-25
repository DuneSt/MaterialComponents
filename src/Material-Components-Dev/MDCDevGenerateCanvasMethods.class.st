"
I am a Calypso command to generate from a tag class the methods on WAHtmlCanvas.
"
Class {
	#name : #MDCDevGenerateCanvasMethods,
	#superclass : #SycClassCommand,
	#category : #'Material-Components-Dev'
}

{ #category : #testing }
MDCDevGenerateCanvasMethods class >> canBeExecutedInContext: aToolContext [
	^ aToolContext isClassSelected and: [ aToolContext selectedClasses anySatisfy: [ :class | class inheritsFrom: WATagBrush ] ]
]

{ #category : #accessing }
MDCDevGenerateCanvasMethods class >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 2 for: ClyClassContextOfFullBrowser 
]

{ #category : #accessing }
MDCDevGenerateCanvasMethods >> defaultMenuItemName [
	^'Generate canvas MDC accessors for brush'
]

{ #category : #execution }
MDCDevGenerateCanvasMethods >> execute [
	classes
		select: [ :class | class inheritsFrom: WATagBrush ]
		thenDo: [ :class | 
			WAHtmlCanvas
				compile:
					(String
						streamContents: [ :stream | 
							stream
								<< 'mdc';
								<< (class printString allButFirst: 3);
								cr;
								tab;
								<< '^ self brush: ';
								<< class printString;
								<< ' new' ])
				classified: '*' , class package name.
			WAHtmlCanvas
				compile:
					(String
						streamContents: [ :stream | 
							stream
								<< 'mdc';
								<< (class printString allButFirst: 3);
								<< ': aBlock';
								cr;
								tab;
								<< '^ self ';
								<< 'mdc';
								<< (class printString allButFirst: 3);
								cr;
								tab: 2;
								<< 'with: aBlock';
								cr;
								tab: 2;
								<< 'yourself' ])
				classified: '*' , class package name ]
]

{ #category : #execution }
MDCDevGenerateCanvasMethods >> prepareFullExecutionInContext: aToolContext [
	super prepareFullExecutionInContext: aToolContext.
	
	classes := classes collect: [:each | aToolContext currentMetaLevelOf: each]
]
