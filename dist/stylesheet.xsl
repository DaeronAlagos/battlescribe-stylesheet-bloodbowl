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
                    body {
  font-family: 'EB Garamond', serif; }

table.players {
  width: 100%;
  background-color: #9e9e9e; }
  table.players tr:nth-last-of-type(odd) {
    background-color: #b3b3b3; }
  table.players tr:nth-of-type(even) {
    background-color: #dddddd; }

.container {
  margin: 0 30px; }

.header {
  width: 100%; }

.title {
  float: left;
  width: 60%; }

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
	<xsl:template match="bs:force">

<div class="container"> <!-- Container -->

        <div class="header">
            <div class="title">Team Draft List</div> <!-- Title -->
            <div class="team">
                <table>
                    <tr>
                        <td>Team Name</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Team Roster</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Coach</td>
                        <td></td>
                    </tr>
                </table>
            </div> <!-- Team Name -->
        </div> <!-- Header -->
        <div>
            <table class="players">
                <thead>
                <tr>
                    <th></th>
                    <th>Name</th>
                    <th>Position</th>
                    <th>MA</th>
                    <th>ST</th>
                    <th>AG</th>
                    <th>PA</th>
                    <th>AV</th>
                    <th>Skills</th>
                    <th>Hiring Fee</th>
                    <th>Unspent SPP</th>
                    <th>MNG</th>
                    <th>NI</th>
                    <th>TR</th>
                    <th>Current Value</th>
                </tr>
                </thead>
                <tbody>
                <xsl:for-each select=".//bs:selection[@type='model']">
                    <tr>
                       <td> <!-- number -->
                           1
                       </td>
                       <td> <!-- name -->
                           
                       </td>
                       <td> <!-- position -->
                           <xsl:value-of select="@name" />
                       </td>
                       <td> <!-- Movement -->
                          <xsl:value-of select=".//bs:characteristic[@name='MA']/." /> 
                       </td>
                       <td> <!-- Strength -->
                          <xsl:value-of select=".//bs:characteristic[@name='ST']/." /> 
                       </td>
                       <td> <!-- Agility -->
                          <xsl:value-of select=".//bs:characteristic[@name='AG']/." /> 
                       </td>
                       <td> <!-- Passing -->
                          <xsl:value-of select=".//bs:characteristic[@name='PA']/." /> 
                       </td>
                       <td> <!-- Armor Value -->
                          <xsl:value-of select=".//bs:characteristic[@name='AV']/." /> 
                       </td>
                       <td> <!-- Skills -->
                           
                       </td>
                       <td>
                          <xsl:value-of select=".//bs:cost[@name=' TV']/@value" /> 
                       </td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>

                    </tr>
                    
                </xsl:for-each>
                </tbody>
            </table> <!-- Roster -->
        </div> <!-- Body -->
        <div>
            <div></div> <!-- Copyright -->
            <div></div> <!-- Treasury -->
        </div> <!-- Footer -->
    
    </div>

</xsl:template>

	<!-- endinject -->

</xsl:stylesheet>