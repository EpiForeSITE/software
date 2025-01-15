# Example of 15 min presentation

The [index.qmd](index.qmd) file contains an adapted version of a presentation [@gvegayon](https://github.com/gvegayon) gave at the Conference on Complex Systems in Exeter, UK in 2024. The original presentation can be viewed [here](https://ggv.cl/slides/ccs2024).

Some key features of the presentation are:

- Uses the `.incremental` keyword **within the code** to add numbers to the code chunks.
- Uses the `#| code-line-numbers: "|16,17"` chunk option to highlight code lines.
- Shows examples of multi-column slides.

## Requirements

To run this example you will need:

- quarto
- R
- The fontawesome quarto extension. You can add it to the project by running `quarto add quarto-ext/fontawesome`.

To render the presentation you can use the following command:

```bash
quarto render index.qmd
```