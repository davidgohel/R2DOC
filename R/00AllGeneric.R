# Generic definitions
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 1 avr. 2013
# Version: 0.1
###############################################################################
if(!isGeneric("addPlot"))
	setGeneric("addPlot", function(doc, ...) standardGeneric("addPlot")); 

if(!isGeneric("addParagraph"))
	setGeneric("addParagraph", function(x, ...) standardGeneric("addParagraph"));

if(!isGeneric("addTable"))
	setGeneric("addTable", function(x, ...) standardGeneric("addTable")); 

if(!isGeneric("addHeader"))
	setGeneric("addHeader", function(x, value, level) standardGeneric("addHeader"));

if(!isGeneric("writeDoc"))
	setGeneric("writeDoc", function(x, ...) standardGeneric("writeDoc"));

#if(!isGeneric("addStyle"))
#	setGeneric("addStyle", function(x, ...) standardGeneric("addStyle"));

