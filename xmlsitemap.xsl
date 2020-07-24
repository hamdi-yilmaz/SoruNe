<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet version="1.0"   xmlns:html="http://www.w3.org/TR/REC-html40"  xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Wordpress XML Sitemap Generator Plugin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="index,follow" />
<style type="text/css">
  body {font-family:Tahoma, Verdana, Arial, sans-serif;font-size:12px; }
  #header { padding:0px; margin-top:10px; margin-bottom:20px;}
  a {text-decoration:none; color:blue;}
  table {margin-bottom:50px;}
  tr:nth-child(odd)		{ background-color:#eeeeee; }
  th {font-size:12px; padding:5px;text-align:left; vertical-align:bottom;}
  td {font-size:12px; padding:5px; }
</style>
			</head>
			<body>
				<xsl:apply-templates></xsl:apply-templates>
			</body>
		</html>
	</xsl:template>
	
	
	<xsl:template match="sitemap:urlset">
        <h1>Wordpress XML Sitemap</h1>

    <div id="header">
      <p>
        This is an XML Sitemap comaptible with major search engines such as Google, Bing, Baidu and Yandex.<br />
        For more information and support go to <a href="https://xmlsitemapgenerator.org/wordpress-sitemap-generator-plugin.aspx">Wordpress Sitemap Generator Plugin</a> homepage. <br />
        You can find more information about XML sitemaps on <a href="http://sitemaps.org">sitemaps.org</a>
      </p>
    </div>



    <table cellspacing="0">
        <tr>
          <th>Page url</th>
          <th style="width:80px;">Relative<br />priority</th>
          <th style="width:80px;">Change<br />frequency</th>
          <th style="width:130px;">Modified<br />date</th>
        </tr>
        <xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
        <xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
        <xsl:for-each select="./sitemap:url">
          <tr>
            <xsl:if test="position() mod 2 != 1">
              <xsl:attribute  name="class">high</xsl:attribute>
            </xsl:if>
            <td>
              <xsl:variable name="page">
                <xsl:value-of select="sitemap:loc"/>
              </xsl:variable>
              <a target="_blank" href="{$page}">
                <xsl:value-of select="sitemap:loc"/>
              </a>
            </td>
            <td>
              <xsl:value-of select="sitemap:priority"/>
            </td>
            <td>
              <xsl:value-of select="sitemap:changefreq"/>
            </td>
            <td>
              <xsl:value-of select="sitemap:lastmod"/>
            </td>
          </tr>
        </xsl:for-each>
      </table>
	  
		 
	</xsl:template>
	

 
</xsl:stylesheet>
		

