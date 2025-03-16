get_contact_data <- function(survey_data){

  # state-level numbers of non-household contacts by state and date from Freya's
  # survey and the BETA barometer. Remove implausible responses, from the
  # reporting clump at 999 and above (short conversation with 999 or more people
  # in a day is implausible, and probably an entry/reporting/understanding error)
  survey_data |>
    filter(
      !is.na(contact_num),
      !is.na(state)
    ) %>%
    select(
      state,
      date,
      wave,
      wave_date,
      wave_duration,
      weekend_fraction,
      age_groups,
      city,
      employment,
      contact_num,
      starts_with("contacts_")
    ) %>%
    filter(
      contact_num <= 999
    )

}
