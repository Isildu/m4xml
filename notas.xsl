<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
    <body>
        <table style="border: 5px solid black">
            <tr>
                <th style="text-align:left ">Nombre</th>
                <th style="text-align:left ">Apellidos</th>
                <th style="text-align:left ">Telefono</th>
                <th style="text-align:left ">Repetidor</th>
                <th style="text-align:left ">Nota Practica</th>
                <th style="text-align:left ">Nota Examen</th>
                <th style="text-align:left ">Nota Total</th>
            </tr>
            <xsl:for-each select="Estudiantes/Estudiante">
            <tr>
                <td><xsl:value-of select="Nombre"></xsl:value-of></td>
                <td><xsl:value-of select="Apellidos"></xsl:value-of></td>
                <td><xsl:value-of select="Telefono"></xsl:value-of></td>
                <td><xsl:value-of select="Repetidor"></xsl:value-of></td>
                <td><xsl:value-of select="NotaPractica"></xsl:value-of></td>
                <td><xsl:value-of select="NotaExamen"></xsl:value-of></td>
                <td><xsl:value-of select="(NotaPractica + NotaExamen) div 2"></xsl:value-of></td>

                <xsl:choose>
                    <xsl:when test="Apellidos =''"></xsl:when>
                </xsl:choose>
            </tr>
            </xsl:for-each>
        </table>
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>