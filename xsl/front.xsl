<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8" />
    <xsl:template match="Card">
        <html>
            <head>
                <title>
                    <xsl:value-of select="local-name()" />
                    &#8226; Front
                </title>
                <link rel="stylesheet" href="css/front.css" />
            </head>
            <body>
                <main>
                    <header>
                        <div>
                            <h1>
                                <xsl:value-of select="Company" />
                            </h1>
                            <h3>
                                <xsl:value-of select="FullName" />
                            </h3>
                        </div>
                        <img alt="logo" src="img/logo.png" />
                    </header>
                    <section id="services">
                        <h2>
                            <xsl:value-of select="Services/@caption" />
                        </h2>
                        <ul>
                            <xsl:for-each select="Services/Service">
                                <li>
                                    <xsl:value-of select="." />
                                </li>
                            </xsl:for-each>
                        </ul>
                    </section>
                    <section id="contact">
                        <ul>
                            <li>
                                <xsl:value-of select="Phone" />
                            </li>
                            <li>
                                <xsl:value-of select="Email" />
                            </li>
                            <li>
                                <xsl:value-of select="Address" />
                            </li>
                        </ul>
                    </section>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>