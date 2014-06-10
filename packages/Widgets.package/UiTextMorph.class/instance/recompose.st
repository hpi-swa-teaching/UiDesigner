private
recompose
	"Re-compose the current contents."
	
	self
		releaseParagraph;
		paragraph;
		updateFromParagraph;
		style.