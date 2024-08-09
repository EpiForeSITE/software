# Profiles

## Example - Flexible Epidemic Modeling Pipeline (flepiMoP)

Simulates a wide range of compartmental models of infectious disease transmission. The disease transmission and observation models are defined by a no-code configuration file, which allows models of varying complexity to be specified quickly and consistently, from simple problems described by SIR-style models in a single population to more complicated models of multiple pathogen strains transmitting between thousands of connected spatial divisions and age groups.

Contact: Shaun Truelove (email: shauntruelove@jhu.edu)

Links:<br> https://www.flepimop.org

## Impact of school opening model on SARS-CoV-2 community incidence and mortality

The goal of this statistical analysis was to compare SARS-CoV-2 community incidence and mortality rates across schools that opened in in-person, remote, or hybrid mode. Measure(s) of Economic Impact: Infections and mortality

Contact: Richard Nelson (email: richard.nelson@utah.edu)

Links:<br> https://www.nature.com/articles/s41591-021-01563-8

## Net financial impact of halting elective admissions

The goal of this model was to estimate the net financial impact to the hospital of halting elective admissions due to a COVID-19 surge. Measure(s) of Economic Impact: Hospital profit

Contact: Richard Nelson (email: richard.nelson@utah.edu)

Links:<br> https://pubmed.ncbi.nlm.nih.gov/33427797/

## ARIMA; Generalize ARIMA; Vector Autoregression

To forecast the weekly positive test number

Contact: Yue Zhang (email: zhang.yue@hsc.utah.edu)

Links:<br> no pubication plan

## Ensembling Learning; decision tree; XGBoosting; Logistic Regression; Multilayer Perceptron; Long short-term memory (LSTM); Bi-directional LSTM; Convolutional Neural Network (CNN)

To develop a forecasting model for number of discharged patients in a single hospital using EHR data

Contact: Yue Zhang (email: zhang.yue@hsc.utah.edu)

Links:<br> manuscript under preparation

## Ensembling Learning; Prophet model; Generalized ARIMA;

To develop a forecasting model for number of daily hosptial admission in a single hospital

Contact: Yue Zhang (email: zhang.yue@hsc.utah.edu)

Links:<br> manuscript under preparation

## Covid forecasting model

Forecast COVID-19 and compare different data streams

Contact: Lindsay Keegan or Tess Sheets (email: Lindsay.Keegan@utah.edu)

Links:<br> Not published but will

## Empirical Dynamic Modeling

To develop a forecasting model to predict the weekly abx use and abx resistant rate in VA

Contact: Karim Khader (email: karim.khader@hsc.utah.edu)

Links:<br> Not published but will

## Vector Autoregression

To develop a forecasting model to predict the weekly abx use and abx resistant rate in VA

Contact: Yue Zhang (email: zhang.yue@hsc.utah.edu)

Links:<br> Not published but will

## Autoencoder and clustering based anomaly detection

Initially developed as a project with DHS Science and Technology, this project took place from 2018 to 2019 (pre-COVID).  The approach here is to find potentially anomalous cases which are also related.  To create anomaly “scores”, a neural network autoencoder is used to process over patient data from the emergency department visit and quantify how “rare” this kind of visit might be compared to all other previous visits.  Then a density-based clustering is used to identify any potential clusters of anomalous cases since one single case may not warrant concern, but a group of patients with similar labs, signs/symptoms, etc might suggest common exposures and conditions.

Contact: Kelly Peterson (email: kelly.peterson2@va.gov ;kelly.peterson@hsc.utah.edu)

Links:<br> Nothing published.

## Nowcasting

Given the time lag between laboratory testing for disease and eventual reporting, we’ve developed a model which consumes data from both community and VA to predict “now” how many positive tests for a disease (COVID-19 in this context) will eventually be reported as positive.  A VA HSR&D abstract is available.

Contact: Kelly Peterson (email: kelly.peterson2@va.gov ;kelly.peterson@hsc.utah.edu)

Links:<br> An abstract of this was presented at VS HSR&D meeting.  The text of the abstract is here: https://www.hsrd.research.va.gov/meetings/2023/abstract-display.cfm?AbsNum= (There is also a poster)

## Statistical Alerts (time series)

We have supported an Operations system for processing time series for “aberrations” (aka, “alerts”, “potential outbreaks”) for 8+ years in VA BASIC.  During this time, we’ve integrated several among the suite of algorithms available in the R package titled “surveillance”.  This includes several classes of numerical methods, of which some are window-based, control chart-based or trained linear models.  A brief presentation on this is attached here.

