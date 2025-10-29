#' Video Game Genre Printer
#' 
#' @description This function will print both the genre and the associated number of 
#' video games in each genre. You will be able to see which genre is more popular than others.
#' 
#' @details 
#' 
#' @param df The data frame that this function 
#'
#' @return genre_df 
#'
#' @examples
#' 
#' @export
print_genre <- function(df){
  genre_df <- df |>
    dplyr::count(genre) |>    
    dplyr::arrange(desc(n))
  
  names(genre_df) <- c("Genre", "Count")
  result <- print(genre_df)
}

