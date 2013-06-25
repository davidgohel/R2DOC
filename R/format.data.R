# TODO: Documentation de format.data.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 6 mai 2013
# Version: 0.1
###############################################################################

percent.format = function(value, integer.digit = 2, fraction.digit = 2, percent.addsymbol = "%") {
	.format = paste("%", integer.digit, ".", fraction.digit , "f", sep = "" )
	paste( "<div class=\"percent\">", sprintf(.format, value), percent.addsymbol, "</div>" ,sep = "" )
}
integer.format = function(value, integer.digit = 2) {
	.format = paste("%", integer.digit, "d", sep = "" )
	paste( "<div class=\"integer\">", sprintf(.format, value), "</div>" ,sep = "" )
}
double.format = function(value, integer.digit = 2, fraction.digit = 2) {
	.format = paste("%", integer.digit, ".", fraction.digit , "f", sep = "" )
	paste( "<div class=\"double\">", sprintf(.format, value), "</div>" ,sep = "" )
}
character.format = function(value) {
	value[ is.na( value ) ] = ""
	sapply( value, text2html )
}
