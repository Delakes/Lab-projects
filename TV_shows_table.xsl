<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
<p><b>Задание: </b>выведите на HTML-страницу содержимое XML-документа, созданного в
лабораторной работе 10(2), используя XSL.</p>
<p>Выполните сортировку записей поодному из возможных критериев и фильтрацию данных по одному из возможных показателей.</p>
<p>В таблице обображаются только те записи, дата начала которых меньше 13 числа.</p>
        </head>
            <body>
                <h1 align="center">Телепрограмма</h1>
                <table align="center" border="1">
                    <tr bgcolor="cyan">
                        <th>Название программы</th>
                        <th>Дата показа</th>
                        <th>Время показа</th>
                        <th>Канал</th>
                        <th>Жанр</th>
                        <th>Длительность</th>
                    </tr>
                    
                    <xsl:for-each select="tv_programms/programm">           

                               <xsl:sort select="programm"/>
                               <xsl:if test="day_of_translation/date &lt; 13 ">
                        <tr align="center">
                            <td>
                                <xsl:value-of select="name_of_translation"/>
                            </td>
                            <td>
                                <xsl:value-of select="day_of_translation"/>
                            </td>
                            <td>
                                <xsl:value-of select="start_time"/>
                            </td>
                            <td>
                                <xsl:value-of select="channel"/>
                            </td>
                            <td>
                                <xsl:value-of select="genre"/>
                            </td>
                            <td>
                                <xsl:value-of select="duration"/>
                            </td>
                        </tr>

                        </xsl:if>
                   
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>