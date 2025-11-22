<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Student Portfolio</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 30px;
            line-height: 1.5;
          }
          h1 {
            text-align: center;
            color: #333;
          }
          .section {
            margin-bottom: 30px;
          }
          .student-info, .projects, .skills {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.1);
          }
          .student-info p {
            margin: 5px 0;
          }
          .projects .card {
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 1px 1px 5px rgba(0,0,0,0.05);
            margin-bottom: 15px;
          }
          .projects .card h3 {
            margin: 0 0 5px 0;
            color: #2c3e50;
          }
          .projects .card p {
            margin: 3px 0;
          }
          .skills ul {
            list-style: none;
            padding: 0;
          }
          .skills li {
            display: inline-block;
            background-color: #3498db;
            color: white;
            padding: 5px 12px;
            margin: 5px;
            border-radius: 15px;
            font-size: 14px;
          }
        </style>
      </head>
      <body>
        <h1>Portfolio of <xsl:value-of select="portfolio/student/firstname"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="portfolio/student/lastname"/></h1>

        <!-- Student Information -->
        <div class="section student-info">
          <h2>Student Information</h2>
          <p><b>Course:</b> <xsl:value-of select="portfolio/student/course"/></p>
          <p><b>Year Level:</b> <xsl:value-of select="portfolio/student/yearLevel"/></p>
        </div>

        <!-- Projects -->
        <div class="section projects">
          <h2>Projects</h2>
          <xsl:for-each select="portfolio/projects/project">
            <div class="card">
              <h3><xsl:value-of select="title"/> (ID: <xsl:value-of select="@id"/>)</h3>
              <p><i><xsl:value-of select="description"/></i></p>
              <p><b>Year:</b> <xsl:value-of select="year"/></p>
            </div>
          </xsl:for-each>
        </div>

        <!-- Skills -->
        <div class="section skills">
          <h2>Skills</h2>
          <ul>
            <xsl:for-each select="portfolio/skills/skill">
              <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </ul>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
