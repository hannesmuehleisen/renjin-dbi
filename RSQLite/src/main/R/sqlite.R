RSQLite <- SQLite <- function() {
	JDBC(JDBC$new(), "SQLite")
} 

# load DBI to replicate GNU R 'Depends:'
.onLoad <- function(libname, pkgname) library(DBI)


# some defaults for quick connections
dbConnect.SQLiteDriver <- function(drv, url="jdbc:sqlite:", username="", password="") {
	if (substring(url, 1, 12) != "jdbc:sqlite:") url <- paste0("jdbc:sqlite:", url)
	dbConnect.JDBCDriver(drv, url, username, password)
}