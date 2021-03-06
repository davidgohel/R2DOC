# TODO: Documentation de bootstrap.copy.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 4 mai 2013
# Version: 0.1
###############################################################################


bootstrap.copy = function ( www.directory, package.name ){
	css = file.path( find.package(package.name), "bootstrap/css", fsep = "/" )
	js = file.path( find.package(package.name), "bootstrap/js", fsep = "/" )
	img = file.path( find.package(package.name), "bootstrap/img", fsep = "/" )
	
	file.copy( from = css
			, to = www.directory
			,  overwrite = T
			, recursive = T )
	file.copy( from = js
			, to = www.directory
			,  overwrite = T
			, recursive = T )
	file.copy( from = img
			, to = www.directory
			,  overwrite = T
			, recursive = T )
	list( css = list.files( path = css )
			, js = list.files( path = js )
			, img = list.files( path = img )
			)
}
