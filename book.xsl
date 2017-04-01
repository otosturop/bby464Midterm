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
                font-size: 45px;
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
               <h1>Kitaplar</h1>
            <table border="1"> 
                <tr>
                    <td>Kategori</td>
                    <td>Kitap Sayısı</td>
                    <td>Kitap ismi</td>
                    <td>Yazar Ad-Soyad</td>
                    <td>Yayınevi</td>
                    <td>Yayın Tarihi</td>
                    <td>ISBN Numarası</td>
                </tr>
                <xsl:for-each select="books/book">                
                <tr>
                    <td><xsl:value-of select="@category" ></xsl:value-of></td>
                    <td><xsl:value-of select="book_id" ></xsl:value-of></td>
                    <td><xsl:value-of select="name" ></xsl:value-of></td>
                    <td><xsl:value-of select="author"></xsl:value-of></td>
                    <td><xsl:value-of select="publisher" ></xsl:value-of></td>
                    <td><xsl:value-of select="year" ></xsl:value-of></td>
                    <td><xsl:value-of select="isbn" ></xsl:value-of></td>
                </tr>
                </xsl:for-each>
            </table>
        
        </body>    
    </html>     
    
</xsl:template>

</xsl:stylesheet>