Contact: Kelly Peterson (email: kelly.peterson2@va.gov ;kelly.peterson@hsc.utah.edu)

Links:<br> The way that we implement this system has not been published, but there are links for “surveillance” (https://cran.r-project.org/web/packages/surveillance/index.html)and “epysurv” packages (https://epysurv.readthedocs.io/en/latest/).

## Cumulative infection

We’ve used Mortality Mapping (mMAP), an existing epidemiologic and statistical analysis approach by Lu et al. [1,2] to estimate the cumulative incidence of symptomatic COVID-19 in Veterans in the United States. mMAP is a time series deconvolution method which infers the true COVID-19 case counts from reported COVID-19 deaths. It uses symptom onset to death distribution, smoothed time series of reported COVID-19 deaths, and symptomatic case fatality rate (sCFR) to estimate the distribution of symptomatic COVID-19 cases. We focus on the adjusted version of the mMAP approach presented by Lu et al., which tries to account for the unreported COVID-19 deaths. While Lu uses excess influenza and pneumonia deaths to account for unreported COVID-19 deaths, we have extended their approach by using excess all-cause deaths. 

Contact: Vanessa Stevens or Wathsala Widanagamaachchi (email: vanessa.stevens@hsc.utah.edu; vanessa.stevens@va.gov or wathsala.widanagamaachchi@hsc.utah.edu)

Links:<br> Under the following existing papers from others: 1-https://www.medrxiv.org/content/10.1101/2020.04.18.20070821v3.full.pdf , 2-https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008994 

## Excess Death Estimation

The aberration detection methods introduced by Farrington et al. and later Noufaily et al. have been implemented to obtain weekly all-cause mortality data.

Contact: Vanessa Stevens or Wathsala Widanagamaachchi (email: vanessa.stevens@hsc.utah.edu; vanessa.stevens@va.gov or wathsala.widanagamaachchi@hsc.utah.edu)

Links:<br> Not currently published.

## Serfling

Classic Serfling-type regression model for seasonal diseases. Can be used to estimate both excess risk (based on breaching a threshold), or estimate the peak week and other parameters of a yearly epidemic curve.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

Links:<br> https://link.springer.com/chapter/10.1007/978-3-540-72608-1_11

## DEDiscover (differential evolution)

Parameter estimation using differential evolution.

Contact: Elissa Schwartz (email: ejs@wsu.edu)

Links:<br> https://www.dediscover.org/

## Monolix

Parameter estimation in non-linear mixed effect models. Parameter estimated: Any.

Contact: Elissa Schwartz (email: ejs@wsu.edu)

Links:<br> https://monolix.lixoft.com/

## Carriage duration estimation from serial testing data

Estimate the duration and heterogeneity of individuals’ colonization episodes for organisms of interest. Parameter estimated: Average and distribution of clearance rate(s) across multiple candidate model forms, average (re)acquisition rate, sensitivity/specificity of testing. Estimates derived via maximum likelihood techniques.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> Beams A, Keegan L, Adler F, Samore M, Khader K, Toth D (2023), Are Staphylococcus aureus Carrier Types Evidence of Population Heterogeneity? American Journal of Epidemiology 192(3), 455–466. https://doi.org/10.1093/aje/kwac201.

## Transmission estimation for outbreak clusters

Provides estimates for individual-level transmission distribution (mean and variance) based on data from prior isolated outbreak clusters. Useful for quantifying the risk of superspreading events and the risk that future outbreaks will exceed a given threshold.Parameter estimated: Basic reproduction number; dispersion parameter quantifying variance in transmission; extensions estimate changes in reproduction number by generation, e.g. post-control reproduction number. Estimated via maximum likelihood using final size distribution equations for branching process models.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> 1-Toth D, Gundlapalli A, Khader K, Pettey W, Rubin M, Adler F, Samore M (2015). Estimates of outbreak risk from new introductions of Ebola with immediate and delayed transmission control. Emerg Infect Dis, 21(8), 1402-1408. https://doi.org/10.3201/eid2108.150170. 2-Toth D, Tanner W, Khader K, Gundlapalli A (2016). Estimates of the risk of large or long-lasting outbreaks of Middle East respiratory syndrome after importations outside the Arabian Peninsula. Epidemics, 16, 27-32. https://doi.org/10.1016/j.epidem.2016.04.002.

## Household epidemiology estimation from antibody data

Simultaneously estimate household importation risk, household secondary attack rate, and associated variability / heterogeneities using point-prevalence data for antibody positivity among household members. Parameter estimated: Household importation probability, household secondary attack rate, sensitivity / specificity of data for indicating prior infection, variability (dispersion) in transmissibility,  and heterogeneities in those quantities over age and/or other identifiable characteristics of individuals and households. Estimates derived via maximum likelihood for final household outbreak size equations.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> 1-Toth D, Beams A, Keegan L, Zhang Y, Greene T, Orleans B, Seegert N, Looney A, Alder S, Samore M (2021). High variability in transmission of SARS-CoV-2 within households and implications for control. PLoS ONE 16(11): e0259097. https://doi.org/10.1371/journal.pone.0259097.
2-Manuscript with age-structured model in preparation

## Competing Risks

Estimating a competing risks mixture model, which provides both the odds ratio of one event occurring vs. another as well as a marginal estimate of the time to both respective events. Parameter estimated: Odds ratio of two different events occurring and the time to event estimate for both events.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

Links:<br> https://journals.lww.com/epidem/fulltext/2014/07000/hospital_acquired_clostridium_difficile.15.aspx

## Healthcare transmission epidemiology estimation at equilibrium

Estimate the extent of patient-to-patient transmission and other quantities using admission prevalence and cross-sectional point-prevalence data for carriage of organisms among healthcare facility in-patients. Parameter estimated: Patient-to-patient transmission rate, facility reproduction number, rate of progression to infection, intervention effects if applicable. Estimates derived via solving differential equations at equilibrium and facility reproduction number equations.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> o	Toth D, Khader K, Beams A, Samore M (2019). Model-based Assessment of the Effect of Contact Precautions Applied to Surveillance-detected Carriers of Carbapenemase-producing Enterobacteriaceae in Long-term Acute Care Hospitals, Clinical Infectious Diseases 69(Supplement_3), S206–S213. https://doi.org/10.1093/cid/ciz557.
o	Toth D, Samore M, Nelson R (2021), Economic Evaluations of New Antibiotics: The High Potential Value of Reducing Healthcare Transmission Through Decolonization, Clinical Infectious Diseases 72(Supplement_1), S34–S41. https://doi.org/10.1093/cid/ciaa1590.

## Dose-response estimators for infection risk

Estimate infection probability from a given dose of exposure using data sets from experimental dose-quantified exposures of humans or animals; model-based results used to perform quantitative risk assessment for potential human exposure scenarios. Parameter estimated: Per-unit-dose infection probability and associated additional parameters for more complicated dose-response models, including those that quantify dose-dependent latent/incubation period; can convert estimates to common “infectious dose” quantification metrics such as “ID-50.” Estimates derived via maximum likelihood for multiple equation-based dose-response models fit to exposure-response data.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> 1-Toth D, Gundlapalli A, Schell W, Bulmahn K, Walton T, Woods C, Coghill C, Gallegos F, Samore M, Adler F (2013). Quantitative models of the dose-response and time course of inhalational anthrax in humans. PLoS Pathog, 9(8), e1003555. https://doi.org/10.1371/journal.ppat.1003555.
2-Bulmahn K, Canella M, Coghill C, Gallegos F, Gundlapalli A, Schell W, Toth D, Walton T, Woods C (2012). Final Supplementary Risk Assessment for the Boston University National Emerging Infectious Diseases Laboratories, National Institutes of Health. https://www.bu.edu/neidl/files/2013/01/SFEIR-Volume-III.pdf (Chapter 8; Appendix J).

## Two-part pomp tutorial to estimate parameters from an SIR model using PMCMC

To goal of this two-part tutorial is to demonstrate how to implement an SIR epidemiological model in the pomp R package in part 1, and then estimate the unknown parameters in part 2. The tutorial is designed to focus on the R code. Parameter estimated: This tutorial gives a specific example of estimating the transmission and testing probability parameters using pomp.

Contact: Erin Clancey (email: erin.clancey@wsu.edu)

Links:<br> This tutorial is not designed to be published.

## pomp R code for the estimation of unknown parameters in a two-population SEIR model from data collected in Whitman County, Washington

Build a two-population SEIR model using the pomp coding framework in R and estimate the unknown parameters in this model using the PMCMC algorithm. Parameter estimated: Transmission parameters (transmission within each population and transmission across the two-populations), testing probability, and overdispersion parameter.

Contact: Erin Clancey (email: erin.clancey@wsu.edu)

Links:<br> The manuscript is currently available as a preprint https://www.medrxiv.org/content/10.1101/2024.01.10.24301116v1.full.pdf and submitted to the journal Epidemics.

## Bayesian Transmission Model

Provides estimates for critical epidemiological parameters that characterize the spread of bacterial pathogens in healthcare settings. Parameter estimated: Transmission rate (frequency-dependent or density-dependent mass action), importation probability, clearance rate (loss of colonization per colonized person per unit time), surveillance test sensitivity, surveillance test specificity, effect of covariate on transmission (multiplier in relation to overall transmission rate).

Contact: Karim Khader (email: karim.khader@hsc.utah.edu)

Links:<br> 1.Khader K, Thomas A, Stevens V, Visnovsky L, Nevers M, Toth D, Keegan LT, Jones M, Rubin M, Samore MH (2021). Association Between Contact Precautions And Transmission of Methicillin-Resistant Staphylococcus Aureus in Veterans Affairs Hospitals. JAMA Netw Open.
2.Khader K, Munoz-Price LS, Hanson R, Stevens V, Keegan LT, Thomas A, Pezzin LE, Nattinger A, Singh S, Samore MH (2021). Transmission Dynamics of Clostridioides difficile in 2 High-Acuity Hospital Units. Clin Infect Dis.
3.Khader K, Thomas A, Huskins WC, Stevens V, Keegan LT, Visnovsky L, Samore MH (2021). Effectiveness of Contact Precautions to Prevent Transmission of Methicillin-Resistant Staphylococcus aureus and Vancomycin-Resistant Enterococci in Intensive Care Units. Clin Infect Dis.
4.Khader K, Thomas A, Jones M, Toth D, Stevens V, Samore MH (2019). Variation and trends in transmission dynamics of Methicillin-resistant Staphylococcus aureus in veterans affairs hospitals and nursing homes. Epidemics.
5.Thomas A, Khader K, Redd A, Leecaster M, Zhang Y, Jones M, Greene T, Samore M (2018). Extended models for nosocomial infection: parameter estimation and model selection. Math Med Biol, 35(suppl_1), 29-49.
6.Khader K, Thomas A, Huskins WC, Leecaster M, Zhang Y, Greene T, Redd A, Samore MH (2017). A dynamic transmission model to evaluate the effectiveness of infection control strategies. Open Forum Infect Dis.
7.Thomas A, Redd A, Khader K, Leecaster M, Greene T, Samore M (2015). Efficient parameter estimation for models of healthcare-associated pathogen transmission in discrete and continuous time. Math Med Biol, 32(1), 79-98.

## H1N1 Pandemic Data Estimation

Describes an SIR model parameter estimation with an improved fit using least squares estimation over maximum likelihood estimation. Parameter estimated: Transmission rate, recovery rate, R0, number of initial infectives

Contact: Elissa Schwartz (email: ejs@wsu.edu)

Links:<br> https://doi.org/10.1016/j.mbs.2015.03.007

## Whitman Co. COVID

Estimate the mixing parameters for a two-population metapopulation model (i.e. Beta_Pop1, Beta_Pop2, Beta_Pop1*Pop2). Model currently fits timeseries data from pre-vaccination COVID in Fall 2020 in Whitman Co., WA (focusing on the town of Pullman).

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

Links:<br> https://www.medrxiv.org/content/10.1101/2024.01.10.24301116v1

## R code to implement an ODE model using the Tau Leaping algorithm

This code offers flexible implementation of an ODE model using the Tau Leaping algorithm in R without the need for a package.

Contact: Erin Clancey (email: erin.clancey@wsu.edu)

Links:<br> The R code is developed, but not documented.

## HIV End Stage Kidney Disease Epidemic Model

An ODE-based model to predict future disease prevalence given the impact of drug therapy levels and its mechanism of action (i.e., stopping progression to disease or reducing deaths). Parameter estimated:  Growth rate, death rate, drug efficacy to block disease progression. Scenarios(s) Modeled: Rebound in prevalence due to insufficient therapy (e.g., like in Paxlovid rebound).

Contact: Elissa Schwartz (email: ejs@wsu.edu)

Links:<br> 1-https://journals.lww.com/jasn/fulltext/2005/08000/highly_active_antiretroviral_therapy_and_the.23.aspx 2- https://doi.org/10.5206/mase/10852   3-https://ir.library.illinoisstate.edu/spora/vol6/iss1/6/.

## Herpes Vaccine Model

An ODE-based 6-compartment SI model with asymptomatic carriers and vaccinated classes to forecast the number of infections prevented with imperfect vaccination and infections prevented per vaccine administered. Parameter estimated: Highly correlated parameters determined using LHS PRCC. Scenarios(s) Modeled: Prophylactic (pre-exposure) vaccines, Therapeutic (post-exposure) vaccines, Parameter(s) Estimated: Highly correlated parameters determined using LHS PRCC

Contact: Elissa Schwartz (email: ejs@wsu.edu)

Links:<br> 1-https://doi.org/10.1086/429299  2-https://doi.org/10.4161/hv.4529

## POMP (Aaron King’s tool, U. of Michigan)

Analysis of time series data based on stochastic dynamical systems models

Contact: Elissa Schwartz (email: ejs@wsu.edu)

Links:<br> Unknown

## Post-acute care model

A basic model to plan for the post-acute care needs following a hospital surge

Contact: Lindsay Keegan (email: Lindsay.Keegan@utah.edu)

Links:<br> https://www.medrxiv.org/content/10.1101/2020.06.12.20129551v1

## Room contamination simulator

Simulate dynamic levels of contamination in hospital room surfaces and on patients / healthcare workers in the room. Scenarios(s) Modeled: Shedding in-patient in hospital room, susceptible patient in contaminated room, healthcare worker performing patient care, room cleaning and hand hygiene interventions, use of personal protective equipment.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> None

## Granular Modeling Framework/ICU

Implement 2 ICUs that match the CVICU at the University of Utah and the ICU at the Salt Lake City VA.  Model all empirical data collected by the GM project:  HCW movement and touch data as collected by the proximity sensors, Patient flow from the EHR, and micro data as sampled by the GM micro team.  Scenarios(s) Modeled: Sustained endemic HAI levels driven by importation into a 15-25 bed ICU.  Contamination and transmission via HCW movement and contact behaviors.  The simulation includes contamination of multiple surfaces in several room zones, contamination of patient surfaces via shedding and HCW surfaces via touching.  Room cleaning, isolation, and targeted treatment of HAI.  HCW visits include assigned networks between health care workers and patients as well as ad hoc visits.

Contact: Willy Ray (email: william.ray@hcs.utah.edu)

Links:<br> NA

## CU Metapopulation

Stochastic representation of an ICU in a tertiary care academic medical center. Scenarios(s) Modeled: Staffing changes, cohorting (with some effort), decolonization, fecal transplant, antibiotic stewardship (with some modifications). Others are possible.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

Links:<br> Published: https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1010352 for the canonical reference

## Rabies

Stochastic representation of pulsed and continuous rabies eradication. Scenarios(s) Modeled: Pulsed vs. continuous rabies elimination programs. A number of parameters regarding dog survival, reproduction, etc. are also amenable to scenario modeling.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

Links:<br> No

## Covid Scenario model

A flexible scenario modeling pipeline that could quickly tailor models for decision makers seeking to compare projections of epidemic trajectories and healthcare impacts from multiple intervention scenarios in different locations. Scenarios(s) Modeled: Mask, social distance, lock down, comprehensive test/isolate, fatiguing interventions

Contact: Lindsay Keegan (email: Lindsay.Keegan@utah.edu)

Links:<br> https://www.nature.com/articles/s41598-021-86811-0

## COVID-19 NCAA Football

Stochastic representation a season of on-campus football during COVID. Scenarios(s) Modeled: Estimates a football season with high or low mixing between the visiting community and the hosting college student population, and with high or low prevalence in the visitors.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

Links:<br> https://www.mdpi.com/1660-4601/18/16/8260

## University of Utah circuit breaker model

A basic model of school closure for the University of Utah fall reopening. Scenarios(s) Modeled: Delay start, circuit breaker, end early.

Contact: Lindsay Keegan (email: Lindsay.Keegan@utah.edu)

Links:<br> No

## COVID-19 Jail Model

Deterministic model of a stylized jail, with a number of potential interventions developed in collaboration with the ACLU. Scenarios(s) Modeled: Decarceration, social distancing, targeted or widespread arrest reduction, isolation.

Contact: Eric Lofgren (email: Eric.Lofgren@wsu.edu)

Links:<br> https://journals.lww.com/epidem/fulltext/2022/07000/carceral_amplification_of_covid_19__impacts_for.6.aspx

## Vaccine Hesitancy Model

An ODE (ordinary differential equation)-based SVEIR model with 3 compartments for symptoms (mild, moderate, severe) that can quantify the tradeoffs between vaccine efficacy and vaccine hesitancy on reducing the disease burden. Scenarios(s) Modeled: R0, cumulative infections, and deaths due to varying values of transmission rate, vaccine coverage rate, vaccine efficacy, and vaccine hesitancy. The vaccine efficacy required to compensate for different levels of vaccine hesitancy.

Contact: Elissa Schwartz (email: ejs@wsu.edu)

Links:<br> https://doi.org/10.1080/17513758.2023.2298988

## Branching process outbreak simulator

Quantifies risk posed by individual importers of a novel transmissible pathogen to a generic population, with intervention effects. Scenarios(s) Modeled: Novel introduction of transmissible pathogen by infected traveler, by accidentally infected laboratory worker, or similar scenario; intervention scenarios for improved detection of initial case and for delayed mitigation after ongoing outbreak is detected.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> 1-Toth D, Gundlapalli A, Khader K, Pettey W, Rubin M, Adler F, Samore M (2015). Estimates of outbreak risk from new introductions of Ebola with immediate and delayed transmission control. Emerg Infect Dis, 21(8), 1402-1408. https://doi.org/10.3201/eid2108.150170.
2-Toth D, Tanner W, Khader K, Gundlapalli A (2016). Estimates of the risk of large or long-lasting outbreaks of Middle East respiratory syndrome after importations outside the Arabian Peninsula. Epidemics, 16, 27-32. https://doi.org/10.1016/j.epidem.2016.04.002

## Long-term acute care hospital (LTACH) intervention model

Provides analytic framework for investigating patient-focused interventions to prevent transmission in high-risk healthcare facilities and their direct and population-level health impacts and threshold effects. Scenarios(s) Modeled: Intervention scenarios for surveillance and isolation (contact precautions), decolonization drugs, infection treatment, horizontal transmission reduction, and length of stay reduction.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> 1-Toth D, Khader K, Beams A, Samore M (2019). Model-based Assessment of the Effect of Contact Precautions Applied to Surveillance-detected Carriers of Carbapenemase-producing Enterobacteriaceae in Long-term Acute Care Hospitals, Clinical Infectious Diseases 69(Supplement_3), S206–S213. https://doi.org/10.1093/cid/ciz557. 2-Toth D, Samore M, Nelson R (2021), Economic Evaluations of New Antibiotics: The High Potential Value of Reducing Healthcare Transmission Through Decolonization, Clinical Infectious Diseases 72(Supplement_1), S34–S41. https://doi.org/10.1093/cid/ciaa1590.

## Household transmission simulator

Simulate household importation and within-household transmission across a population of households, and intervention effects, e.g. vaccination. Scenarios(s) Modeled: Household importation and transmission with variability in transmissibility and heterogeneity across age groups and vaccination status.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> 1-Toth D, Beams A, Keegan L, Zhang Y, Greene T, Orleans B, Seegert N, Looney A, Alder S, Samore M (2021). High variability in transmission of SARS-CoV-2 within households and implications for control. PLoS ONE 16(11): e0259097. https://doi.org/10.1371/journal.pone.0259097. 2-Manuscripts with age-structured model and vaccination model in preparation

## Airborne release of infectious pathogens simulator

Estimate airborne dispersal, human exposure, and infection probabilities and timelines after a release of a quantity of infectious organisms. Scenarios(s) Modeled: Airborne release and human inhalational exposure and infection, similar the Sverdlovsk anthrax leak of 1979.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> 1-Toth D, Gundlapalli A, Schell W, Bulmahn K, Walton T, Woods C, Coghill C, Gallegos F, Samore M, Adler F (2013). Quantitative models of the dose-response and time course of inhalational anthrax in humans. PLoS Pathog, 9(8), e1003555. https://doi.org/10.1371/journal.ppat.1003555.                          2-Bulmahn K, Canella M, Coghill C, Gallegos F, Gundlapalli A, Schell W, Toth D, Walton T, Woods C (2012). Final Supplementary Risk Assessment for the Boston University National Emerging Infectious Diseases Laboratories, National Institutes of Health. https://www.bu.edu/neidl/files/2013/01/SFEIR-Volume-III.pdf.

## School outbreak simulator

Agent-based simulation of person-to-person transmission at schools over data-based dynamic proximity contact networks. Scenarios(s) Modeled:  Transmission modeled during school hours; can model interventions affecting the contact network and school attendance behavior.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> Toth D, Leecaster M, Pettey W, Gundlapalli A, Gao H, Rainey J, Uzicanin A, Samore M (2015). The role of heterogeneity in contact timing and duration in network models of influenza spread in schools. J R Soc Interface, 12(108), 20150279. https://doi.org/10.1098/rsif.2015.0279.

## Inpatient antibiotic prescribing and effects simulator

Simulate realistic rates and timing / duration / types of antibiotic administration to hospital inpatients and their effects on microbial transmission and infection, and antibiotic stewardship effects. Scenarios(s) Modeled:  Prescribing patterns of different types of antibiotics based on U.S. data; intervention scenarios for reducing prescribing, shortening duration of courses, and altering types of antibiotics used.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> Pending

## Healthcare facility network outbreak simulator

Provides flexible framework for agent-based simulation of outbreaks among in-patients in a generic-but-realistic network of short/long-stay hospitals and nursing homes, as well as interventions to mitigate transmission and inter-facility spread. Scenarios(s) Modeled:  Initial invasion of new pathogen / strain and/or endemic pathogens. Intervention scenarios for patient-targeted efforts including surveillance and isolation (contact precautions), vaccination, and anti-microbial drug treatment.

Contact: Damon Toth (email: Damon.Toth@hsc.utah.edu)

Links:<br> 1-Slayton R, Toth D, Lee B, Tanner W, Bartsch S, Khader K, Wong K, Brown K, McKinnell J, Ray W, Miller L, Rubin M, Kim D, Adler F, Cao C, Avery L, Stone N, Kallen A, Samore M, Huang S, Fridkin S, Jernigan J (2015). Vital Signs: estimated effects of a coordinated approach for action to reduce antibiotic-resistant infections in health care facilities - United States. MMWR Morb Mortal Wkly Rep, 64(30), 826-831. https://doi.org/10.1111/ajt.13555. 2-Toth D, Khader K, Slayton R, Kallen A, Gundlapalli A, O'Hagan J, Fiore A, Rubin M, Jernigan J, Samore M (2017). The potential for interventions in a long-term acute care hospital to reduce transmission of carbapenem-resistant Enterobacteriaceae in affiliated healthcare facilities. Clin Infect Dis, 65(4), 581-587. https://doi.org/10.1093/cid/cix370., 3-Toth D, Keegan L, Samore M, Khader K, O'Hagan J, Yu H, Quintana A, Swerdlow D (2020). Modeling the potential impact of administering vaccines against Clostridioides difficile infection to individuals in healthcare facilities. Vaccine, 38(37), 5927-5932. https://doi.org/10.1016/j.vaccine.2020.06.081.

## PhenoMapper: an interactive toolbox for the visual exploration of phenomics data

TDA tool that can possibly help us to view some trajectory data. Scenarios(s) Modeled: We demonstrate the utility of this new tool on real-world plant (e.g., maize) phenomics datasets.

Contact: Ananth Kalyanaraman (email: ananth@wsu.edu)

Links:<br> https://dl.acm.org/doi/abs/10.1145/3459930.3469511

## Multitask Model to Forecast Patient's Next Unit and Remaining Length of Stay

Length of Stay prediction and unit transfer prediction tool. Scenarios(s) Modeled: In this multi-task learning model, we train the model to predict:Task-1: patient's unit label in next time step. Task-2: patient's remaining length of stay.The model inputs get updated on a daily basis and generates prediction accordingly.

Contact: Ananth Kalyanaraman (email: ananth@wsu.edu)

Links:<br> Preprint ready by June

## Attention-Based Models for Snow-Water Equivalent Prediction

Transformer architectures for spatio-temporal prediction (or synthetic data generation/imputation). Scenarios(s) Modeled: Predicting the SWE value for multiple SNOTEL locations in the Western US using the Attention Models

Contact: Ananth Kalyanaraman (email: ananth@wsu.edu)

Links:<br> https://ojs.aaai.org/index.php/AAAI/article/view/30337

