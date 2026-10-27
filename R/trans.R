#' Trans - transcription
#'
#' @param pattern - DNA sequence
#'
#' @returns rna_seq - RNA sequence
#' @export
#'
#' @examples trans(pattern = "AGGTCTTC")
#'
trans <- function(pattern){
  # in the DNA sequence (x) substitute the Ts with Us to create RNA sequence
  rna_seq <- gsub("T", "U", pattern)
  return(rna_seq)
}

