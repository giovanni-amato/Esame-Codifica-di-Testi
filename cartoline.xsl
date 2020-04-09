<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="/teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
                <link href="https://fonts.googleapis.com/css?family=Cinzel&amp;display=swap" rel="stylesheet"/> 
                <link href="https://fonts.googleapis.com/css?family=Amiri&amp;display=swap" rel="stylesheet"/> 
                <link rel="stylesheet" type="text/css" href="style.css"/>
                <script src="function.js" charset="utf-8"> </script>
            </head>
            <body onload=  "document.getElementById('defaultOpen1').click(); 
                            document.getElementById('defaultOpen2').click();
                            document.getElementById('defaultOpen3').click();">

                <ul id="navbar">
                    <li><a href="#Titolo">Home</a></li>
                    <li><a href="#Intro">Introduzione</a></li>
                    <li><a href="#Titolo36">Cartolina 36</a></li>
                    <li><a href="#Titolo72">Cartolina 72</a></li>
                    <li><a href="#Titolo170">Cartolina 170</a></li>
                    <li><a href="#About">About</a></li>
                  </ul>

                <div id="Titolo">
                    <h1>L'amore ai tempi della Grande Guerra</h1>
                </div>

                <!-- Introduzione -->

                <div id="Introduzione">
                    <h2 id="Intro">Introduzione</h2>
                    <p><xsl:value-of select="/teiCorpus/tei:teiHeader[@xml:id='generale']/tei:encodingDesc/tei:projectDesc"/></p>
                    <p><xsl:value-of select="/teiCorpus/tei:teiHeader[@xml:id='generale']/tei:fileDesc/tei:sourceDesc/tei:listRelation/tei:p/tei:interp"/></p>
                </div>

                <div class="striscia" id="striscia1">
                </div>

                <!-- CARTOLINA 36 -->

                <div id="Cartolina36">
                    <h2 id="Titolo36">
                        <xsl:value-of select="/teiCorpus/TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/> 
                    </h2>    
                    <xsl:element name="div">
                        <xsl:attribute name="class">text</xsl:attribute>

                            <!-- creazione tabella contenente le informazioni generali (36)-->
                            <div class="tab1">
                                <button class="tablinks1" onclick="openTab1(event, 'Desc1')" id="defaultOpen1">Descrizione del fronte</button>
                                <button class="tablinks1" onclick="openTab1(event, 'Stamp1')">Stampe</button>
                                <button class="tablinks1" onclick="openTab1(event, 'Info1')">Altre informazioni</button>
                            </div>

                            <div id="Desc1" class="tabcontent1">
                                <p><xsl:value-of select="/teiCorpus/TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='Fronte36']/tei:figure/tei:figDesc/tei:desc"/></p>
                            </div>

                            <div id="Stamp1" class="tabcontent1">
                                <xsl:apply-templates select="/teiCorpus/TEI[@n='1']//tei:div[@xml:id='Retro36']/tei:div[@xml:id='stamparetro36']"/>
                            </div>

                            <div id="Info1" class="tabcontent1">
                                <xsl:apply-templates select="/teiCorpus/TEI[@n='1']/tei:teiHeader/tei:profileDesc/tei:correspDesc"/>
                                <xsl:apply-templates select="/teiCorpus/TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl"/>
                                <xsl:apply-templates select="/teiCorpus/TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='GC']"/>
                                <h4>Luoghi menzionati:</h4>
                                <xsl:apply-templates select="/teiCorpus/TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place"/>
                            </div>

                        <!-- testo della cartolina (36) -->
                        <h3 id="h3t1">Testo della cartolina</h3>
                        <p><xsl:value-of select="/teiCorpus/TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='Retro36']/tei:div[@xml:id='Dateline36']/tei:dateline"/></p>
                        <p><xsl:value-of select="/teiCorpus/TEI[@n='1']//tei:div[@xml:id='Retro36']/tei:div[@xml:id='testoretro36']/tei:opener"/></p>
                        <xsl:apply-templates select="/teiCorpus/TEI[@n='1']//tei:div[@xml:id='Retro36']/tei:div[@xml:id='testoretro36']"/>
                    </xsl:element> 

                    <!-- sezione per l'immagine del fronte (36) -->
                    <div id="F36">              
                        <xsl:element name="img">
                            <xsl:attribute name="class">image</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="/teiCorpus/TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='Fronte36']/tei:figure/tei:graphic/@url"/></xsl:attribute>
                        </xsl:element>
                    </div> 

                    <!-- sezione per l'immagine del retro (36) -->
                    <div id="R36">
                        <xsl:element name="img">
                            <xsl:attribute name="class">image2</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="/teiCorpus/TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='Retro36']/tei:figure/tei:graphic/@url"/></xsl:attribute>
                        </xsl:element>
                    </div> 
                    
                </div>

                <!-- STRISCIA 1 -->

                <div class="striscia" id="striscia1">
                </div>

                 <!-- CARTOLINA 72 -->

                <div id="Cartolina72">
                    <h2 id="Titolo72">
                        <xsl:value-of select="/teiCorpus/TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                    </h2>       
                    <xsl:element name="div">
                        <xsl:attribute name="class">text</xsl:attribute>
                        <!-- creazione tabella contenente le informazioni generali (72) -->
                        <div class="tab2">
                            <button class="tablinks2" onclick="openTab2(event, 'Desc2')" id="defaultOpen2">Descrizione del fronte</button>
                            <button class="tablinks2" onclick="openTab2(event, 'Stamp2')">Stampe</button>
                            <button class="tablinks2" onclick="openTab2(event, 'Info2')">Altre informazioni</button>
                        </div>

                        <div id="Desc2" class="tabcontent2">
                            <h4>Titolo originale:</h4>
                            <p><xsl:value-of select="/teiCorpus/TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='testofronte72']/tei:p"></xsl:value-of></p>
                            <p><xsl:value-of select="/teiCorpus/TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='Fronte72']/tei:figure/tei:figDesc/tei:desc"/></p>
                        </div>

                        <div id="Stamp2" class="tabcontent2">
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='2']//tei:div[@xml:id='Retro72']/tei:div[@xml:id='stamparetro72']"/>
                        </div>

                        <div id="Info2" class="tabcontent2">
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='2']/tei:teiHeader/tei:profileDesc/tei:correspDesc"/>
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl"/>
                            <h4>Informazioni sull'autore dell'immagine della cartolina:</h4>
                            <p><xsl:value-of select="/teiCorpus/TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:author"/>
                                era un <xsl:value-of select="/teiCorpus/TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='JG']/tei:occupation/tei:desc"/>
                                nato il <xsl:value-of select="/teiCorpus/TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='JG']/tei:birth"/>.
                                Morì il <xsl:value-of select="/teiCorpus/TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='JG']/tei:death"/>.
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='GC']"/></p>
                            <h4>Luoghi menzionati:</h4>
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace"/>
                        </div>

                        <!-- testo della cartolina (72) -->
                        <h3 id="h3t2">Testo della cartolina</h3>
                        <p><xsl:value-of select="/teiCorpus/TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='Retro72']/tei:div[@xml:id='Dateline72']/tei:dateline"/></p>
                        <xsl:apply-templates select="/teiCorpus/TEI[@n='2']//tei:div[@xml:id='Retro72']/tei:div[@xml:id='testoretro72']"/>
                    </xsl:element> 

                    <!-- sezione per l'immagine del fronte (72) -->
                    <div id="F72">              
                        <xsl:element name="img">
                            <xsl:attribute name="class">image</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="/teiCorpus/TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='Fronte72']/tei:figure/tei:graphic/@url"/></xsl:attribute>
                        </xsl:element>
                    </div> 

                    <!-- sezione per l'immagine del retro (72) -->
                    <div id="R72">
                        <xsl:element name="img">
                            <xsl:attribute name="class">image2</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="/teiCorpus/TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='Retro72']/tei:figure/tei:graphic/@url"/></xsl:attribute>
                        </xsl:element>
                    </div>
                </div>

                <!-- STRISCIA 2 -->

                <div class="striscia" id="striscia1">
                </div>

                 <!-- CARTOLINA 170 -->

                <div id="Cartolina170">
                    <h2 id="Titolo170">
                        <xsl:value-of select="/teiCorpus/TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                    </h2>      
                    <xsl:element name="div">
                        <xsl:attribute name="class">text</xsl:attribute>

                        <!-- creazione tabella contenente le informazioni generali (170) -->
                        <div class="tab3">
                            <button class="tablinks3" onclick="openTab3(event, 'Desc3')" id="defaultOpen3">Descrizione del fronte</button>
                            <button class="tablinks3" onclick="openTab3(event, 'Stamp3')">Stampe</button>
                            <button class="tablinks3" onclick="openTab3(event, 'Info3')">Altre informazioni</button>
                        </div>

                        <div id="Desc3" class="tabcontent3">
                            <p><xsl:value-of select="/teiCorpus/TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='Fronte170']/tei:figure/tei:figDesc/tei:desc"/></p> 

                            <!-- testo della cartolina - fronte (170) -->
                            <h3>Testo della cartolina - fronte</h3>
                            <p><xsl:value-of select="/teiCorpus/TEI[@n='3']//tei:div[@xml:id='Fronte170']/tei:div[@xml:id='testofronte170']/tei:opener"/></p>
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='3']//tei:div[@xml:id='Fronte170']/tei:div[@xml:id='testofronte170']"/>
                        </div>

                        <div id="Stamp3" class="tabcontent3">
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='3']//tei:div[@xml:id='Retro170']/tei:div[@xml:id='stamparetro170']"/>
                        </div>

                        <div id="Info3" class="tabcontent3">
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='3']/tei:teiHeader/tei:profileDesc/tei:correspDesc"/>
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl"/>
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='GC']"/>
                            <h4>Luoghi menzionati:</h4>
                            <xsl:apply-templates select="/teiCorpus/TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace"/>
                        </div>

                        <!-- testo della cartolina (170) -->
                        <h3 id="h3t3">Testo della cartolina - retro</h3>
                        <p><xsl:value-of select="/teiCorpus/TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='Retro170']/tei:div[@xml:id='Dateline170']/tei:dateline"/></p>
                        <p><xsl:value-of select="/teiCorpus/TEI[@n='3']//tei:div[@xml:id='Retro170']/tei:div[@xml:id='testoretro170']/tei:opener"/></p>
                        <xsl:apply-templates select="/teiCorpus/TEI[@n='3']//tei:div[@xml:id='Retro170']/tei:div[@xml:id='testoretro170']"/>
                    </xsl:element>  

                    <!-- sezione per l'immagine del fronte (170) -->
                    <div id="F170">              
                        <xsl:element name="img">
                            <xsl:attribute name="class">image</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="/teiCorpus/TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='Fronte170']/tei:figure/tei:graphic/@url"/></xsl:attribute>
                        </xsl:element>
                    </div> 

                    <!-- sezione per l'immagine del retro (170) -->
                    <div id="R170">
                        <xsl:element name="img">
                            <xsl:attribute name="class">image</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="/teiCorpus/TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='Retro170']/tei:figure/tei:graphic/@url"/></xsl:attribute>
                        </xsl:element>
                    </div> 
                </div>

                <!-- STRISCIA 3 -->

                <div class="striscia" id="striscia1">
                </div>

                <!-- About -->
                <div id="About">
                    <h2 id="Titoloabout">About</h2>


                <xsl:element name="div">
                    <xsl:attribute name="class">sezioniabout</xsl:attribute>
                    <p class="titoliabout">Trascritto da:</p>
                        <xsl:for-each select="teiCorpus/tei:teiHeader[@xml:id='generale']/tei:fileDesc/tei:titleStmt/tei:respStmt[@xml:id='Studenti']/tei:name">
                            <p class="testoabout"><xsl:value-of select="current()"/></p>
                        </xsl:for-each>
                </xsl:element>
           
                <xsl:element name="div">
                    <xsl:attribute name="class">sezioniabout</xsl:attribute>
                    <p class="titoliabout">Responsabili scientifici:</p>
                        <xsl:for-each select="teiCorpus/tei:teiHeader[@xml:id='generale']/tei:fileDesc/tei:editionStmt/tei:respStmt">
                            <p class="testoabout"><strong><xsl:value-of select="current()/tei:resp"/></strong></p>
                            <p class="testoabout"><xsl:value-of select="current()/tei:name"/></p>
                        </xsl:for-each>
                </xsl:element>

                <xsl:element name="div">
                    <xsl:attribute name="class">sezioniabout</xsl:attribute>
                    <p class="titoliabout">Organizzazioni:</p>
                            <p class="testoabout"><xsl:value-of select="teiCorpus/tei:teiHeader[@xml:id='generale']/tei:fileDesc/tei:publicationStmt/tei:address/tei:addrLine"/></p>
                            <p class="testoabout"><xsl:value-of select="teiCorpus/tei:teiHeader[@xml:id='generale']/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/></p>
                </xsl:element>
                </div>

            </body>
            </html> 
    </xsl:template>

    <!-- TEMPLATE -->

    <!-- template comuni ad ogni cartolina-->


    <!-- template per le corrispondenze-->
    <xsl:template match="//tei:correspDesc">
        <h4>Corrispondenza:</h4>
        <p>Inviata da <xsl:value-of select="current()/tei:correspAction[@type='sent']/tei:persName"/>
        a <xsl:value-of select="current()/tei:correspAction[@type='received']/tei:persName"/>
        il <xsl:value-of select="current()/tei:correspAction[@type='sent']/tei:date"/>
        da <xsl:value-of select="current()/tei:correspAction[@type='sent']/tei:placeName"/>
        </p>
    </xsl:template>


    <!-- template editore -->
    <xsl:template match="//tei:bibl">
        <h4>Editore:</h4>
        <p><xsl:value-of select="current()/tei:publisher/tei:orgName"/></p>
    </xsl:template>


    <!-- template biografia Giovanni Coliola -->
    <xsl:template match="tei:person[@xml:id='GC']">
        <h4>Cenni biografici su Giovanni Coliola:</h4>
        <p>Era un <xsl:value-of select="current()/tei:occupation/tei:desc"/>.
            Nacque nel <xsl:value-of select="current()/tei:birth"/>
            e morì nel <xsl:value-of select="current()/tei:death"/>.
            Nella cartolina si firma come <xsl:value-of select="current()/tei:persName/tei:forename/tei:choice/tei:orig"/>.
        </p>
    </xsl:template>


    <!-- template luoghi menzionati per ogni cartolina -->
    <xsl:template match="/teiCorpus/TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place
    |/teiCorpus/TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place
    |/teiCorpus/TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place">
        <xsl:for-each select="current()/tei:placeName">
            <p><xsl:value-of select="current()"/></p>
        </xsl:for-each>
    </xsl:template>


    <!-- template testo delle cartoline -->
    <xsl:template match="/teiCorpus/TEI[@n='1']//tei:div[@xml:id='Retro36']/tei:div[@xml:id='testoretro36']
    |/teiCorpus/TEI[@n='2']//tei:div[@xml:id='Retro72']/tei:div[@xml:id='testoretro72']
    |/teiCorpus/TEI[@n='3']//tei:div[@xml:id='Retro170']/tei:div[@xml:id='testoretro170']">
        <xsl:for-each select="current()/tei:p">
            <p class="content"><xsl:value-of select="current()"/></p>
        </xsl:for-each>    
    </xsl:template>


     <!-- template per le stampe di ogni cartolina -->
     <xsl:template match="/teiCorpus/TEI[@n='1']//tei:div[@xml:id='Retro36']/tei:div[@xml:id='stamparetro36']
     |/teiCorpus/TEI[@n='2']//tei:div[@xml:id='Retro72']/tei:div[@xml:id='stamparetro72']
     |/teiCorpus/TEI[@n='3']//tei:div[@xml:id='Retro170']/tei:div[@xml:id='stamparetro170']">
        <xsl:for-each select="current()/tei:p">
            <p><xsl:value-of select="current()"/></p>
        </xsl:for-each>    
    </xsl:template>


    <!-- template per la cartolina 170-->

    <!-- template testo della cartolina Fronte n.170 -->
    <xsl:template match="/teiCorpus/TEI[@n='3']//tei:div[@xml:id='Fronte170']/tei:div[@xml:id='testofronte170']">
        <xsl:for-each select="current()/tei:p">
            <p class="content"><xsl:value-of select="current()"/></p>
        </xsl:for-each>    
    </xsl:template>




</xsl:stylesheet> 
