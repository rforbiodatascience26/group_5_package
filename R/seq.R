#' makeseq function
#'
#' @param seqsize Length of sequence you want to make
#'
#' @returns Gives out a (random) sequence of length (seqsize), with no spaces inbetween
#' @export
#'
makeseq <- function(seqsize){
  s <- sample(c("A", "T", "G", "C"), size = seqsize, replace = TRUE)
  seq <- paste0(s, collapse = "")
  return(seq)
}
