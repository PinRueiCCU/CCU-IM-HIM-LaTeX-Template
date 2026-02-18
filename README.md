# National Chung Cheng University Information Management Thesis / Dissertation LaTeX Template<br>National Chung Cheng University Health Information Management Thesis / Dissertation LaTeX Template

This README is written for first-time users.
You can follow it step by step and build your thesis PDF without deep LaTeX knowledge.

## 1. What this template does
- Provides a ready thesis structure: cover, abstracts, TOC, chapters, references, and appendix.
- Uses style settings aligned with `format.pdf`.
- Uses `biblatex-apa` with `biber` for references.

## 2. What you need before building

### Tools
You need these commands available in your terminal:
- `xelatex`
- `biber`

### Fonts
The class performs strict checks. Build will stop if fonts are missing.
- English: `Times New Roman`
- Chinese: `BiauKai` or `DFKai-SB`

## 3. Fast start
1. Open this project folder.
2. Edit `ccusetup.tex` and replace title, name, advisor, and date.
3. Edit chapter content under `sections/`.
4. Run these four commands in the project root:

```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

5. You will get `main.pdf`.

## 4. Files you will edit most often
- `ccusetup.tex`: cover and metadata.
- `frontpages/acknowledgement.tex`: acknowledgement.
- `frontpages/abstract.tex`: Chinese and English abstracts.
- `sections/*.tex`: chapter content.
- `backpages/references.bib`: bibliography entries.
- `backpages/appendix.tex`: appendix content.

## 5. How to write references

### Two required rules
- Every entry must have `langid`.
- Chinese entries should add `sortkey` for stable ordering.

### Example

```bibtex
@article{chen2021smarthealth,
  author  = {陳怡君 and 林信宏},
  title   = {智慧醫療系統之資料治理架構研究},
  journal = {資訊管理學報},
  year    = {2021},
  langid  = {chinese},
  sortkey = {16-11-10-chen}
}
```

### Important
Whenever you edit `.bib`, run the full build sequence again:
`xelatex -> biber -> xelatex -> xelatex`.

## 6. Optional features (all disabled by default)

### Show keyword lines in abstracts
Enable in `main.tex`:

```tex
\showkeywords
```

Disable with:

```tex
\hidekeywords
```

### Enable denotation page
Uncomment in `main.tex`:

```tex
\input{frontpages/denotation}
```

### Generate spine and back cover pages
Add in `main.tex`:

```tex
\makespine
\makebackcover
```

## 7. Format
- A4 paper.
- Margins: `2cm` on all sides.
- Page number position: `1cm` above the bottom edge.
- Body text: 12pt, line spacing 1.5.
- Chapter heading format in Chinese mode: `第X章、標題`.
- Figure/table numbering uses dotted format like `1.1`.

## 8. Common errors and fixes

### Error: `Please (re)run Biber on the file: main`
Fix: run the full four-step build sequence again.

### Error: missing font
Fix: install `Times New Roman` and `BiauKai/DFKai-SB`, then rebuild.

### TOC/LOF/LOT page numbers are wrong
Fix: run `xelatex main.tex` one or two more times.

### In-text citation exists, but bibliography list is empty
Fix: check your `.bib` entry fields, especially `langid`.

## 9. Project structure

```text
.
├── main.tex
├── ccuthesis.cls
├── ccusetup.tex
├── format.pdf
├── frontpages/
├── sections/
├── backpages/
│   ├── appendix.tex
│   └── references.bib
└── figures/
```

## 10. Optional cleanup of build files
If the folder looks messy, you can remove these intermediate files:
- `*.aux` `*.bcf` `*.bbl` `*.blg`
- `*.log` `*.out` `*.run.xml`
- `*.toc` `*.lof` `*.lot`

<<<<<<< HEAD
## 11. Acknowledgements
This template is based on [anlit75/CCU-Thesis-LaTeX-Template](https://github.com/anlit75/CCU-Thesis-LaTeX-Template), and special thanks to [anlit75](https://github.com/anlit75) for his contribution, which made this template possible.

## 12. License
=======
## 11. License
>>>>>>> c30a848 (Initial public release: CCU thesis LaTeX template)
This project is under the `MIT License`. See `LICENSE`.
