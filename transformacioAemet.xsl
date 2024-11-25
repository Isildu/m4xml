<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
    <body>
        <table style="border: 1px solid black">
            <tr >
                <th style="text-align:left">Fecha</th>
                <th style="text-align:left">Maxima</th>
                <th style="text-align:left">Minima</th>
                <th style="text-align:left">Prediccion</th>
            </tr>
            <xsl:for-each select="root/prediccion/dia">
            <tr>
                <th><xsl:value-of select="@fecha"></xsl:value-of></th>
                <th><xsl:value-of select="temperatura/maxima"></xsl:value-of></th>
                <th><xsl:value-of select="temperatura/minima"></xsl:value-of></th>
            </tr>
            </xsl:for-each>
        </table>
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>