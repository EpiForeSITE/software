# List of existing software

This folder holds information about existing software developed by the ForeSITE group. To add a new software, please create a new yaml file (template below) and add it to the list. Executing the [../README.qmd](../README.qmd) quarto file will automatically update the list of software included in the README.md at the root level of the repository and update the `software.xlsx` file included in this folder.

## YAML Template
Fill in the template fields with your project's information.
```yaml
tool_name: 
tool_description:
contact_name:
contact_email:
is_maintained:
relevant_diseases:
maturity: 
license: 
languages:
audience_type:
required_expertise:
tool_type:
input_type:
docs_link:
github_link:
```

## Example Project YAML File 
```yaml
tool_name: 'epiworld: Fast Agent-Based Epi Models'
tool_description: A flexible framework for Agent-Based Models (ABM), the 'epiworldR'
  package provides methods for prototyping disease outbreaks and transmission models
  using a 'C++' backend, making it very fast. It supports multiple epidemiological
  models, including the Susceptible-Infected-Susceptible (SIS), Susceptible-Infected-Removed
  (SIR), Susceptible-Exposed-Infected-Removed (SEIR), and others, involving arbitrary
  mitigation policies and multiple-disease models. Users can specify infectiousness/susceptibility
  rates as a function of agents' features, providing great complexity for the model
  dynamics. Furthermore, 'epiworldR' is ideal for simulation studies featuring large
  populations.
contact_name: George G. Vega Yon
contact_email: george.vegayon@utah.edu
is_maintained: 'Yes'
relevant_diseases: .na.character
maturity: Published
license: MIT
languages: R, C++, Python, Webessembly
audience_type: Modelers
required_expertise: TBD
tool_type: Epidemic Model - Scenario Modeling
input_type: Parameter inputs for simulating the model
docs_link: https://github.com/UofUEpiBio/epiworld, https://github.com/UofUEpiBio/epiworldR/,
  https://github.com/UofUEpiBio/epiworldpy, https://github.com/UofUEpiBio/epiworldRShiny
github_link: https://github.com/UofUEpiBio/epiworld
```

