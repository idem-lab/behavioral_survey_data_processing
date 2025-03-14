library(targets)

tar_option_set(
  packages = c("tibble")

)

tar_source()

list(
  tar_target(

  ),

  tar_target(
    name = pointless_end_target,
    command = "So I can put a comma on the end of everything and fuggedabadit"
  )
)
