# List of existing software

This folder holds information about existing software developed by the ForeSITE group. To add a new software, please create a new yaml file (either copying one of the existing ones or using the template below) and add it to the list below. Executing the [../README.qmd](../README.qmd) quarto file will automatically update the list of software included in the README.md at the root level of the repository and update the `software.xlsx` file included in this folder.

```yaml
tool_name: 'epiworld: Fast Agent-Based Epi Models'
brief_description: A flexible framework for Agent-Based Models (ABM), the 'epiworldR'
  package provides methods for prototyping disease outbreaks and transmission models
  using a 'C++' backend, making it very fast. It supports multiple epidemiological
  models, including the Susceptible-Infected-Susceptible (SIS), Susceptible-Infected-Removed
  (SIR), Susceptible-Exposed-Infected-Removed (SEIR), and others, involving arbitrary
  mitigation policies and multiple-disease models. Users can specify infectiousness/susceptibility
  rates as a function of agents' features, providing great complexity for the model
  dynamics. Furthermore, 'epiworldR' is ideal for simulation studies featuring large
  populations.
name_of_developer_maintainer_or_key_contact: George G. Vega Yon
email_of_developer_maintainer_or_key_contact: george.vegayon@utah.edu
is_it_actively_maintained_yes_no: 'Yes'
relevant_disease_s: .na.character
maturity: Published
license: MIT
languages: R, C++, Python, Webessembly
audience_type: Modelers
required_expertise_to_use_tool: TBD
type_of_tool: Epidemic Model - Scenario Modeling
type_of_data_input_needed: Parameter inputs for simulating the model
link_to_web_page_documentation_optional: https://github.com/UofUEpiBio/epiworld, https://github.com/UofUEpiBio/epiworldR/,
  https://github.com/UofUEpiBio/epiworldpy, https://github.com/UofUEpiBio/epiworldRShiny
link_to_source_code_optional: .na.character
reviewer: .na.character
github_repo_new_or_old_if_existing_one: https://github.com/UofUEpiBio/epiworld
complete_yes_no: 'yes'
pkg_dev_assessment_how_hard_is_to_make_into_a_package_notes: .na.character
overall_assessment_easy_win_needs_some_work_needs_lots_of_work_long_term_project: .na.character
```

