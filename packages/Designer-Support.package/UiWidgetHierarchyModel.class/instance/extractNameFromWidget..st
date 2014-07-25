item model - signals
extractNameFromWidget: aWidget
	
	| name |
	name := aWidget objectName , ' (' , aWidget class , ')'.
	^name