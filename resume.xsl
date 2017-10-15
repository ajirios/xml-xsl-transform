<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Part 1</title>
        <meta charset="utf-8" />
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <link rel="stylesheet" type="text/css" href="../shared/distribute.css" media="screen" />
    </head>
    
    <body>
        
            
            <header>
                
                
                <div class="head">
                        
                        <nav>
                            
                            <ul>
                                <li><a href="../part4/measurement-converter.htm" >Part 4</a></li>
                                <li><a href="../part3/canvas.htm">Part 3</a></li>
                                <li><a href="../part2/jeverus.htm" >Part 2</a></li>
                                <li><a href="../part1/resume.xml" id="page" >Part 1</a></li>
                            </ul>
                            
                        </nav>
                        
                    </div>
                    
                </header>
            
                                    <div class="divers"></div>
            
                                                        <div class="main">
                                                            
                                                            <div class="main-left">
                                                                
                                                                <div class="explanation">
                                                                    
                                                                    <span class="explanation-header">Online Resume</span>
                                                                    <h2>General Information</h2>
                                                                    
                                                                    <p>
                                                                    <b>Full Name:</b> <span class="separate"><xsl:value-of select="Resume/Applicant/Name/MiddleName"/></span> <span class="separate"><xsl:value-of select="Resume/Applicant/Name/FirstName"/></span> <span class="separate"><xsl:value-of select="Resume/Applicant/Name/LastName"/></span>.
                                                                    </p>
                                                                    
                                                                    <p>
                                                                    <b>Address:</b> <span class="separate"><xsl:value-of select="Resume/Applicant/Address/Unit"/></span> <span class="separate"><xsl:value-of select="Resume/Applicant/Address/Street"/></span>, <span class="separate"><xsl:value-of select="Resume/Applicant/Address/City"/></span>, <span class="separate"><xsl:value-of select="Resume/Applicant/Address/Province"/></span>, <span class="separate"><xsl:value-of select="Resume/Applicant/Address/Country"/></span>. <span class="separate"><xsl:value-of select="Resume/Applicant/Address/PostalCode"/></span>.
                                                                    </p>
                                                                    
                                                                    <p>
                                                                        <b>Email Address:</b> <span class="separate"><xsl:value-of select="Resume/Applicant/EmailAddress"/></span>
                                                                    </p>
                                                                    
                                                                    <p>
                                                                        <b>Phone Number:</b> <span class="separate"><xsl:value-of select="Resume/Applicant/PhoneNumber"/></span>
                                                                    </p>
                                                                    
                                                                    <p>
                                                                        <b>Github:</b> <span class="separate"><xsl:value-of select="Resume/Applicant/Links/Github"/></span>
                                                                    </p>
                                                                    
                                                                    <p>
                                                                        <b>Linkedin:</b> <span class="separate"><xsl:value-of select="Resume/Applicant/Links/LinkedIn"/></span>
                                                                    </p>
                                                                    
                                                                    <p>
                                                                        <b>Portfolio:</b> <span class="separate"><xsl:value-of select="Resume/Applicant/Links/Portfolio"/></span>
                                                                    </p>
                                                                    
                                                                    
                                                                                                
                                                                    <h2>Education</h2>
                                                                    
                                                                    <h4>Degrees</h4>
                                                                    <xsl:for-each select="/Resume/Education/Degrees/Degree">
                                                                        <ul>
                                                                            <li><xsl:value-of select="Term"/> | <xsl:value-of select="Program"/> | <xsl:value-of select="University"/> in <xsl:value-of select="City"/>, <xsl:value-of select="Province"/>, <xsl:value-of select="Country"/></li>
                                                                        </ul>
                                                                    </xsl:for-each>
                                                                    
                                                                    
                                                                    <h4>Courses</h4>
                                                                    <xsl:for-each select="/Resume/Education/Courses/Course">
                                                                        <ul>
                                                                            <li><xsl:value-of select="CourseName"/></li>
                                                                        </ul>
                                                                    </xsl:for-each>
                                                                    
                                                                    
                                                                    <h2>Work Experience</h2>
                                                                    
                                                                    <xsl:for-each select="/Resume/WorkExperience/Employment">
                                                                        
                                                                        <h4><xsl:value-of select="Term"/> | <xsl:value-of select="Position"/> at <xsl:value-of select="Company"/> | <xsl:value-of select="City"/>, <xsl:value-of select="Province"/>, <xsl:value-of select="Country"/>.</h4>
                                                                        
                                                                        
                                                                        <xsl:for-each select="Duties/Duty">
                                                                            <ul>
                                                                                <li><xsl:value-of select="Description"/></li>
                                                                            </ul>
                                                                        </xsl:for-each>
                                                                        
                                                                    </xsl:for-each>
                                                                    
                                                                </div>
                                                            </div>
                                                        <div class="main-right"></div>
                                                    </div>
                                                        
                                                    <div class="divers"></div>
                                                    
                                                    
                                                        
    </body>

</html>
</xsl:template>
</xsl:stylesheet>

