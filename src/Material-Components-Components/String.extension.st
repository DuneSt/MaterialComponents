Extension { #name : #String }

{ #category : #'*Material-Components-Components' }
String >> js [
	self flag: #todo.
	^ JSStream on: self
]
