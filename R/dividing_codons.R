#' Title
#'
#' @param rna_sequence Takes RNA sequence that has to be divided into codons
#' @param start Gives nucleotide position where to start codon division
#'
#' @returns RNA sequence divided into codons
#' @export
#'
#'
dividing_codons <- function(rna_sequence, start = 1){
  sequence_length <- nchar(rna_sequence)
  codons <- substring(rna_sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}
