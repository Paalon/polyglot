powersign <- function(n) {
	if (n %% 2 == 0) {
		return(1)
	} else {
		return(-1)
	}
}

leibniz <- function(n) {
	s <- 0
	for (k in 0:n) {
		s <- s + powersign(k) / (2 * k + 1)
	}
	return(4 * s)
}

n <- as.integer(commandArgs(trailingOnly=TRUE)[1])
cat(sprintf("%.16f\n", leibniz(n)))
