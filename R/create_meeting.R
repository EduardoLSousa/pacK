create_meeting <- function(user_id){



 # user_id <- "eduardolima@ufpi.edu.br"

httr::GET(
  paste0("https://api.zoom.us/v2/users/", user_id, "/meetings"),
  httr::add_headers(authorization = paste("Bearer", Sys.getenv(zoom_api))),
  encode = "json"

  )
}
