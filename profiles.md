## Profiles

# Example - Flexible Epidemic Modeling Pipeline (flepiMoP)

Simulates a wide range of compartmental models of infectious disease transmission. The disease transmission and observation models are defined by a no-code configuration file, which allows models of varying complexity to be specified quickly and consistently, from simple problems described by SIR-style models in a single population to more complicated models of multiple pathogen strains transmitting between thousands of connected spatial divisions and age groups.

Contact: Shaun Truelove (email: shauntruelove@jhu.edu)

# Impact of school opening model on SARS-CoV-2 community incidence and mortality

The goal of this statistical analysis was to compare SARS-CoV-2 community incidence and mortality rates across schools that opened in in-person, remote, or hybrid mode. Measure(s) of Economic Impact: Infections and mortality

Contact: Richard Nelson (email: richard.nelson@utah.edu)

# Net financial impact of halting elective admissions

The goal of this model was to estimate the net financial impact to the hospital of halting elective admissions due to a COVID-19 surge. Measure(s) of Economic Impact: Hospital profit

Contact: Richard Nelson (email: richard.nelson@utah.edu)

# ARIMA; Generalize ARIMA; Vector Autoregression

To forecast the weekly positive test number

Contact: Yue Zhang (email: zhang.yue@hsc.utah.edu)

# Ensembling Learning; decision tree; XGBoosting; Logistic Regression; Multilayer Perceptron; Long short-term memory (LSTM); Bi-directional LSTM; Convolutional Neural Network (CNN)

To develop a forecasting model for number of discharged patients in a single hospital using EHR data

Contact: Yue Zhang (email: zhang.yue@hsc.utah.edu)

# Ensembling Learning; Prophet model; Generalized ARIMA;

To develop a forecasting model for number of daily hosptial admission in a single hospital

Contact: Yue Zhang (email: zhang.yue@hsc.utah.edu)

# Covid forecasting model

Forecast COVID-19 and compare different data streams

Contact: Lindsay Keegan or Tess Sheets (email: Lindsay.Keegan@utah.edu)

# Empirical Dynamic Modeling

To develop a forecasting model to predict the weekly abx use and abx resistant rate in VA

Contact: Karim Khader (email: karim.khader@hsc.utah.edu)

# Vector Autoregression

To develop a forecasting model to predict the weekly abx use and abx resistant rate in VA

Contact: Yue Zhang (email: zhang.yue@hsc.utah.edu)

# Autoencoder and clustering based anomaly detection

Initially developed as a project with DHS Science and Technology, this project took place from 2018 to 2019 (pre-COVID).  The approach here is to find potentially anomalous cases which are also related.  To create anomaly “scores”, a neural network autoencoder is used to process over patient data from the emergency department visit and quantify how “rare” this kind of visit might be compared to all other previous visits.  Then a density-based clustering is used to identify any potential clusters of anomalous cases since one single case may not warrant concern, but a group of patients with similar labs, signs/symptoms, etc might suggest common exposures and conditions.

Contact: Kelly Peterson (email: kelly.peterson2@va.gov ;kelly.peterson@hsc.utah.edu)

# Nowcasting

Given the time lag between laboratory testing for disease and eventual reporting, we’ve developed a model which consumes data from both community and VA to predict “now” how many positive tests for a disease (COVID-19 in this context) will eventually be reported as positive.  A VA HSR&D abstract is available.

Contact: Kelly Peterson (email: kelly.peterson2@va.gov ;kelly.peterson@hsc.utah.edu)

# Statistical Alerts (time series)

We have supported an Operations system for processing time series for “aberrations” (aka, “alerts”, “potential outbreaks”) for 8+ years in VA BASIC.  During this time, we’ve integrated several among the suite of algorithms available in the R package titled “surveillance”.  This includes several classes of numerical methods, of which some are window-based, control chart-based or trained linear models.  A brief presentation on this is attached here.

Contact: Kelly Peterson (email: kelly.peterson2@va.gov ;kelly.peterson@hsc.utah.edu)

# Cumulative infection

We’ve used Mortality Mapping (mMAP), an existing epidemiologic and statistical analysis approach by Lu et al. [1,2] to estimate the cumulative incidence of symptomatic COVID-19 in Veterans in the United States. mMAP is a time series deconvolution method which infers the true COVID-19 case counts from reported COVID-19 deaths. It uses symptom onset to death distribution, smoothed time series of reported COVID-19 deaths, and symptomatic case fatality rate (sCFR) to estimate the distribution of symptomatic COVID-19 cases. We focus on the adjusted version of the mMAP approach presented by Lu et al., which tries to account for the unreported COVID-19 deaths. While Lu uses excess influenza and pneumonia deaths to account for unreported COVID-19 deaths, we have extended their approach by using excess all-cause deaths. 

