#' Produces the string for one day of the song.
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sing_day <- function(dataset, line, phrase_col){

  phrases <- dataset %>% pull({{phrase_col}})

  completeString <- sprintf("On the %s day of Christmas, my true love sent to me,\n", dataset[line,]$Day.in.Words)

  if(line != 1) {
    a <- sapply (line:2, function(x)  paste(phrases[x], ",\n", sep="", collapse=""))
    completeString <- paste(completeString, paste(a, collapse=""), sep="")
  }

  completeString <- paste(completeString, phrases[1], ".", sep="", collapse="")

  return (completeString)
}
