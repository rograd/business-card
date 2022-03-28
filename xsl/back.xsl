<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8" />
    <xsl:template match="Card">
        <html>
            <head>
                <title>
                    <xsl:value-of select="local-name()" />
                    &#8226; Back
                </title>
                <link rel="stylesheet" href="css/back.css" />
            </head>
            <body>
                <main>
                    <img alt="logo" src="img/logo.png" />
                    <h1>
                        <xsl:value-of select="Company" />
                    </h1>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>