Contact: Vanessa Stevens or Wathsala Widanagamaachchi (email: vanessa.stevens@hsc.utah.edu; vanessa.stevens@va.gov or wathsala.widanagamaachchi@hsc.utah.edu)

# Excess Death Estimation

The aberration detection methods introduced by Farrington et al. and later Noufaily et al. have been implemented to obtain weekly all-cause mortality data.

Contact: Vanessa Stevens or Wathsala Widanagamaachchi (email: vanessa.stevens@hsc.utah.edu; vanessa.stevens@va.gov or wathsala.widanagamaachchi@hsc.utah.edu)

# Serfling

Classic Serfling-type regression model for seasonal diseases. Can be used to estimate both excess risk (based on breaching a threshold), or estimate the peak week and other parameters of a yearly epidemic curve.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

# DEDiscover (differential evolution)

Parameter estimation using differential evolution.

Contact: Elissa Schwartz (email: ejs@wsu.edu)

# Monolix

Parameter estimation in non-linear mixed effect models. Parameter estimated: Any.

Contact: Elissa Schwartz (email: ejs@wsu.edu)

# Carriage duration estimation from serial testing data

Estimate the duration and heterogeneity of individuals’ colonization episodes for organisms of interest. Parameter estimated: Average and distribution of clearance rate(s) across multiple candidate model forms, average (re)acquisition rate, sensitivity/specificity of testing. Estimates derived via maximum likelihood techniques.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Transmission estimation for outbreak clusters

Provides estimates for individual-level transmission distribution (mean and variance) based on data from prior isolated outbreak clusters. Useful for quantifying the risk of superspreading events and the risk that future outbreaks will exceed a given threshold.Parameter estimated: Basic reproduction number; dispersion parameter quantifying variance in transmission; extensions estimate changes in reproduction number by generation, e.g. post-control reproduction number. Estimated via maximum likelihood using final size distribution equations for branching process models.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Household epidemiology estimation from antibody data

Simultaneously estimate household importation risk, household secondary attack rate, and associated variability / heterogeneities using point-prevalence data for antibody positivity among household members. Parameter estimated: Household importation probability, household secondary attack rate, sensitivity / specificity of data for indicating prior infection, variability (dispersion) in transmissibility,  and heterogeneities in those quantities over age and/or other identifiable characteristics of individuals and households. Estimates derived via maximum likelihood for final household outbreak size equations.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Competing Risks

Estimating a competing risks mixture model, which provides both the odds ratio of one event occurring vs. another as well as a marginal estimate of the time to both respective events. Parameter estimated: Odds ratio of two different events occurring and the time to event estimate for both events.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

# Healthcare transmission epidemiology estimation at equilibrium

Estimate the extent of patient-to-patient transmission and other quantities using admission prevalence and cross-sectional point-prevalence data for carriage of organisms among healthcare facility in-patients. Parameter estimated: Patient-to-patient transmission rate, facility reproduction number, rate of progression to infection, intervention effects if applicable. Estimates derived via solving differential equations at equilibrium and facility reproduction number equations.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Dose-response estimators for infection risk

Estimate infection probability from a given dose of exposure using data sets from experimental dose-quantified exposures of humans or animals; model-based results used to perform quantitative risk assessment for potential human exposure scenarios. Parameter estimated: Per-unit-dose infection probability and associated additional parameters for more complicated dose-response models, including those that quantify dose-dependent latent/incubation period; can convert estimates to common “infectious dose” quantification metrics such as “ID-50.” Estimates derived via maximum likelihood for multiple equation-based dose-response models fit to exposure-response data.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Two-part pomp tutorial to estimate parameters from an SIR model using PMCMC

To goal of this two-part tutorial is to demonstrate how to implement an SIR epidemiological model in the pomp R package in part 1, and then estimate the unknown parameters in part 2. The tutorial is designed to focus on the R code. Parameter estimated: This tutorial gives a specific example of estimating the transmission and testing probability parameters using pomp.

Contact: Erin Clancey (email: erin.clancey@wsu.edu)

# pomp R code for the estimation of unknown parameters in a two-population SEIR model from data collected in Whitman County, Washington

Build a two-population SEIR model using the pomp coding framework in R and estimate the unknown parameters in this model using the PMCMC algorithm. Parameter estimated: Transmission parameters (transmission within each population and transmission across the two-populations), testing probability, and overdispersion parameter.

Contact: Erin Clancey (email: erin.clancey@wsu.edu)

# Bayesian Transmission Model

