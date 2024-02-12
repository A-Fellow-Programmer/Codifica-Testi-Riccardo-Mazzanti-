<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<!-- stylesheet è l'elemento radice -->
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns="http://www.w3.org/1999/xhtml">
<!-- istruzioni di elaborazione -->
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<!-- "/" significa che la regola è da applicare su tutto il documento -->
<xsl:template match="/">
    <html>
        <head>
              <title>Diari</title>
              <link href="style.css" type="text/css" rel="stylesheet"/>
              <script src="javascript.js"></script>
        </head>
       <body>
    <div class="container">
        <div class="wrap">
            <div class="slider-container">
                <span id="slider-image-1"></span>
                <span id="slider-image-2"></span>
                <span id="slider-image-3"></span>
                <div class="image-container">
                    <xsl:apply-templates select="//tei:surface/tei:zone/tei:graphic"/>
                    <!--<img src="150.png" class="slider-image" />
                    <img src="159.png" class="slider-image" />
                    <img src="173.png" class="slider-image" />  -->
                </div>
                <div class="button-container">
                    <a href="#slider-image-1" class="slider-change" id="1"></a>
                    <a href="#slider-image-2" class="slider-change" id="2"></a>
                    <a href="#slider-image-3" class="slider-change" id="3"></a>
                </div>
                <div class="button-container2">
                    <a href="#slider-image-1" class="slider-change" id="11"></a>
                    <a href="#slider-image-2" class="slider-change" id="22"></a>
                    <a href="#slider-image-3" class="slider-change" id="33"></a>
                </div>
            </div>
            
            <!-- <div class="x">✖
                <span>drag the spot!</span>
            </div> -->
        </div> <!-- fine wrap item1 del container-->
        <div id="pag1">  <!-- item 2 del container -->
            <xsl:apply-templates select="//tei:div[@facs='#interaPagina1']"/>        
        </div>
         <div id="pag2">  <!-- item3 del container -->
            <xsl:apply-templates select="//tei:div[@facs='#interaPagina2']"/>        
        </div>
        
        <div id="pag3">  <!-- item 4 del container -->
            <xsl:apply-templates select="//tei:div[@facs='#interaPagina3']"/>        
        </div>
        
    </div> <!--  fine container -->
    <div>
        <button id="toggle">Hide THIRD div </button>
        </div>
</body>
</html>
</xsl:template>
<!-- prendo URL delle img diario e le applico dentro lo slider per visualizzarle -->
<xsl:template match="tei:surface/tei:zone/tei:graphic">
    <xsl:element name="img">
        <xsl:attribute name="class">slider-image</xsl:attribute>
        <xsl:attribute name="src"><xsl:apply-templates select="@url"/></xsl:attribute>
    </xsl:element>

</xsl:template>
<!-- inzio riga -->
<xsl:template match="tei:lb">
        <br/>
    <xsl:element name="span">
        <xsl:attribute name="id">
            <xsl:value-of select="@facs"/>
        </xsl:attribute>
        <xsl:value-of select="@n"/>

        </xsl:element>
</xsl:template>

</xsl:stylesheet>