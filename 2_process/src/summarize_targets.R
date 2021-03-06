# function to generate a csv log file of output files

summarize_targets <- function(ind_file, file_list) {
  ind_tbl <- tar_meta(all_of(file_list)) %>%
    select(tar_name = name, filepath = path, hash = data) %>%
    mutate(filepath = unlist(filepath))

  readr::write_csv(ind_tbl, ind_file)
  return(ind_file)
}
