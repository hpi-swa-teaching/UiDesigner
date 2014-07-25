private
makeMorphTransparent 
	" make the morph transparent "

	self widget: (((self passenger first at: #class) 
					new imageForm collectColors: 
						[:color | 	(color alpha > 0.5)
										ifTrue: [color alpha: 0.5]
										ifFalse: [color alpha: color alpha]. ]) 
						asMorph)