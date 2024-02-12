# Codifica-Testi-Riccardo-Mazzanti-
Repository per il corso di Codifica di Testi
Progetto svolto tramite Linux quindi alcuni comandi sono stati modificati leggermente: " devo usare ':' in linux, mentre ';' in windows. "

validazione tramite xerces, il file+dtd deve essere all'interno della stessa cartella, e stiamo usando LINUX: 

java -cp .:xml-apis.jar:xercesImpl.jar:xercesSamples.jar dom.Counter -v progetto.xml

validazione con xmllint: 

xmllint --valid progetto.xml

per la creazione dell'html è stato usato saxonica 12.3, utilizzando il comando:
java -jar '/home/user/Scrivania/Tools Codifica/SaxonHE12-3J/saxon-he-12.3.jar'  -s:progetto.xml -xsl:progetto.xsl -o:nontext.html
