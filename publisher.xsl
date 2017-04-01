<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    
    <html>
        <head>
            <meta charset="utf-8"></meta>
            <style type="text/css">
            
              h1{
                text-align: center;
                font-weight: bold;
                }
            table{
                background-color: lightblue;
                font-family: verdana;
                font-size: 20px;
                
                }
                tr:hover{
                background-color:#2F4F4F;
                }
            tr:nth-child(even){background-color: #f2f2f2}
            </style>
        </head>
        <body>
               <h1>Yayınevleri</h1>
            <table border="1"> 
                <tr>
                    <td>Ülke</td>
                    <td>Yayınevi Sayısı</td>
                    <td>İsim</td>
                    <td>Kuruluş Tarihi</td>
                    <td>Adres</td>
                    <td>E-mail Adresi</td>
                </tr>
                <xsl:for-each select="publishers/publisher">                
                <tr>
                    <td><xsl:value-of select="@country" ></xsl:value-of></td>
                    <td><xsl:value-of select="publisher_id" ></xsl:value-of></td>
                    <td><xsl:value-of select="name" ></xsl:value-of></td>
                    <td><xsl:value-of select="year" ></xsl:value-of></td>
                    <td><xsl:value-of select="adress/city" ></xsl:value-of> / <xsl:value-of select="adress/district" ></xsl:value-of> / <xsl:value-of select="adress/Street" ></xsl:value-of> / <xsl:value-of select="adress/zipcode" ></xsl:value-of></td>
                    <td><xsl:value-of select="email" ></xsl:value-of></td>
                </tr>
                </xsl:for-each>
            </table>
        
        </body>    
    </html>     
    
</xsl:template>

</xsl:stylesheet>