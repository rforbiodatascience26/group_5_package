#' Amino acids count plot
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @param sequence amino acids sequence
#'
#' @returns plot of the amino acids count in the sequence
#' @export
#'
#' @examples count_plot("A")

count_plot <- function(sequence){
  # defining unique amino acids in the sequence
  unique_aa <- sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # counting how often the amino acids appear in the sequence
  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = sequence, pattern =  amino_acid)) |>
    as.data.frame()

  # naming the data frame
  colnames(counts) <- c("Counts")
  counts[["sequence"]] <- rownames(counts)

  # plotting the counts
  codon_count_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = sequence, y = Counts, fill = sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # returning the plots
  return(codon_count_plot)
}
