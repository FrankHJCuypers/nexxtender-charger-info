# Nexxtender Charger Information

The generated document is an effort to describe the Nexxtender ecosystem.
Currently it focuses on the Bluetooth Low Energy interface of the Nexxtender
chargers.
This is the interface that the Nexxtender Nexxtmove app uses to interact
with the charger.

## Build the pdf
The document is generated from LaTeX input files and diagrams made with PlantUML
and GraphViz dot.

### Build using TexWorks

Using TexWorks 0.6.11 and MikTeX 26.2, the following typesetting preferences were tested:

- Processing tool *pdfLaTex*, with preference settings:
    - program: miktex-pdftex.exe
    - Arguments:
        - $synctexoption
        - -undump=pdfLaTex
        - -shell-escape
        - -enable-pipes
        - $fullname

  Runs pdfLaTex once and opens the resulting pdf in a viewer
- Processing tool *MakeIndex* does nothing because the *Nexxtender.tex* 
  file has no \index{} entries.
- Processing tool *BibTeX*, with preference settings:
    - program: miktex-bibtex.exe
    - Arguments:
        -$basename
        
  Runs BibTex
- Processing tool *pdfLaTeX+MakeIndex+BibTeX*, with preference settings
    - program: texify.exe
    - Arguments:
        - --pdf
        - --tex-option=--shell-escape
        - --tex-option=--enable-pipes
        - --synctex=1
        - --clean
        - $fullname

  Runs texify, which runs pdfLaTeX, MakeIndex and BibTeX the required
  number of times until the generated output is stable.
  When using this processing tool I had many problems running the shell
  scripts in the *Nexxtender.tex* file that execute git commands.
  Although these scripts run successfully with the *pdfLaTeX* processing
  tool, they sometimes run on texify, 
  depending on the options and parameters passed to the git command.
  I could not get it to work.
  
- Processing tool *latexmk pdfLatex+MakeIndex+BibTex*, with preference settings
    - program: latexmk.exe
    - Arguments:
        - -pdf
        - -shell-escape
        - -outdir=output
        - -pv
        - $fullname

  Runs latexmk, which runs pdfLaTeX, MakeIndex and BibTeX the required
  number of times until the generated output is stable.
  It generates the pdf in the output sub directory.
  This works correctly.

### Build using latexmk shell command

Using MikTeX 26.2, the following command will build the pdf:

    latexmk -pdf -shell-escape -outdir=output nexxtender.tex

It generates the pdf in the output sub directory.

### Build using the build.sh script

`./build.sh` runs the complete build.
  It performs the following actions:
    1. Compiles the \*.dot files in the `dot` directory into pdf files in the `intermediate` sub directory. 
    2. Compiles the \*.puml files in the `puml` directory into pdf files in the `intermediate` sub directory. 
    3. Compiles the \*.pumlo files in the `puml` directory into png files in the `intermediate` sub directory.
    4. Compiles the `nexxtender.tex` file into an `output/nexxtender.pdf` 
      using `latexmk -pdf -shell-escape -outdir=output nexxtender.tex`

## License

This project is licensed under the GNU AGPLv3 License. 
See the [LICENSE](LICENSE) file for details.

## Privacy statement
 
See the [PRIVACY](PRIVACY.md) file for details.

## Disclaimer

The writer

- has no link with Powerdale nor Diego.
- had no prior knowledge of most of the components in the Nexxtender ecosystem.
- cannot guarantee the correctness of the information in the generated document.
  