Provides estimates for critical epidemiological parameters that characterize the spread of bacterial pathogens in healthcare settings. Parameter estimated: Transmission rate (frequency-dependent or density-dependent mass action), importation probability, clearance rate (loss of colonization per colonized person per unit time), surveillance test sensitivity, surveillance test specificity, effect of covariate on transmission (multiplier in relation to overall transmission rate).

Contact: Karim Khader (email: karim.khader@hsc.utah.edu)

# H1N1 Pandemic Data Estimation

Describes an SIR model parameter estimation with an improved fit using least squares estimation over maximum likelihood estimation. Parameter estimated: Transmission rate, recovery rate, R0, number of initial infectives

Contact: Elissa Schwartz (email: ejs@wsu.edu)

# Whitman Co. COVID

Estimate the mixing parameters for a two-population metapopulation model (i.e. Beta_Pop1, Beta_Pop2, Beta_Pop1*Pop2). Model currently fits timeseries data from pre-vaccination COVID in Fall 2020 in Whitman Co., WA (focusing on the town of Pullman).

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

# R code to implement an ODE model using the Tau Leaping algorithm

This code offers flexible implementation of an ODE model using the Tau Leaping algorithm in R without the need for a package.

Contact: Erin Clancey (email: erin.clancey@wsu.edu)

# HIV End Stage Kidney Disease Epidemic Model

An ODE-based model to predict future disease prevalence given the impact of drug therapy levels and its mechanism of action (i.e., stopping progression to disease or reducing deaths). Parameter estimated:  Growth rate, death rate, drug efficacy to block disease progression. Scenarios(s) Modeled: Rebound in prevalence due to insufficient therapy (e.g., like in Paxlovid rebound).

Contact: Elissa Schwartz (email: ejs@wsu.edu)

# Herpes Vaccine Model

An ODE-based 6-compartment SI model with asymptomatic carriers and vaccinated classes to forecast the number of infections prevented with imperfect vaccination and infections prevented per vaccine administered. Parameter estimated: Highly correlated parameters determined using LHS PRCC. Scenarios(s) Modeled: Prophylactic (pre-exposure) vaccines, Therapeutic (post-exposure) vaccines, Parameter(s) Estimated: Highly correlated parameters determined using LHS PRCC

Contact: Elissa Schwartz (email: ejs@wsu.edu)

# POMP (Aaron King’s tool, U. of Michigan)

Analysis of time series data based on stochastic dynamical systems models

Contact: Elissa Schwartz (email: ejs@wsu.edu)

# Post-acute care model

A basic model to plan for the post-acute care needs following a hospital surge

Contact: Lindsay Keegan (email: Lindsay.Keegan@utah.edu)

# Room contamination simulator

Simulate dynamic levels of contamination in hospital room surfaces and on patients / healthcare workers in the room. Scenarios(s) Modeled: Shedding in-patient in hospital room, susceptible patient in contaminated room, healthcare worker performing patient care, room cleaning and hand hygiene interventions, use of personal protective equipment.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Granular Modeling Framework/ICU

Implement 2 ICUs that match the CVICU at the University of Utah and the ICU at the Salt Lake City VA.  Model all empirical data collected by the GM project:  HCW movement and touch data as collected by the proximity sensors, Patient flow from the EHR, and micro data as sampled by the GM micro team.  Scenarios(s) Modeled: Sustained endemic HAI levels driven by importation into a 15-25 bed ICU.  Contamination and transmission via HCW movement and contact behaviors.  The simulation includes contamination of multiple surfaces in several room zones, contamination of patient surfaces via shedding and HCW surfaces via touching.  Room cleaning, isolation, and targeted treatment of HAI.  HCW visits include assigned networks between health care workers and patients as well as ad hoc visits.

Contact: Willy Ray (email: william.ray@hcs.utah.edu)

# CU Metapopulation

Stochastic representation of an ICU in a tertiary care academic medical center. Scenarios(s) Modeled: Staffing changes, cohorting (with some effort), decolonization, fecal transplant, antibiotic stewardship (with some modifications). Others are possible.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

# Rabies

Stochastic representation of pulsed and continuous rabies eradication. Scenarios(s) Modeled: Pulsed vs. continuous rabies elimination programs. A number of parameters regarding dog survival, reproduction, etc. are also amenable to scenario modeling.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

# Covid Scenario model

A flexible scenario modeling pipeline that could quickly tailor models for decision makers seeking to compare projections of epidemic trajectories and healthcare impacts from multiple intervention scenarios in different locations. Scenarios(s) Modeled: Mask, social distance, lock down, comprehensive test/isolate, fatiguing interventions

Contact: Lindsay Keegan (email: Lindsay.Keegan@utah.edu)

# COVID-19 NCAA Football

