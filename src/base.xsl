<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:bs="http://www.battlescribe.net/schema/rosterSchema" 
    xmlns:exslt="http://exslt.org/common" 
    extension-element-prefixes="exslt">
    
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="bs:roster/bs:forces">
        
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>

        <html lang="en">

            <head>
                <style>
                    <!-- inject:../build/style.css -->
                    <!-- contents of html partials will be injected here -->
                    <!-- endinject -->
                </style>
        
                <title>Bloodbowl Roster</title>
        
            </head>

            <body>
                
                <xsl:apply-templates select="bs:force"/>

            </body>

        </html>

    </xsl:template>

	<!-- inject:roster.xsl -->
	<!-- contents of html partials will be injected here -->
	<!-- endinject -->

</xsl:stylesheet>