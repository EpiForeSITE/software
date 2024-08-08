## Profiles

# Example - Flexible Epidemic Modeling Pipeline (flepiMoP) {#sec-example---flexible-epidemic-modeling-pipeline--flepimop-}

Simulates a wide range of compartmental models of infectious disease transmission. The disease transmission and observation models are defined by a no-code configuration file, which allows models of varying complexity to be specified quickly and consistently, from simple problems described by SIR-style models in a single population to more complicated models of multiple pathogen strains transmitting between thousands of connected spatial divisions and age groups.<br>([Learn more...](profiles.md#sec-example---flexible-epidemic-modeling-pipeline--flepimop-))

# Impact of school opening model on SARS-CoV-2 community incidence and mortality {#sec-impact-of-school-opening-model-on-sars-cov-2-community-incidence-and-mortality}

The goal of this statistical analysis was to compare SARS-CoV-2 community incidence and mortality rates across schools that opened in in-person, remote, or hybrid mode. Measure(s) of Economic Impact: Infections and mortality<br>([Learn more...](profiles.md#sec-impact-of-school-opening-model-on-sars-cov-2-community-incidence-and-mortality))

# Net financial impact of halting elective admissions {#sec-net-financial-impact-of-halting-elective-admissions}

The goal of this model was to estimate the net financial impact to the hospital of halting elective admissions due to a COVID-19 surge. Measure(s) of Economic Impact: Hospital profit<br>([Learn more...](profiles.md#sec-net-financial-impact-of-halting-elective-admissions))

# ARIMA; Generalize ARIMA; Vector Autoregression {#sec-arima--generalize-arima--vector-autoregression}

To forecast the weekly positive test number<br>([Learn more...](profiles.md#sec-arima--generalize-arima--vector-autoregression))

# Ensembling Learning; decision tree; XGBoosting; Logistic Regression; Multilayer Perceptron; Long short-term memory (LSTM); Bi-directional LSTM; Convolutional Neural Network (CNN) {#sec-ensembling-learning--decision-tree--xgboosting--logistic-regression--multilayer-perceptron--long-short-term-memory--lstm--bi-directional-lstm--convolutional-neural-network--cnn-}

To develop a forecasting model for number of discharged patients in a single hospital using EHR data<br>([Learn more...](profiles.md#sec-ensembling-learning--decision-tree--xgboosting--logistic-regression--multilayer-perceptron--long-short-term-memory--lstm--bi-directional-lstm--convolutional-neural-network--cnn-))

# Ensembling Learning; Prophet model; Generalized ARIMA; {#sec-ensembling-learning--prophet-model--generalized-arima-}

To develop a forecasting model for number of daily hosptial admission in a single hospital<br>([Learn more...](profiles.md#sec-ensembling-learning--prophet-model--generalized-arima-))

# Covid forecasting model {#sec-covid-forecasting-model}

Forecast COVID-19 and compare different data streams<br>([Learn more...](profiles.md#sec-covid-forecasting-model))

# Empirical Dynamic Modeling {#sec-empirical-dynamic-modeling}

To develop a forecasting model to predict the weekly abx use and abx resistant rate in VA<br>([Learn more...](profiles.md#sec-empirical-dynamic-modeling))

# Vector Autoregression {#sec-vector-autoregression}

To develop a forecasting model to predict the weekly abx use and abx resistant rate in VA<br>([Learn more...](profiles.md#sec-vector-autoregression))

# Autoencoder and clustering based anomaly detection {#sec-autoencoder-and-clustering-based-anomaly-detection}

Initially developed as a project with DHS Science and Technology, this project took place from 2018 to 2019 (pre-COVID).  The approach here is to find potentially anomalous cases which are also related.  To create anomaly “scores”, a neural network autoencoder is used to process over patient data from the emergency department visit and quantify how “rare” this kind of visit might be compared to all other previous visits.  Then a density-based clustering is used to identify any potential clusters of anomalous cases since one single case may not warrant concern, but a group of patients with similar labs, signs/symptoms, etc might suggest common exposures and conditions.<br>([Learn more...](profiles.md#sec-autoencoder-and-clustering-based-anomaly-detection))

# Nowcasting {#sec-nowcasting}

Given the time lag between laboratory testing for disease and eventual reporting, we’ve developed a model which consumes data from both community and VA to predict “now” how many positive tests for a disease (COVID-19 in this context) will eventually be reported as positive.  A VA HSR&D abstract is available.<br>([Learn more...](profiles.md#sec-nowcasting))

# Statistical Alerts (time series) {#sec-statistical-alerts--time-series-}

We have supported an Operations system for processing time series for “aberrations” (aka, “alerts”, “potential outbreaks”) for 8+ years in VA BASIC.  During this time, we’ve integrated several among the suite of algorithms available in the R package titled “surveillance”.  This includes several classes of numerical methods, of which some are window-based, control chart-based or trained linear models.  A brief presentation on this is attached here.<br>([Learn more...](profiles.md#sec-statistical-alerts--time-series-))

# Cumulative infection {#sec-cumulative-infection}

We’ve used Mortality Mapping (mMAP), an existing epidemiologic and statistical analysis approach by Lu et al. [1,2] to estimate the cumulative incidence of symptomatic COVID-19 in Veterans in the United States. mMAP is a time series deconvolution method which infers the true COVID-19 case counts from reported COVID-19 deaths. It uses symptom onset to death distribution, smoothed time series of reported COVID-19 deaths, and symptomatic case fatality rate (sCFR) to estimate the distribution of symptomatic COVID-19 cases. We focus on the adjusted version of the mMAP approach presented by Lu et al., which tries to account for the unreported COVID-19 deaths. While Lu uses excess influenza and pneumonia deaths to account for unreported COVID-19 deaths, we have extended their approach by using excess all-cause deaths. <br>([Learn more...](profiles.md#sec-cumulative-infection))

# Excess Death Estimation {#sec-excess-death-estimation}

The aberration detection methods introduced by Farrington et al. and later Noufaily et al. have been implemented to obtain weekly all-cause mortality data.<br>([Learn more...](profiles.md#sec-excess-death-estimation))

# Serfling {#sec-serfling}

Classic Serfling-type regression model for seasonal diseases. Can be used to estimate both excess risk (based on breaching a threshold), or estimate the peak week and other parameters of a yearly epidemic curve.<br>([Learn more...](profiles.md#sec-serfling))

# DEDiscover (differential evolution) {#sec-dediscover--differential-evolution-}

Parameter estimation using differential evolution.<br>([Learn more...](profiles.md#sec-dediscover--differential-evolution-))

# Monolix {#sec-monolix}

Parameter estimation in non-linear mixed effect models. Parameter estimated: Any.<br>([Learn more...](profiles.md#sec-monolix))

# Carriage duration estimation from serial testing data {#sec-carriage-duration-estimation-from-serial-testing-data}

Estimate the duration and heterogeneity of individuals’ colonization episodes for organisms of interest. Parameter estimated: Average and distribution of clearance rate(s) across multiple candidate model forms, average (re)acquisition rate, sensitivity/specificity of testing. Estimates derived via maximum likelihood techniques.<br>([Learn more...](profiles.md#sec-carriage-duration-estimation-from-serial-testing-data))

# Transmission estimation for outbreak clusters {#sec-transmission-estimation-for-outbreak-clusters}

Provides estimates for individual-level transmission distribution (mean and variance) based on data from prior isolated outbreak clusters. Useful for quantifying the risk of superspreading events and the risk that future outbreaks will exceed a given threshold.Parameter estimated: Basic reproduction number; dispersion parameter quantifying variance in transmission; extensions estimate changes in reproduction number by generation, e.g. post-control reproduction number. Estimated via maximum likelihood using final size distribution equations for branching process models.<br>([Learn more...](profiles.md#sec-transmission-estimation-for-outbreak-clusters))

# Household epidemiology estimation from antibody data {#sec-household-epidemiology-estimation-from-antibody-data}

Simultaneously estimate household importation risk, household secondary attack rate, and associated variability / heterogeneities using point-prevalence data for antibody positivity among household members. Parameter estimated: Household importation probability, household secondary attack rate, sensitivity / specificity of data for indicating prior infection, variability (dispersion) in transmissibility,  and heterogeneities in those quantities over age and/or other identifiable characteristics of individuals and households. Estimates derived via maximum likelihood for final household outbreak size equations.<br>([Learn more...](profiles.md#sec-household-epidemiology-estimation-from-antibody-data))

# Competing Risks {#sec-competing-risks}

Estimating a competing risks mixture model, which provides both the odds ratio of one event occurring vs. another as well as a marginal estimate of the time to both respective events. Parameter estimated: Odds ratio of two different events occurring and the time to event estimate for both events.<br>([Learn more...](profiles.md#sec-competing-risks))

# Healthcare transmission epidemiology estimation at equilibrium {#sec-healthcare-transmission-epidemiology-estimation-at-equilibrium}

Estimate the extent of patient-to-patient transmission and other quantities using admission prevalence and cross-sectional point-prevalence data for carriage of organisms among healthcare facility in-patients. Parameter estimated: Patient-to-patient transmission rate, facility reproduction number, rate of progression to infection, intervention effects if applicable. Estimates derived via solving differential equations at equilibrium and facility reproduction number equations.<br>([Learn more...](profiles.md#sec-healthcare-transmission-epidemiology-estimation-at-equilibrium))

# Dose-response estimators for infection risk {#sec-dose-response-estimators-for-infection-risk}

Estimate infection probability from a given dose of exposure using data sets from experimental dose-quantified exposures of humans or animals; model-based results used to perform quantitative risk assessment for potential human exposure scenarios. Parameter estimated: Per-unit-dose infection probability and associated additional parameters for more complicated dose-response models, including those that quantify dose-dependent latent/incubation period; can convert estimates to common “infectious dose” quantification metrics such as “ID-50.” Estimates derived via maximum likelihood for multiple equation-based dose-response models fit to exposure-response data.<br>([Learn more...](profiles.md#sec-dose-response-estimators-for-infection-risk))

# Two-part pomp tutorial to estimate parameters from an SIR model using PMCMC {#sec-two-part-pomp-tutorial-to-estimate-parameters-from-an-sir-model-using-pmcmc}

To goal of this two-part tutorial is to demonstrate how to implement an SIR epidemiological model in the pomp R package in part 1, and then estimate the unknown parameters in part 2. The tutorial is designed to focus on the R code. Parameter estimated: This tutorial gives a specific example of estimating the transmission and testing probability parameters using pomp.<br>([Learn more...](profiles.md#sec-two-part-pomp-tutorial-to-estimate-parameters-from-an-sir-model-using-pmcmc))

# pomp R code for the estimation of unknown parameters in a two-population SEIR model from data collected in Whitman County, Washington {#sec-pomp-r-code-for-the-estimation-of-unknown-parameters-in-a-two-population-seir-model-from-data-collected-in-whitman-county--washington}

Build a two-population SEIR model using the pomp coding framework in R and estimate the unknown parameters in this model using the PMCMC algorithm. Parameter estimated: Transmission parameters (transmission within each population and transmission across the two-populations), testing probability, and overdispersion parameter.<br>([Learn more...](profiles.md#sec-pomp-r-code-for-the-estimation-of-unknown-parameters-in-a-two-population-seir-model-from-data-collected-in-whitman-county--washington))

# Bayesian Transmission Model {#sec-bayesian-transmission-model}

Provides estimates for critical epidemiological parameters that characterize the spread of bacterial pathogens in healthcare settings. Parameter estimated: Transmission rate (frequency-dependent or density-dependent mass action), importation probability, clearance rate (loss of colonization per colonized person per unit time), surveillance test sensitivity, surveillance test specificity, effect of covariate on transmission (multiplier in relation to overall transmission rate).<br>([Learn more...](profiles.md#sec-bayesian-transmission-model))

# H1N1 Pandemic Data Estimation {#sec-h1n1-pandemic-data-estimation}

Describes an SIR model parameter estimation with an improved fit using least squares estimation over maximum likelihood estimation. Parameter estimated: Transmission rate, recovery rate, R0, number of initial infectives<br>([Learn more...](profiles.md#sec-h1n1-pandemic-data-estimation))

# Whitman Co. COVID {#sec-whitman-co--covid}

Estimate the mixing parameters for a two-population metapopulation model (i.e. Beta_Pop1, Beta_Pop2, Beta_Pop1*Pop2). Model currently fits timeseries data from pre-vaccination COVID in Fall 2020 in Whitman Co., WA (focusing on the town of Pullman).<br>([Learn more...](profiles.md#sec-whitman-co--covid))

# R code to implement an ODE model using the Tau Leaping algorithm {#sec-r-code-to-implement-an-ode-model-using-the-tau-leaping-algorithm}

This code offers flexible implementation of an ODE model using the Tau Leaping algorithm in R without the need for a package.<br>([Learn more...](profiles.md#sec-r-code-to-implement-an-ode-model-using-the-tau-leaping-algorithm))

# HIV End Stage Kidney Disease Epidemic Model {#sec-hiv-end-stage-kidney-disease-epidemic-model}

An ODE-based model to predict future disease prevalence given the impact of drug therapy levels and its mechanism of action (i.e., stopping progression to disease or reducing deaths). Parameter estimated:  Growth rate, death rate, drug efficacy to block disease progression. Scenarios(s) Modeled: Rebound in prevalence due to insufficient therapy (e.g., like in Paxlovid rebound).<br>([Learn more...](profiles.md#sec-hiv-end-stage-kidney-disease-epidemic-model))

# Herpes Vaccine Model {#sec-herpes-vaccine-model}

An ODE-based 6-compartment SI model with asymptomatic carriers and vaccinated classes to forecast the number of infections prevented with imperfect vaccination and infections prevented per vaccine administered. Parameter estimated: Highly correlated parameters determined using LHS PRCC. Scenarios(s) Modeled: Prophylactic (pre-exposure) vaccines, Therapeutic (post-exposure) vaccines, Parameter(s) Estimated: Highly correlated parameters determined using LHS PRCC<br>([Learn more...](profiles.md#sec-herpes-vaccine-model))

# POMP (Aaron King’s tool, U. of Michigan) {#sec-pomp--aaron-king-s-tool--u--of-michigan-}

Analysis of time series data based on stochastic dynamical systems models<br>([Learn more...](profiles.md#sec-pomp--aaron-king-s-tool--u--of-michigan-))

# Post-acute care model {#sec-post-acute-care-model}

A basic model to plan for the post-acute care needs following a hospital surge<br>([Learn more...](profiles.md#sec-post-acute-care-model))

# Room contamination simulator {#sec-room-contamination-simulator}

Simulate dynamic levels of contamination in hospital room surfaces and on patients / healthcare workers in the room. Scenarios(s) Modeled: Shedding in-patient in hospital room, susceptible patient in contaminated room, healthcare worker performing patient care, room cleaning and hand hygiene interventions, use of personal protective equipment.<br>([Learn more...](profiles.md#sec-room-contamination-simulator))

# Granular Modeling Framework/ICU {#sec-granular-modeling-framework-icu}

Implement 2 ICUs that match the CVICU at the University of Utah and the ICU at the Salt Lake City VA.  Model all empirical data collected by the GM project:  HCW movement and touch data as collected by the proximity sensors, Patient flow from the EHR, and micro data as sampled by the GM micro team.  Scenarios(s) Modeled: Sustained endemic HAI levels driven by importation into a 15-25 bed ICU.  Contamination and transmission via HCW movement and contact behaviors.  The simulation includes contamination of multiple surfaces in several room zones, contamination of patient surfaces via shedding and HCW surfaces via touching.  Room cleaning, isolation, and targeted treatment of HAI.  HCW visits include assigned networks between health care workers and patients as well as ad hoc visits.<br>([Learn more...](profiles.md#sec-granular-modeling-framework-icu))

# CU Metapopulation {#sec-cu-metapopulation}

Stochastic representation of an ICU in a tertiary care academic medical center. Scenarios(s) Modeled: Staffing changes, cohorting (with some effort), decolonization, fecal transplant, antibiotic stewardship (with some modifications). Others are possible.<br>([Learn more...](profiles.md#sec-cu-metapopulation))

# Rabies {#sec-rabies}

Stochastic representation of pulsed and continuous rabies eradication. Scenarios(s) Modeled: Pulsed vs. continuous rabies elimination programs. A number of parameters regarding dog survival, reproduction, etc. are also amenable to scenario modeling.<br>([Learn more...](profiles.md#sec-rabies))

# Covid Scenario model {#sec-covid-scenario-model}

A flexible scenario modeling pipeline that could quickly tailor models for decision makers seeking to compare projections of epidemic trajectories and healthcare impacts from multiple intervention scenarios in different locations. Scenarios(s) Modeled: Mask, social distance, lock down, comprehensive test/isolate, fatiguing interventions<br>([Learn more...](profiles.md#sec-covid-scenario-model))

# COVID-19 NCAA Football {#sec-covid-19-ncaa-football}

Stochastic representation a season of on-campus football during COVID. Scenarios(s) Modeled: Estimates a football season with high or low mixing between the visiting community and the hosting college student population, and with high or low prevalence in the visitors.<br>([Learn more...](profiles.md#sec-covid-19-ncaa-football))

# University of Utah circuit breaker model {#sec-university-of-utah-circuit-breaker-model}

A basic model of school closure for the University of Utah fall reopening. Scenarios(s) Modeled: Delay start, circuit breaker, end early.<br>([Learn more...](profiles.md#sec-university-of-utah-circuit-breaker-model))

# COVID-19 Jail Model {#sec-covid-19-jail-model}

Deterministic model of a stylized jail, with a number of potential interventions developed in collaboration with the ACLU. Scenarios(s) Modeled: Decarceration, social distancing, targeted or widespread arrest reduction, isolation.<br>([Learn more...](profiles.md#sec-covid-19-jail-model))

# Vaccine Hesitancy Model {#sec-vaccine-hesitancy-model}

An ODE (ordinary differential equation)-based SVEIR model with 3 compartments for symptoms (mild, moderate, severe) that can quantify the tradeoffs between vaccine efficacy and vaccine hesitancy on reducing the disease burden. Scenarios(s) Modeled: R0, cumulative infections, and deaths due to varying values of transmission rate, vaccine coverage rate, vaccine efficacy, and vaccine hesitancy. The vaccine efficacy required to compensate for different levels of vaccine hesitancy.<br>([Learn more...](profiles.md#sec-vaccine-hesitancy-model))

# Branching process outbreak simulator {#sec-branching-process-outbreak-simulator}

Quantifies risk posed by individual importers of a novel transmissible pathogen to a generic population, with intervention effects. Scenarios(s) Modeled: Novel introduction of transmissible pathogen by infected traveler, by accidentally infected laboratory worker, or similar scenario; intervention scenarios for improved detection of initial case and for delayed mitigation after ongoing outbreak is detected.<br>([Learn more...](profiles.md#sec-branching-process-outbreak-simulator))

# Long-term acute care hospital (LTACH) intervention model {#sec-long-term-acute-care-hospital--ltach--intervention-model}

Provides analytic framework for investigating patient-focused interventions to prevent transmission in high-risk healthcare facilities and their direct and population-level health impacts and threshold effects. Scenarios(s) Modeled: Intervention scenarios for surveillance and isolation (contact precautions), decolonization drugs, infection treatment, horizontal transmission reduction, and length of stay reduction.<br>([Learn more...](profiles.md#sec-long-term-acute-care-hospital--ltach--intervention-model))

# Household transmission simulator {#sec-household-transmission-simulator}

Simulate household importation and within-household transmission across a population of households, and intervention effects, e.g. vaccination. Scenarios(s) Modeled: Household importation and transmission with variability in transmissibility and heterogeneity across age groups and vaccination status.<br>([Learn more...](profiles.md#sec-household-transmission-simulator))

# Airborne release of infectious pathogens simulator {#sec-airborne-release-of-infectious-pathogens-simulator}

Estimate airborne dispersal, human exposure, and infection probabilities and timelines after a release of a quantity of infectious organisms. Scenarios(s) Modeled: Airborne release and human inhalational exposure and infection, similar the Sverdlovsk anthrax leak of 1979.<br>([Learn more...](profiles.md#sec-airborne-release-of-infectious-pathogens-simulator))

# School outbreak simulator {#sec-school-outbreak-simulator}

Agent-based simulation of person-to-person transmission at schools over data-based dynamic proximity contact networks. Scenarios(s) Modeled:  Transmission modeled during school hours; can model interventions affecting the contact network and school attendance behavior.<br>([Learn more...](profiles.md#sec-school-outbreak-simulator))

# Inpatient antibiotic prescribing and effects simulator {#sec-inpatient-antibiotic-prescribing-and-effects-simulator}

Simulate realistic rates and timing / duration / types of antibiotic administration to hospital inpatients and their effects on microbial transmission and infection, and antibiotic stewardship effects. Scenarios(s) Modeled:  Prescribing patterns of different types of antibiotics based on U.S. data; intervention scenarios for reducing prescribing, shortening duration of courses, and altering types of antibiotics used.<br>([Learn more...](profiles.md#sec-inpatient-antibiotic-prescribing-and-effects-simulator))

# Healthcare facility network outbreak simulator {#sec-healthcare-facility-network-outbreak-simulator}

Provides flexible framework for agent-based simulation of outbreaks among in-patients in a generic-but-realistic network of short/long-stay hospitals and nursing homes, as well as interventions to mitigate transmission and inter-facility spread. Scenarios(s) Modeled:  Initial invasion of new pathogen / strain and/or endemic pathogens. Intervention scenarios for patient-targeted efforts including surveillance and isolation (contact precautions), vaccination, and anti-microbial drug treatment.<br>([Learn more...](profiles.md#sec-healthcare-facility-network-outbreak-simulator))

# PhenoMapper: an interactive toolbox for the visual exploration of phenomics data {#sec-phenomapper--an-interactive-toolbox-for-the-visual-exploration-of-phenomics-data}

TDA tool that can possibly help us to view some trajectory data. Scenarios(s) Modeled: We demonstrate the utility of this new tool on real-world plant (e.g., maize) phenomics datasets.<br>([Learn more...](profiles.md#sec-phenomapper--an-interactive-toolbox-for-the-visual-exploration-of-phenomics-data))

# Multitask Model to Forecast Patient's Next Unit and Remaining Length of Stay {#sec-multitask-model-to-forecast-patient-s-next-unit-and-remaining-length-of-stay}

Length of Stay prediction and unit transfer prediction tool. Scenarios(s) Modeled: In this multi-task learning model, we train the model to predict:Task-1: patient's unit label in next time step. Task-2: patient's remaining length of stay.The model inputs get updated on a daily basis and generates prediction accordingly.<br>([Learn more...](profiles.md#sec-multitask-model-to-forecast-patient-s-next-unit-and-remaining-length-of-stay))

# Attention-Based Models for Snow-Water Equivalent Prediction {#sec-attention-based-models-for-snow-water-equivalent-prediction}

Transformer architectures for spatio-temporal prediction (or synthetic data generation/imputation). Scenarios(s) Modeled: Predicting the SWE value for multiple SNOTEL locations in the Western US using the Attention Models<br>([Learn more...](profiles.md#sec-attention-based-models-for-snow-water-equivalent-prediction))