Stochastic representation a season of on-campus football during COVID. Scenarios(s) Modeled: Estimates a football season with high or low mixing between the visiting community and the hosting college student population, and with high or low prevalence in the visitors.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

# University of Utah circuit breaker model

A basic model of school closure for the University of Utah fall reopening. Scenarios(s) Modeled: Delay start, circuit breaker, end early.

Contact: Lindsay Keegan (email: Lindsay.Keegan@utah.edu)

# COVID-19 Jail Model

Deterministic model of a stylized jail, with a number of potential interventions developed in collaboration with the ACLU. Scenarios(s) Modeled: Decarceration, social distancing, targeted or widespread arrest reduction, isolation.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

# Vaccine Hesitancy Model

An ODE (ordinary differential equation)-based SVEIR model with 3 compartments for symptoms (mild, moderate, severe) that can quantify the tradeoffs between vaccine efficacy and vaccine hesitancy on reducing the disease burden. Scenarios(s) Modeled: R0, cumulative infections, and deaths due to varying values of transmission rate, vaccine coverage rate, vaccine efficacy, and vaccine hesitancy. The vaccine efficacy required to compensate for different levels of vaccine hesitancy.

Contact: Elissa Schwartz (email: ejs@wsu.edu)

# Branching process outbreak simulator

Quantifies risk posed by individual importers of a novel transmissible pathogen to a generic population, with intervention effects. Scenarios(s) Modeled: Novel introduction of transmissible pathogen by infected traveler, by accidentally infected laboratory worker, or similar scenario; intervention scenarios for improved detection of initial case and for delayed mitigation after ongoing outbreak is detected.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Long-term acute care hospital (LTACH) intervention model

Provides analytic framework for investigating patient-focused interventions to prevent transmission in high-risk healthcare facilities and their direct and population-level health impacts and threshold effects. Scenarios(s) Modeled: Intervention scenarios for surveillance and isolation (contact precautions), decolonization drugs, infection treatment, horizontal transmission reduction, and length of stay reduction.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Household transmission simulator

Simulate household importation and within-household transmission across a population of households, and intervention effects, e.g. vaccination. Scenarios(s) Modeled: Household importation and transmission with variability in transmissibility and heterogeneity across age groups and vaccination status.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Airborne release of infectious pathogens simulator

Estimate airborne dispersal, human exposure, and infection probabilities and timelines after a release of a quantity of infectious organisms. Scenarios(s) Modeled: Airborne release and human inhalational exposure and infection, similar the Sverdlovsk anthrax leak of 1979.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# School outbreak simulator

Agent-based simulation of person-to-person transmission at schools over data-based dynamic proximity contact networks. Scenarios(s) Modeled:  Transmission modeled during school hours; can model interventions affecting the contact network and school attendance behavior.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Inpatient antibiotic prescribing and effects simulator

Simulate realistic rates and timing / duration / types of antibiotic administration to hospital inpatients and their effects on microbial transmission and infection, and antibiotic stewardship effects. Scenarios(s) Modeled:  Prescribing patterns of different types of antibiotics based on U.S. data; intervention scenarios for reducing prescribing, shortening duration of courses, and altering types of antibiotics used.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# Healthcare facility network outbreak simulator

Provides flexible framework for agent-based simulation of outbreaks among in-patients in a generic-but-realistic network of short/long-stay hospitals and nursing homes, as well as interventions to mitigate transmission and inter-facility spread. Scenarios(s) Modeled:  Initial invasion of new pathogen / strain and/or endemic pathogens. Intervention scenarios for patient-targeted efforts including surveillance and isolation (contact precautions), vaccination, and anti-microbial drug treatment.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

# PhenoMapper: an interactive toolbox for the visual exploration of phenomics data

TDA tool that can possibly help us to view some trajectory data. Scenarios(s) Modeled: We demonstrate the utility of this new tool on real-world plant (e.g., maize) phenomics datasets.

Contact: Ananth Kalyanaraman (email: ananth@wsu.edu)

# Multitask Model to Forecast Patient's Next Unit and Remaining Length of Stay

Length of Stay prediction and unit transfer prediction tool. Scenarios(s) Modeled: In this multi-task learning model, we train the model to predict:Task-1: patient's unit label in next time step. Task-2: patient's remaining length of stay.The model inputs get updated on a daily basis and generates prediction accordingly.

Contact: Ananth Kalyanaraman (email: ananth@wsu.edu)

# Attention-Based Models for Snow-Water Equivalent Prediction

Transformer architectures for spatio-temporal prediction (or synthetic data generation/imputation). Scenarios(s) Modeled: Predicting the SWE value for multiple SNOTEL locations in the Western US using the Attention Models

Contact: Ananth Kalyanaraman (email: ananth@wsu.edu)

