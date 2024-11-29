<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
    <body>
        <table style="border: 5px solid black">
            <tr >
                <th style="text-align:left ">Fecha</th>
                <th style="text-align:left ">Maxima</th>
                <th style="text-align:left ">Minima</th>
                <th style="text-align:left ">Prediccion</th>
            </tr>
            <xsl:for-each select="root/prediccion/dia">
            <tr>
                <td><xsl:value-of select="@fecha"></xsl:value-of></td>
                <td><xsl:value-of select="temperatura/maxima"></xsl:value-of></td>
                <td><xsl:value-of select="temperatura/minima"></xsl:value-of></td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>