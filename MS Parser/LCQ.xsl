<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" method="xml"/>
<xsl:template match="PROMASS_RESULTS">
	<FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
	<ERRORCODE>0</ERRORCODE>
	<PRODUCT BUILD="01-25-2011" NAME="FileMaker" VERSION="ProAdvanced 11.0v3"/>
	<DATABASE DATEFORMAT="M/d/yyyy" LAYOUT="" NAME="xmltest.fp7" 
	RECORDS="{@count}" TIMEFORMAT="h:mm:ss a"/>
<METADATA>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Area" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="DeckLoc" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="ESScnBC" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="HPLCTrace" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="InjVolume" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Instr" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="InstrMethod" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="MSTrace" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="OrigCol" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="OrigRow" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="ProdNum" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="SO" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="SSID" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="TestDate" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="TesterName" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="TestGoal" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="TestResults" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="TestTime" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="TestType" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Well" TYPE="TEXT"/>
	<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Data_Path" TYPE="TEXT"/>
</METADATA>
<RESULTSET FOUND="{@count}">
	<xsl:for-each select="DATA_FILE">
	<xsl:variable name="datapath" select="translate(concat('file:\\',RESULTS_PATH,'\',@NAME,'.html'),'\','/')"/>
	<xsl:variable name="MSTrace" select="translate(concat('file:\\',RESULTS_PATH,'\',CHROM_PEAK/DEC_GRAPHIC),'\','/')"/>
	<xsl:variable name="HPLCTrace" select="translate(concat('file:\\',RESULTS_PATH,'\',UV_CHROM_GRAPHIC),'\','/')"/>
	<xsl:variable name="OrigCol" select="substring(SAMPLE_NAME, 2)"/>
	<xsl:variable name="OrigRow" select="substring(SAMPLE_NAME, 1,1)"/>
	<xsl:variable name="ESScnBC" select="substring(DATA_PATH, 33)"/>
	<ROW MODID="0" RECORDID="{position()}">
		<COL><DATA><xsl:value-of select="TARGET_MASS/TOTAL_ABUNDANCE"/></DATA></COL>
		<COL><DATA>"LCQ"</DATA></COL>
		<COL><DATA><xsl:value-of select="$ESScnBC"/></DATA></COL>
		<COL><DATA><xsl:value-of select="$HPLCTrace"/></DATA></COL>
		<COL><DATA><xsl:value-of select="INJ_VOL"/></DATA></COL>
		<COL><DATA><xsl:value-of select="/PROMASS_RESULTS/PROCESSING_COMPUTER_NAME"/></DATA></COL>
		<COL><DATA><xsl:value-of select="INST_METHOD"/></DATA></COL>
		<COL><DATA></DATA></COL>
		<COL><DATA><xsl:value-of select="$OrigCol"/></DATA></COL>
		<COL><DATA><xsl:value-of select="$OrigRow"/></DATA></COL>
		<COL><DATA><xsl:value-of select="@NAME"/></DATA></COL>
		<COL><DATA><xsl:value-of select="CLIENT"/></DATA></COL>
		<COL><DATA><xsl:value-of select="STUDY"/></DATA></COL>
		<COL><DATA><xsl:value-of select="ACQ_DATE"/></DATA></COL>
		<COL><DATA>"TESTERNAME"</DATA></COL>
		<COL><DATA></DATA></COL>
		<COL><DATA></DATA></COL>
		<COL><DATA>onimport</DATA></COL>
		<COL><DATA>HPLC</DATA></COL>
		<COL><DATA><xsl:value-of select="SAMPLE_NAME"/></DATA></COL>
		<COL><DATA><xsl:value-of select="$datapath"/></DATA></COL>
	</ROW>
	<ROW MODID="0" RECORDID="{position()}">
		<COL><DATA></DATA></COL>
		<COL><DATA>"LCQ"</DATA></COL>
		<COL><DATA><xsl:value-of select="$ESScnBC"/></DATA></COL>
		<COL><DATA></DATA></COL>
		<COL><DATA><xsl:value-of select="INJ_VOL"/></DATA></COL>
		<COL><DATA><xsl:value-of select="/PROMASS_RESULTS/PROCESSING_COMPUTER_NAME"/></DATA></COL>
		<COL><DATA><xsl:value-of select="INST_METHOD"/></DATA></COL>
		<COL><DATA><xsl:value-of select="$MSTrace"/></DATA></COL>
		<COL><DATA><xsl:value-of select="$OrigCol"/></DATA></COL>
		<COL><DATA><xsl:value-of select="$OrigRow"/></DATA></COL>
		<COL><DATA><xsl:value-of select="@NAME"/></DATA></COL>
		<COL><DATA><xsl:value-of select="CLIENT"/></DATA></COL>
		<COL><DATA><xsl:value-of select="STUDY"/></DATA></COL>
		<COL><DATA><xsl:value-of select="ACQ_DATE"/></DATA></COL>
		<COL><DATA>TESTERNAME-onimport</DATA></COL>
		<COL><DATA><xsl:value-of select="TARGET_MASS/@MASS"/></DATA></COL>
		<COL><DATA><xsl:value-of select="TARGET_MASS/OBSERVED_MASS"/></DATA></COL>
		<COL><DATA>TIME-onimport</DATA></COL>
		<COL><DATA>MS</DATA></COL>
		<COL><DATA><xsl:value-of select="SAMPLE_NAME"/></DATA></COL>
		<COL><DATA><xsl:value-of select="$datapath"/></DATA></COL>
	</ROW>
	</xsl:for-each>
</RESULTSET>
</FMPXMLRESULT>
</xsl:template>
</xsl:stylesheet>