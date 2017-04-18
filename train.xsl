<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <style>
        *{
          font-family:微軟正黑體;
        }
        .row{
          display:flex;
          background-color:rgb(238,238,238);
          padding:0 .5em .5em .5em;
        }
        .row>*{
          flex-grow:1;
          text-align:center;
        }
        .header{
          background-color:rgb(0,128,128);
          font-weight:bold;
          color:white;
          font-size:1.2em;
          padding:0;
        }
        body{
          display:flex;
          justify-content:center;
          align-items:center;
          min-height:100vh;
          padding:0;
          margin:0;
        }

      </style>
    </head>
  <body>
    <div class="container">
      <xsl:for-each select="train_schedule/train">
        <div class="row header">
          <div><xsl:value-of select="type"/>-<xsl:value-of select="number"/></div>
        </div>
        <div class="row">
          <div style="font-weight:bold;"><xsl:value-of select="start_station"/>---></div>
          <div><xsl:value-of select="pass_1"/>---></div>
          <div><xsl:value-of select="pass_2"/>---></div>
          <div><xsl:value-of select="pass_3"/>---></div>
          <div style="font-weight:bold;"><xsl:value-of select="end_station"/></div>
        </div>
        <div class="row">
          <div><xsl:value-of select="Time_start"/></div>
          <div><xsl:value-of select="Time_1"/></div>
          <div><xsl:value-of select="Time_2"/></div>
          <div><xsl:value-of select="Time_3"/></div>
          <div><xsl:value-of select="Time_end"/></div>
        </div>
      </xsl:for-each>
    </div>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>