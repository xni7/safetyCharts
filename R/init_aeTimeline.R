#' Initialize Settings for Adverse Event Timeline
#'
#' @param data labs data structured as one record per person per visit per measurement. See details for column requirements.
#' @param settings named list of settings
#'
#' @return returns list with data and settings
#'
#' @export

init_aeTimeline <- function(data,settings){
    settings$filters<-list(
        list(
            value_col=settings[["bodsys_col"]], 
            label="Body System"
        )
    )

    return(list(data=data,settings=settings))
}