# Readiness scale

During our meetings with CFA leadership, we started a discussion about how to categorize/classify our tools in terms of readiness. The key idea is to be able to identify what pieces of software or methods are ready for a public health response.

The Technology Readiness Scale developed by NASA serves as a baseline for what we can use in our project. The main drawback of NASA's scale is that is mostly designed/thought for hardware and not software. However, we can adapt it to our needs. 

## Technology Readiness Levels [TRL] in software

The following figure from Lavin et al. (2022) shows how Machine Learning Technology Readiness Levels [MLTRL] can be used to assess the readiness of machine learning systems:

![MLTRL spans research (red) through prototyping (orange), productization (yellow), and deployment (green) (Lavin et al., 2022)](https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fs41467-022-33128-9/MediaObjects/41467_2022_33128_Fig1_HTML.png?as=webp)

What's clear from all versions of the TRL is that:

- Level 1 is reserved for basic research.
- Level 8 is for fully operational (tested and documented) technologies.
- Level 9 is reserved for activities that are actively used in real-world scenarios (deployed)

All other levels are fuzzy as they depend on the context of the technology being assessed.

## Our approach

From the perspective of tools and methods for public health applications, we can tailor the TRL to reflect the following:

- Is available to the public?
- Is written as a function?
- Is it documented?
- Is it tested?
- Is it bundled as a package/library?
- Can it be installed with a package manager, e.g., `R CMD INSTALL` or `pip install`?
- Has it been used with real data?
- Has it been used in a real-world scenario, e.g., during a public health emergency?

Potential levels could be:

1. **Concept**: The idea is still in the concept stage. It may be a white paper or a presentation.
2. **Prototype**: The idea has been implemented as a function or a script. It may not be documented or tested.
3. **Peer reviewed**: The idea has been reviewed by peers and published in a journal or conference.
4. **Rough package**: The idea has been implemented as a package/library but may not be documented or tested.
5. **Documented package**: The package/library has been documented but may not be tested.
6. **Tested package**: The package/library has been tested but may not be used with real data.
7. **Real data**: The package/library has been used with real data.
8. **Public**: The package/library is readily available to the public.
9. **Real-world scenario**: The package/library has been used in a real-world scenario, e.g., during a public health emergency.


## Sources

- Wikipedia's article on [Readiness](https://en.wikipedia.org/w/index.php?title=Technology_readiness_level&oldid=1240341242#cite_note-NASA_to_EU-1).
- Department of Defense's [Technology Readiness Assessment Guide (June 2023)](https://www.cto.mil/wp-content/uploads/2023/07/TRA-Guide-Jun2023.pdf).
- NASA's table of [Technology Readiness Levels](https://www.nasa.gov/wp-content/uploads/2017/12/458490main_trl_definitions.pdf?emrc=da53fb) (and [this link](https://esto.nasa.gov/trl) also).
- Lavin, A., Gilligan-Lee, C.M., Visnjic, A. et al. Technology readiness levels for machine learning systems. Nat Commun 13, 6039 (2022). <https://doi.org/10.1038/s41467-022-33128-9>
- GAO's Technology Readiness Assessment Guide (GAO-20-48G; January 2020) [PDF](https://www.gao.gov/assets/gao-20-48g.pdf).