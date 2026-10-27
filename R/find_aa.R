#' find_aa - Find amino acid associated to codon
#'
#' @param codons
#'
#' @returns Amino acid
#' @export
#'
#' @examples find_aa("UUU")
find_aa <- function(codons){
  amino_acid<- paste0(codon_table[codons], collapse = "")
  return(amino_acid)
}
