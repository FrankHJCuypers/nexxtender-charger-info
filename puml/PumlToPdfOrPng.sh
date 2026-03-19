#! /bin/bash
# Processes all puml files
# We generate pdf files.

# For native PDF support, 
# ensure required libraries (Batik and FOP) are in the same directory as your plantuml.jar
# Download https://www.apache.org/dyn/closer.cgi?filename=/xmlgraphics/batik/binaries/batik-bin-1.19.zip&action=download or more recent
# Copy the following files (or more recent) from the zip into the $PLANTUML_HOME directory:
# batik-all-1.9.jar
# fop-transcoder-allinone-2.2.jar
# xml-apis-1.3.04.jar
# xml-apis-ext-1.3.04.jar
# xmlgraphics-commons-2.2.jar

# Only the puml files generate PDF output successfully
java -cp $PLANTUML_HOME/"*" net.sourceforge.plantuml.Run -Sshadowing=false -tpdf -o"../intermediate" *.puml

# The pumlo files contain @startsalt and crash when generating pdf output
java -jar $PLANTUML_JAR "*.pumlo" -tpng -o"../intermediate"



