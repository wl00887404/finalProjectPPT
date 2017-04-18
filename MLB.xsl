<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <style>
        img{
          width:5em;
        }
        td{
          text-align:center;
        }
        table{
          width:80%;
          margin:1em auto;
        }
        {
          padding:5rem 0em;
        }
        body>table>tbody>tr:nth-child(1)>td{
          font-size:1.7em;
          font-weight:bold;
        }
        tr:nth-child(1),tr:nth-child(3){
          height:10em;
        }
        tr:nth-child(3)>td:nth-child(2){
          padding:0;
        }
        table table{
          height:10em;
          margin:0;
          width:100%;
        }
        iframe{
        width:100%;
          height:50em;
        }
      </style>
    </head>
  <body>
      <h1>Baseball</h1>
      <xsl:for-each select="mixedteams/baseball">
        <table border="1">
          <xsl:attribute name="style">
            background-color:<xsl:value-of select="BColor"/>;
            color:<xsl:value-of select="Color"/>;
          </xsl:attribute>
          <tr>
            <td colspan="100"><xsl:value-of select="Team"/></td>
          </tr>
          <tr>
            <td>Image</td>
            <td>star</td>
            <td>Coach</td>
            <td>League</td>
          </tr>
          <tr>
            <td>
              <img><xsl:attribute name="src"><xsl:value-of select="Image"/></xsl:attribute></img>
            </td>
            <td>
              <table border="1">
                <xsl:attribute name="style">
                  color:<xsl:value-of select="Color"/>;
                </xsl:attribute>
                <tr>
                  <td><xsl:value-of select="star/name"/></td>
                  <td>Birth:<xsl:value-of select="star/birth"/></td>
                </tr>
              </table>
            </td>
            <td><xsl:value-of select="Coach"/></td>
            <td><xsl:value-of select="League"/></td>
          </tr>
          <tr>
            <td colspan="100">
            <iframe>
                <xsl:attribute name="src"><xsl:value-of select="Video"/></xsl:attribute>
            </iframe>
            </td>
          </tr>
        </table>
      </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>