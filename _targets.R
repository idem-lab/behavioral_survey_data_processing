library(targets)

tar_option_set(

  packages = c(
    "dplyr",
    "readr",
    "tidyr",
    "purrr",
    "readxl"#,
    # "behaviour.change.analysis" # pak("idem-lab/behaviour.change.analysis")
  )

)

tar_source()

list(

  tar_target(
    survey_data,
    get_survey_data()
  ),

  tar_target(
    hygiene_data,
    get_hygiene_data(survey_data)
  ),

  tar_target(
    contact_data,
    get_contact_data(survey_data)
  ),

  tar_target(
    save_hygiene,
    write_csv(
      x = hygiene_data,
      file = "outputs/hygiene_data.csv"
    ),
  ),

  tar_target(
    save_contacts,
    write_csv(
      x = contact_data,
      file = "outputs/contact_data.csv"
    )
  ),


  tar_target(
    name = pointless_end_target,
    command = "So I can put a comma on the end of everything and fuggedabadit"
  )
)
