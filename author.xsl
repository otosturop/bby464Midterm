<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    
    <html>
        <head>
            <meta charset="utf-8"></meta>
            <style type="text/css">
            
              h1{
                margin: 20px 10px 10px 400px;
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
               <h1>Yazarlar</h1>
            <table border="1"> 
                <tr>
                    <td>Ülke</td>
                    <td>Yazar Sayısı</td>
                    <td>İsim</td>
                    <td>Doğum Tarihi</td>
                    <td>Cinsiyet</td>
                    <td>Medeni Hali</td>
                </tr>
                <xsl:for-each select="authors/author">                
                <tr>
                    <td><xsl:value-of select="@country" ></xsl:value-of></td>
                    <td><xsl:value-of select="author_id" ></xsl:value-of></td>
                    <td><xsl:value-of select="name" ></xsl:value-of></td>
                    <td><xsl:value-of select="birth_date/day" ></xsl:value-of> / <xsl:value-of select="birth_date/month" ></xsl:value-of> / <xsl:value-of select="birth_date/year" ></xsl:value-of></td>
                    <td><xsl:value-of select="gender" ></xsl:value-of></td>
                    <td><xsl:value-of select="married_status" ></xsl:value-of></td>
                </tr>
                </xsl:for-each>
            </table>
        
        </body>    
    </html>     
    
</xsl:template>

</xsl:stylesheet>