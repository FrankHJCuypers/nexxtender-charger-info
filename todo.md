# Convert gaai mediawiki page to LaTeX

- Clone the https://github.com/FrankHJCuypers/gaai.wiki.git repo
- Run `pandoc -r mediawiki -w latex -o test.tex --standalone Nexxtender-Charger-Information.mediawiki`
- In the generated `test.tex`:
    - fill in the \author{}, \date{} and \title{} fields.
    - replace ≥ with \ensuremath{\ge}
    - replace ≤ with \ensuremath{\le}
    - replace  √ with $\checkmark$
    - remove \tightlist commnads. What does it do?
    - add \maketitle just after \begin{document}



File structure recommended by https://admin.kuleuven.be/icts/english/research/dissemination/latex/latex-modular:
- root: main.tex, preamble.tex, bibliography.bibliography
- chapters: chapter1.tex etc...
- figures: all kind of figures
- tables: all kind of table1.tex
- appendices
- output: all generated files


# Todo
- Sync with last master version of Gaai.wiki.
  Current version is based on master (300d31bb7d333fc2e0f9d298c01891b166168864), not origin/master!!
- Better placement of figures and tables. Now they sometimes occur after several pages.

## Mermaid

- npm install -g @mermaid-js/mermaid-cli for the markdown mermaid plugin
- TeXworks Edit->Preferences->TypeSetting->Processing tools->pdfLaTeX+Makeindex+BibTeX->Arguments->add "--tex-option=--shell-escape" as first argument to the texify.exe program

The mermaid part still fails, fix later.

## Plantuml

The \usepackage{plantuml} package requires LuaLatex. 
So select the LuaLaTeX+Makeindex+BibTeX typesetting and add the --tex-option=--shell-escapesetting.

Also fails.

So I convert puml to pdf and store the pdf.
For native PDF support, ensure required libraries (Batik and FOP) are in the same directory as your plantuml.jar

# Prerequisites
