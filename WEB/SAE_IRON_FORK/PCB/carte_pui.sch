<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="1.27" unitdist="mm" unit="mm" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="TerminalBlock">
<packages>
<package name="BORNIER_2_ROND_LARGE">
<wire x1="-3.491" y1="-1.016" x2="-1.484" y2="0.991" width="0.254" layer="51"/>
<wire x1="1.488" y1="-0.991" x2="3.469" y2="1.016" width="0.254" layer="51"/>
<wire x1="-4.989" y1="-4.691" x2="4.993" y2="-4.691" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.504" x2="4.993" y2="3.301" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.504" x2="-4.989" y2="3.504" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-4.691" x2="-4.989" y2="-2.303" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-2.303" x2="-3.389" y2="-2.303" width="0.1524" layer="21"/>
<wire x1="-3.389" y1="-2.303" x2="-1.611" y2="-2.303" width="0.1524" layer="51"/>
<wire x1="-1.611" y1="-2.303" x2="1.615" y2="-2.303" width="0.1524" layer="21"/>
<wire x1="3.393" y1="-2.303" x2="4.993" y2="-2.303" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-2.303" x2="-4.989" y2="3.301" width="0.1524" layer="21"/>
<wire x1="4.993" y1="-2.303" x2="4.993" y2="-4.691" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.301" x2="4.993" y2="3.301" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.301" x2="-4.989" y2="3.504" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.301" x2="4.993" y2="-2.303" width="0.1524" layer="21"/>
<wire x1="1.615" y1="-2.303" x2="3.393" y2="-2.303" width="0.1524" layer="51"/>
<circle x="-2.5" y="0" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-2.5" y="2.4798" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.5038" y="0" radius="1.4986" width="0.1524" layer="51"/>
<circle x="2.5038" y="2.4798" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="1.2" diameter="2.54" rot="R90"/>
<pad name="2" x="2.5" y="0" drill="1.2" diameter="2.54" rot="R90"/>
<text x="-3.8462" y="-4.2338" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.532" y="1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="0.421" y="1.905" size="1.27" layer="21" ratio="10">2</text>
</package>
</packages>
<symbols>
<symbol name="BORNIER_2">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BORNIER_2_ROND_LARGE">
<gates>
<gate name="G$1" symbol="BORNIER_2" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="BORNIER_2_ROND_LARGE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="TSR_2-2450">
<description>&lt;2 Amp POL switching regulator, 3.0 to -36 VDC input, pos.-pos. circuit, LM78 compatible, SIP-3&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="TSR-2">
<description>&lt;b&gt;TSR-2&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="4.5" y="-3.89" drill="0.8" diameter="1.6764" shape="long" rot="R90"/>
<pad name="2" x="7.04" y="-3.89" drill="0.8" diameter="1.6764" shape="long" rot="R90"/>
<pad name="3" x="9.58" y="-3.89" drill="0.8" diameter="1.6764" shape="long" rot="R90"/>
<text x="6.717" y="-9.087" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="6.717" y="1.073" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="0" y1="0" x2="14" y2="0" width="0.254" layer="51"/>
<wire x1="14" y1="0" x2="14" y2="-7.5" width="0.254" layer="51"/>
<wire x1="14" y1="-7.5" x2="0" y2="-7.5" width="0.254" layer="51"/>
<wire x1="0" y1="-7.5" x2="0" y2="0" width="0.254" layer="51"/>
<wire x1="0" y1="-7.5" x2="0" y2="0" width="0.254" layer="21"/>
<wire x1="0" y1="0" x2="14" y2="0" width="0.254" layer="21"/>
<wire x1="14" y1="0" x2="14" y2="-7.5" width="0.254" layer="21"/>
<wire x1="14" y1="-7.5" x2="0" y2="-7.5" width="0.254" layer="21"/>
<circle x="-0.842" y="-3.896" radius="0.113359375" width="0.254" layer="25"/>
</package>
</packages>
<symbols>
<symbol name="TSR_2-2450">
<wire x1="5.08" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-7.62" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="21.59" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="21.59" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="+VIN" x="0" y="0" length="middle" direction="in"/>
<pin name="GND" x="0" y="-2.54" length="middle" direction="pwr"/>
<pin name="+VOUT" x="0" y="-5.08" length="middle" direction="out"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TSR_2-2450" prefix="PS">
<description>&lt;b&gt;2 Amp POL switching regulator, 3.0 to -36 VDC input, pos.-pos. circuit, LM78 compatible, SIP-3&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://tracopower.com/tsr2-datasheet/"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="TSR_2-2450" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TSR-2">
<connects>
<connect gate="G$1" pin="+VIN" pad="1"/>
<connect gate="G$1" pin="+VOUT" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="2 Amp POL switching regulator, 3.0 to -36 VDC input, pos.-pos. circuit, LM78 compatible, SIP-3" constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Traco Power" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TSR 2-2450" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="495-TSR2-2450" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/TRACO-Power/TSR-2-2450?qs=NtE2QagKf6RzknAolzm%2FTQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="EEU-FR1C471B">
<description>&lt;PANASONIC ELECTRONIC COMPONENTS - EEUFR1C471B - CAP, ALU ELEC, 470UF, 16V, RAD, REEL&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPPRD350W65D800H1300">
<description>&lt;b&gt;8*11.5&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="0.8" diameter="2" shape="square"/>
<pad name="2" x="3.5" y="0" drill="0.8" diameter="2"/>
<text x="1.27" y="-5.08" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="1.27" y="5.08" size="1.27" layer="27" align="center">&gt;VALUE</text>
<circle x="1.75" y="0" radius="4.5" width="0.05" layer="21"/>
<circle x="1.75" y="0" radius="4" width="0.2" layer="25"/>
<circle x="1.75" y="0" radius="4" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="EEU-FR1C471B">
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.842" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.842" y1="-2.54" x2="5.842" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.842" y2="2.54" width="0.254" layer="94"/>
<wire x1="4.572" y1="1.27" x2="3.556" y2="1.27" width="0.254" layer="94"/>
<wire x1="4.064" y1="1.778" x2="4.064" y2="0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="10.16" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="+" x="0" y="0" visible="pad" length="short"/>
<pin name="-" x="12.7" y="0" visible="pad" length="short" rot="R180"/>
<polygon width="0.254" layer="94">
<vertex x="7.62" y="2.54"/>
<vertex x="7.62" y="-2.54"/>
<vertex x="6.858" y="-2.54"/>
<vertex x="6.858" y="2.54"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="EEU-FR1C471B" prefix="C">
<description>&lt;b&gt;PANASONIC ELECTRONIC COMPONENTS - EEUFR1C471B - CAP, ALU ELEC, 470UF, 16V, RAD, REEL&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1259.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="EEU-FR1C471B" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPPRD350W65D800H1300">
<connects>
<connect gate="G$1" pin="+" pad="1"/>
<connect gate="G$1" pin="-" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="PANASONIC ELECTRONIC COMPONENTS - EEUFR1C471B - CAP, ALU ELEC, 470UF, 16V, RAD, REEL" constant="no"/>
<attribute name="HEIGHT" value="13mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="EEU-FR1C471B" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="667-EEU-FR1C471B" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Panasonic/EEU-FR1C471B?qs=n1SRcuzDZT0M7ScwgdMxZQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Basics">
<packages>
<package name="C050-030X040" urn="urn:adsk.eagle:footprint:18031713/1" locally_modified="yes">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 4 mm</description>
<wire x1="-2" y1="-1" x2="-2" y2="1" width="0.1524" layer="21"/>
<wire x1="-2" y1="1" x2="-1.5" y2="1.5" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2" y1="-1" x2="-1.5" y2="-1.5" width="0.1524" layer="21" curve="90"/>
<wire x1="1.5" y1="1.5" x2="-1.5" y2="1.5" width="0.1524" layer="21"/>
<wire x1="2" y1="-1" x2="2" y2="1" width="0.1524" layer="21"/>
<wire x1="1.5" y1="-1.5" x2="-1.5" y2="-1.5" width="0.1524" layer="21"/>
<wire x1="1.5" y1="1.5" x2="2" y2="1" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.5" y1="-1.5" x2="2" y2="-1" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="2" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-2" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-2.5" y="0" drill="0.8" diameter="2.1844" rot="R90"/>
<pad name="2" x="2.5" y="0" drill="0.8" diameter="2.1844" rot="R90"/>
<text x="-3" y="1.75" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3" y="-3" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-030X040-OCTO" urn="urn:adsk.eagle:footprint:27990987/1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 4 mm</description>
<wire x1="-2" y1="-1" x2="-2" y2="1" width="0.1524" layer="21"/>
<wire x1="-2" y1="1" x2="-1.5" y2="1.5" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2" y1="-1" x2="-1.5" y2="-1.5" width="0.1524" layer="21" curve="90"/>
<wire x1="1.5" y1="1.5" x2="-1.5" y2="1.5" width="0.1524" layer="21"/>
<wire x1="2" y1="-1" x2="2" y2="1" width="0.1524" layer="21"/>
<wire x1="1.5" y1="-1.5" x2="-1.5" y2="-1.5" width="0.1524" layer="21"/>
<wire x1="1.5" y1="1.5" x2="2" y2="1" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.5" y1="-1.5" x2="2" y2="-1" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="2" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-2" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-2.5" y="0" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="2.5" y="0" drill="0.8128" shape="octagon" rot="R90"/>
<text x="-3" y="1.75" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3" y="-3" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7" urn="urn:adsk.eagle:footprint:5796102/3">
<description>&lt;b&gt;AXIAL RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207
8.76 mm pitch, 6.50 mm body lengh, 2.50 mm body diameter, 25 mil (0.64mm) lead diameter</description>
<wire x1="-4.38" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="4.38" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-4.38" y="0" drill="0.8128" shape="long"/>
<pad name="2" x="4.38" y="0" drill="0.8128" shape="long"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0207/7-OCTO" urn="urn:adsk.eagle:footprint:5796101/3">
<description>&lt;b&gt;AXIAL RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207
8.76 mm pitch, 6.50 mm body lengh, 2.50 mm body diameter, 25 mil (0.64mm) lead diameter</description>
<wire x1="-4.38" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="4.38" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-4.38" y="0" drill="0.8128" diameter="1.4224" shape="octagon"/>
<pad name="2" x="4.38" y="0" drill="0.8128" diameter="1.4224" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0207/7-90" urn="urn:adsk.eagle:footprint:5796105/2" locally_modified="yes">
<description>&lt;b&gt;AXIAL RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207
8.76 mm pitch, 6.50 mm body lengh, 2.50 mm body diameter, 25 mil (0.64mm) lead diameter</description>
<wire x1="-4.38" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="4.38" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-4.38" y="0" drill="0.8" diameter="2.1844" rot="R90"/>
<pad name="2" x="4.38" y="0" drill="0.8128" diameter="2.1844" rot="R90"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0207/7-OFFSET" urn="urn:adsk.eagle:footprint:7172860/1">
<description>&lt;b&gt;AXIAL RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207
8.76 mm pitch, 6.50 mm body lengh, 2.50 mm body diameter, 25 mil (0.64mm) lead diameter</description>
<wire x1="-4.38" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="4.38" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-4.38" y="0" drill="0.8128" shape="offset"/>
<pad name="2" x="4.38" y="0" drill="0.8128" shape="offset" rot="R180"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="LED5MM" urn="urn:adsk.eagle:footprint:6984840/1" locally_modified="yes">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, round</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.254" layer="21" curve="-286.260205"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.6764" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.6764" rot="R90"/>
<text x="3.175" y="0.5334" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.2004" y="-1.8034" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="C050-030X040" urn="urn:adsk.eagle:package:18031715/2" type="model">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 4 mm</description>
<packageinstances>
<packageinstance name="C050-030X040"/>
</packageinstances>
</package3d>
<package3d name="C050-030X040-OCTO" urn="urn:adsk.eagle:package:27990988/2" type="model">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 4 mm</description>
<packageinstances>
<packageinstance name="C050-030X040-OCTO"/>
</packageinstances>
</package3d>
<package3d name="0207/7" urn="urn:adsk.eagle:package:5796104/4" type="model">
<description>&lt;b&gt;AXIAL RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207
8.76 mm pitch, 6.50 mm body lengh, 2.50 mm body diameter, 25 mil (0.64mm) lead diameter</description>
<packageinstances>
<packageinstance name="0207/7"/>
</packageinstances>
</package3d>
<package3d name="0207/7-OCTO" urn="urn:adsk.eagle:package:5796103/5" type="model">
<description>&lt;b&gt;AXIAL RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207
8.76 mm pitch, 6.50 mm body lengh, 2.50 mm body diameter, 25 mil (0.64mm) lead diameter</description>
<packageinstances>
<packageinstance name="0207/7-OCTO"/>
</packageinstances>
</package3d>
<package3d name="0207/7-90" urn="urn:adsk.eagle:package:5796106/3" type="model">
<description>&lt;b&gt;AXIAL RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207
8.76 mm pitch, 6.50 mm body lengh, 2.50 mm body diameter, 25 mil (0.64mm) lead diameter</description>
<packageinstances>
<packageinstance name="0207/7-90"/>
</packageinstances>
</package3d>
<package3d name="0207/7-OFFSET" urn="urn:adsk.eagle:package:7172861/2" type="model">
<description>&lt;b&gt;AXIAL RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207
8.76 mm pitch, 6.50 mm body lengh, 2.50 mm body diameter, 25 mil (0.64mm) lead diameter</description>
<packageinstances>
<packageinstance name="0207/7-OFFSET"/>
</packageinstances>
</package3d>
<package3d name="LED5MM" urn="urn:adsk.eagle:package:6984842/2" type="model">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, round</description>
<packageinstances>
<packageinstance name="LED5MM"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="C-EU" urn="urn:adsk.eagle:symbol:17754515/2">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="R-EU-1" urn="urn:adsk.eagle:symbol:5796088/1">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="LED" urn="urn:adsk.eagle:symbol:6984839/1">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="CERAMIC_CAPACITOR" urn="urn:adsk.eagle:component:17754518/11" prefix="C" uservalue="yes">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 4 mm</description>
<gates>
<gate name="C" symbol="C-EU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="C050-030X040">
<connects>
<connect gate="C" pin="1" pad="1"/>
<connect gate="C" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:18031715/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="OCTO" package="C050-030X040-OCTO">
<connects>
<connect gate="C" pin="1" pad="1"/>
<connect gate="C" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27990988/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR_1/4W" urn="urn:adsk.eagle:component:5795500/11" prefix="R" uservalue="yes">
<description>&lt;b&gt;AXIAL RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207
8.76 mm pitch, 6.50 mm body lengh, 2.50 mm body diameter, 25 mil (0.64mm) lead diameter</description>
<gates>
<gate name="R" symbol="R-EU-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0207/7">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5796104/4"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="OCTO" package="0207/7-OCTO">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5796103/5"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="90PAD" package="0207/7-90">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5796106/3"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="OFFSET" package="0207/7-OFFSET">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:7172861/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED5MM" urn="urn:adsk.eagle:component:6984844/4" prefix="L" uservalue="yes">
<gates>
<gate name="L" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED5MM">
<connects>
<connect gate="L" pin="A" pad="A"/>
<connect gate="L" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:6984842/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pi4">
<packages>
<package name="PI4">
<wire x1="-42.5" y1="28" x2="42.5" y2="28" width="0.127" layer="21"/>
<wire x1="42.5" y1="28" x2="42.5" y2="-28" width="0.127" layer="21"/>
<wire x1="42.5" y1="-28" x2="-42.5" y2="-28" width="0.127" layer="21"/>
<wire x1="-42.5" y1="-28" x2="-42.5" y2="28" width="0.127" layer="21"/>
<wire x1="-35.4" y1="27.04" x2="15.4" y2="27.04" width="0.127" layer="21"/>
<wire x1="15.4" y1="27.04" x2="15.4" y2="21.96" width="0.127" layer="21"/>
<wire x1="15.4" y1="21.96" x2="-35.4" y2="21.96" width="0.127" layer="21"/>
<wire x1="-35.4" y1="21.96" x2="-35.4" y2="27.04" width="0.127" layer="21"/>
<pad name="1" x="-34.13" y="23.23" drill="0.6" shape="square"/>
<pad name="3" x="-31.59" y="23.23" drill="0.6" shape="square"/>
<pad name="5" x="-29.05" y="23.23" drill="0.6" shape="square"/>
<pad name="7" x="-26.51" y="23.23" drill="0.6" shape="square"/>
<pad name="9" x="-23.97" y="23.23" drill="0.6" shape="square"/>
<pad name="11" x="-21.43" y="23.23" drill="0.6" shape="square"/>
<pad name="13" x="-18.89" y="23.23" drill="0.6" shape="square"/>
<hole x="-39" y="24.5" drill="2.7"/>
<hole x="19" y="24.5" drill="2.7"/>
<hole x="-39" y="-24.5" drill="2.7"/>
<hole x="19" y="-24.5" drill="2.7"/>
<wire x1="16.46" y1="20.9" x2="21.54" y2="20.9" width="0.127" layer="21"/>
<wire x1="21.54" y1="20.9" x2="21.54" y2="15.84" width="0.127" layer="21"/>
<wire x1="21.54" y1="15.84" x2="16.46" y2="15.84" width="0.127" layer="21"/>
<wire x1="16.46" y1="15.84" x2="16.46" y2="20.9" width="0.127" layer="21"/>
<pad name="P$41" x="17.73" y="19.63" drill="0.6" shape="square"/>
<pad name="P$42" x="20.27" y="19.63" drill="0.6" shape="square"/>
<pad name="P$43" x="17.73" y="17.09" drill="0.6" shape="square"/>
<pad name="P$44" x="20.27" y="17.09" drill="0.6" shape="square"/>
<wire x1="45.5" y1="25.7" x2="24.15" y2="25.7" width="0.127" layer="21"/>
<wire x1="24.15" y1="25.7" x2="24.15" y2="9.8" width="0.127" layer="21"/>
<wire x1="24.15" y1="9.8" x2="45.5" y2="9.8" width="0.127" layer="21"/>
<wire x1="45.5" y1="25.7" x2="45.5" y2="9.8" width="0.127" layer="21"/>
<wire x1="28.6" y1="5.9" x2="46.1" y2="5.9" width="0.127" layer="21"/>
<wire x1="46.1" y1="5.9" x2="46.1" y2="-7.9" width="0.127" layer="21"/>
<wire x1="46.1" y1="-7.9" x2="28.6" y2="-7.9" width="0.127" layer="21"/>
<wire x1="28.6" y1="-7.9" x2="28.6" y2="5.9" width="0.127" layer="21"/>
<wire x1="28.6" y1="-12.7" x2="46.1" y2="-12.7" width="0.127" layer="21"/>
<wire x1="46.1" y1="-12.7" x2="46.1" y2="-26.5" width="0.127" layer="21"/>
<wire x1="46.1" y1="-26.5" x2="28.6" y2="-26.5" width="0.127" layer="21"/>
<wire x1="28.6" y1="-26.5" x2="28.6" y2="-12.7" width="0.127" layer="21"/>
<pad name="2" x="-34.13" y="25.77" drill="0.6" shape="square"/>
<pad name="4" x="-31.59" y="25.77" drill="0.6" shape="square"/>
<pad name="6" x="-29.05" y="25.77" drill="0.6" shape="square"/>
<pad name="8" x="-26.51" y="25.77" drill="0.6" shape="square"/>
<pad name="10" x="-23.97" y="25.77" drill="0.6" shape="square"/>
<pad name="12" x="-21.43" y="25.77" drill="0.6" shape="square"/>
<pad name="14" x="-18.89" y="25.77" drill="0.6" shape="square"/>
<pad name="15" x="-16.35" y="23.23" drill="0.6" shape="square"/>
<pad name="16" x="-16.35" y="25.77" drill="0.6" shape="square"/>
<pad name="17" x="-13.81" y="23.23" drill="0.6" shape="square"/>
<pad name="18" x="-13.81" y="25.77" drill="0.6" shape="square"/>
<pad name="19" x="-11.27" y="23.23" drill="0.6" shape="square"/>
<pad name="20" x="-11.27" y="25.77" drill="0.6" shape="square"/>
<pad name="21" x="-8.73" y="23.23" drill="0.6" shape="square"/>
<pad name="22" x="-8.73" y="25.77" drill="0.6" shape="square"/>
<pad name="23" x="-6.19" y="23.23" drill="0.6" shape="square"/>
<pad name="24" x="-6.19" y="25.77" drill="0.6" shape="square"/>
<pad name="25" x="-3.65" y="23.23" drill="0.6" shape="square"/>
<pad name="26" x="-3.65" y="25.77" drill="0.6" shape="square"/>
<pad name="27" x="-1.11" y="23.23" drill="0.6" shape="square"/>
<pad name="28" x="-1.11" y="25.77" drill="0.6" shape="square"/>
<pad name="29" x="1.43" y="23.23" drill="0.6" shape="square"/>
<pad name="30" x="1.43" y="25.77" drill="0.6" shape="square"/>
<pad name="31" x="3.97" y="23.23" drill="0.6" shape="square"/>
<pad name="32" x="3.97" y="25.77" drill="0.6" shape="square"/>
<pad name="33" x="6.51" y="23.23" drill="0.6" shape="square"/>
<pad name="34" x="6.51" y="25.77" drill="0.6" shape="square"/>
<pad name="35" x="9.05" y="23.23" drill="0.6" shape="square"/>
<pad name="36" x="9.05" y="25.77" drill="0.6" shape="square"/>
<pad name="37" x="11.59" y="23.23" drill="0.6" shape="square"/>
<pad name="38" x="11.59" y="25.77" drill="0.6" shape="square"/>
<pad name="39" x="14.13" y="23.23" drill="0.6" shape="square"/>
<pad name="40" x="14.13" y="25.77" drill="0.6" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="PI4">
<pin name="3V3" x="-38.1" y="17.78" length="middle"/>
<pin name="GPIO2" x="-38.1" y="15.24" length="middle"/>
<pin name="GPIO3" x="-38.1" y="12.7" length="middle"/>
<pin name="GPIO4" x="-38.1" y="10.16" length="middle"/>
<pin name="GND" x="-38.1" y="7.62" length="middle"/>
<pin name="GPIO17" x="-38.1" y="5.08" length="middle"/>
<pin name="GPIO27" x="-38.1" y="2.54" length="middle"/>
<pin name="GPIO22" x="-38.1" y="0" length="middle"/>
<pin name="3V3'" x="-38.1" y="-2.54" length="middle"/>
<pin name="GPIO10" x="-38.1" y="-5.08" length="middle"/>
<pin name="GPIO9" x="-38.1" y="-7.62" length="middle"/>
<pin name="GPIO11" x="-38.1" y="-10.16" length="middle"/>
<pin name="GND'" x="-38.1" y="-12.7" length="middle"/>
<pin name="GPIO0" x="-38.1" y="-15.24" length="middle"/>
<pin name="GPIO5" x="-38.1" y="-17.78" length="middle"/>
<pin name="GPIO6" x="-38.1" y="-20.32" length="middle"/>
<pin name="GPIO13" x="-38.1" y="-22.86" length="middle"/>
<pin name="GPIO19" x="-38.1" y="-25.4" length="middle"/>
<pin name="GPIO26" x="-38.1" y="-27.94" length="middle"/>
<pin name="GND''" x="-38.1" y="-30.48" length="middle"/>
<pin name="5V" x="-2.54" y="17.78" length="middle" rot="R180"/>
<pin name="5V'" x="-2.54" y="15.24" length="middle" rot="R180"/>
<pin name="GND'''" x="-2.54" y="12.7" length="middle" rot="R180"/>
<pin name="GPIO14" x="-2.54" y="10.16" length="middle" rot="R180"/>
<pin name="GPIO15" x="-2.54" y="7.62" length="middle" rot="R180"/>
<pin name="GPIO18" x="-2.54" y="5.08" length="middle" rot="R180"/>
<pin name="GND''''" x="-2.54" y="2.54" length="middle" rot="R180"/>
<pin name="GPIO23" x="-2.54" y="0" length="middle" rot="R180"/>
<pin name="GPIO24" x="-2.54" y="-2.54" length="middle" rot="R180"/>
<pin name="GND'''''" x="-2.54" y="-5.08" length="middle" rot="R180"/>
<pin name="GPIO25" x="-2.54" y="-7.62" length="middle" rot="R180"/>
<pin name="GPIO8" x="-2.54" y="-10.16" length="middle" rot="R180"/>
<pin name="GPIO7" x="-2.54" y="-12.7" length="middle" rot="R180"/>
<pin name="GPIO1" x="-2.54" y="-15.24" length="middle" rot="R180"/>
<pin name="GND''''''" x="-2.54" y="-17.78" length="middle" rot="R180"/>
<pin name="GPIO12" x="-2.54" y="-20.32" length="middle" rot="R180"/>
<pin name="GND'''''''" x="-2.54" y="-22.86" length="middle" rot="R180"/>
<pin name="GPIO16" x="-2.54" y="-25.4" length="middle" rot="R180"/>
<pin name="GPIO20" x="-2.54" y="-27.94" length="middle" rot="R180"/>
<pin name="GPIO21" x="-2.54" y="-30.48" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PI4">
<gates>
<gate name="G$1" symbol="PI4" x="22.86" y="10.16"/>
</gates>
<devices>
<device name="" package="PI4">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="3V3'" pad="17"/>
<connect gate="G$1" pin="5V" pad="2"/>
<connect gate="G$1" pin="5V'" pad="4"/>
<connect gate="G$1" pin="GND" pad="9"/>
<connect gate="G$1" pin="GND'" pad="25"/>
<connect gate="G$1" pin="GND''" pad="39"/>
<connect gate="G$1" pin="GND'''" pad="6"/>
<connect gate="G$1" pin="GND''''" pad="14"/>
<connect gate="G$1" pin="GND'''''" pad="20"/>
<connect gate="G$1" pin="GND''''''" pad="30"/>
<connect gate="G$1" pin="GND'''''''" pad="34"/>
<connect gate="G$1" pin="GPIO0" pad="27"/>
<connect gate="G$1" pin="GPIO1" pad="28"/>
<connect gate="G$1" pin="GPIO10" pad="19"/>
<connect gate="G$1" pin="GPIO11" pad="23"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO14" pad="8"/>
<connect gate="G$1" pin="GPIO15" pad="10"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO2" pad="3"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="GPIO3" pad="5"/>
<connect gate="G$1" pin="GPIO4" pad="7"/>
<connect gate="G$1" pin="GPIO5" pad="29"/>
<connect gate="G$1" pin="GPIO6" pad="31"/>
<connect gate="G$1" pin="GPIO7" pad="26"/>
<connect gate="G$1" pin="GPIO8" pad="24"/>
<connect gate="G$1" pin="GPIO9" pad="21"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="ALIM_CARTE_MOTEUR" library="TerminalBlock" deviceset="BORNIER_2_ROND_LARGE" device=""/>
<part name="ALIM_CARTE_12V" library="TerminalBlock" deviceset="BORNIER_2_ROND_LARGE" device=""/>
<part name="REGULATEUR_5V" library="TSR_2-2450" deviceset="TSR_2-2450" device=""/>
<part name="C1" library="EEU-FR1C471B" deviceset="EEU-FR1C471B" device="" value="10uF"/>
<part name="C3" library="EEU-FR1C471B" deviceset="EEU-FR1C471B" device="" value="10uF"/>
<part name="C4" library="Basics" deviceset="CERAMIC_CAPACITOR" device="" package3d_urn="urn:adsk.eagle:package:18031715/2" value="100nF"/>
<part name="C2" library="Basics" deviceset="CERAMIC_CAPACITOR" device="" package3d_urn="urn:adsk.eagle:package:18031715/2" value="100nF"/>
<part name="R1" library="Basics" deviceset="RESISTOR_1/4W" device="90PAD" package3d_urn="urn:adsk.eagle:package:5796106/3" value="1k"/>
<part name="R2" library="Basics" deviceset="RESISTOR_1/4W" device="90PAD" package3d_urn="urn:adsk.eagle:package:5796106/3" value="220"/>
<part name="LED_ON_OFF" library="Basics" deviceset="LED5MM" device="" package3d_urn="urn:adsk.eagle:package:6984842/2" value="LED_5mm"/>
<part name="L2" library="Basics" deviceset="LED5MM" device="" package3d_urn="urn:adsk.eagle:package:6984842/2" value="LED_5mm"/>
<part name="BORNIER_5V" library="TerminalBlock" deviceset="BORNIER_2_ROND_LARGE" device=""/>
<part name="BOUTTON_ROBOT" library="TerminalBlock" deviceset="BORNIER_2_ROND_LARGE" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U$1" library="pi4" deviceset="PI4" device=""/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND15" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND17" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="-27.94" y1="58.42" x2="-33.02" y2="58.42" width="0.8128" layer="97"/>
<wire x1="-33.02" y1="58.42" x2="-38.1" y2="63.5" width="0.8128" layer="97"/>
<wire x1="-40.64" y1="58.42" x2="-55.88" y2="58.42" width="0.8128" layer="97"/>
<text x="-45.72" y="55.88" size="1.778" layer="97">Commutateur</text>
<circle x="-58.42" y="58.42" radius="2.54" width="0.8128" layer="97"/>
<circle x="-58.42" y="22.86" radius="2.54" width="0.8128" layer="97"/>
<wire x1="-55.88" y1="22.86" x2="-27.94" y2="22.86" width="0.8128" layer="97"/>
<text x="-60.96" y="53.34" size="1.778" layer="97">+ Alim</text>
<text x="-60.96" y="27.94" size="1.778" layer="97">- Alim</text>
</plain>
<instances>
<instance part="ALIM_CARTE_MOTEUR" gate="G$1" x="-5.08" y="40.64" smashed="yes">
<attribute name="NAME" x="-0.635" y="26.67" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="ALIM_CARTE_12V" gate="G$1" x="-25.4" y="40.64" smashed="yes">
<attribute name="NAME" x="-33.655" y="31.75" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="REGULATEUR_5V" gate="G$1" x="17.78" y="58.42" smashed="yes" rot="R90">
<attribute name="NAME" x="31.75" y="81.28" size="1.778" layer="95" rot="R180" align="center-left"/>
</instance>
<instance part="C1" gate="G$1" x="5.08" y="48.26" smashed="yes" rot="R270">
<attribute name="NAME" x="6.35" y="39.37" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="C3" gate="G$1" x="27.94" y="48.26" smashed="yes" rot="R270"/>
<instance part="C4" gate="C" x="35.56" y="43.18" smashed="yes">
<attribute name="NAME" x="37.084" y="43.561" size="1.778" layer="95"/>
<attribute name="VALUE" x="37.084" y="38.481" size="1.778" layer="96"/>
</instance>
<instance part="C2" gate="C" x="12.7" y="43.18" smashed="yes">
<attribute name="NAME" x="17.399" y="34.544" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="17.399" y="39.624" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R1" gate="R" x="-17.78" y="45.72" smashed="yes" rot="R90">
<attribute name="NAME" x="-19.2786" y="44.45" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="-14.478" y="44.45" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R2" gate="R" x="68.58" y="48.26" smashed="yes" rot="R90">
<attribute name="NAME" x="67.0814" y="44.45" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="71.882" y="44.45" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED_ON_OFF" gate="L" x="-17.78" y="35.56" smashed="yes">
<attribute name="NAME" x="-14.224" y="25.908" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="-22.225" y="28.448" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="L2" gate="L" x="68.58" y="38.1" smashed="yes">
<attribute name="NAME" x="72.136" y="33.528" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="64.135" y="30.988" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="BORNIER_5V" gate="G$1" x="50.8" y="40.64" smashed="yes">
<attribute name="NAME" x="55.245" y="31.75" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="BOUTTON_ROBOT" gate="G$1" x="60.96" y="55.88" smashed="yes">
<attribute name="NAME" x="52.705" y="46.99" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="GND2" gate="1" x="12.7" y="20.32" smashed="yes">
<attribute name="VALUE" x="10.16" y="17.78" size="1.778" layer="96"/>
</instance>
<instance part="U$1" gate="G$1" x="185.42" y="45.72" smashed="yes"/>
<instance part="GND10" gate="1" x="144.78" y="53.34" smashed="yes" rot="R270">
<attribute name="VALUE" x="142.24" y="55.88" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND11" gate="1" x="144.78" y="33.02" smashed="yes" rot="R270">
<attribute name="VALUE" x="142.24" y="35.56" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND12" gate="1" x="144.78" y="15.24" smashed="yes" rot="R270">
<attribute name="VALUE" x="142.24" y="17.78" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND13" gate="1" x="185.42" y="58.42" smashed="yes" rot="R90">
<attribute name="VALUE" x="187.96" y="55.88" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND14" gate="1" x="185.42" y="48.26" smashed="yes" rot="R90">
<attribute name="VALUE" x="187.96" y="45.72" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND15" gate="1" x="185.42" y="40.64" smashed="yes" rot="R90">
<attribute name="VALUE" x="187.96" y="38.1" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND16" gate="1" x="185.42" y="27.94" smashed="yes" rot="R90">
<attribute name="VALUE" x="187.96" y="25.4" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND17" gate="1" x="185.42" y="22.86" smashed="yes" rot="R90">
<attribute name="VALUE" x="187.96" y="20.32" size="1.778" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="ALIM_CARTE_12V" gate="G$1" pin="2"/>
<wire x1="-27.94" y1="22.86" x2="-27.94" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="22.86" x2="-17.78" y2="22.86" width="0.1524" layer="91"/>
<pinref part="LED_ON_OFF" gate="L" pin="C"/>
<wire x1="-17.78" y1="22.86" x2="-7.62" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="22.86" x2="5.08" y2="22.86" width="0.1524" layer="91"/>
<wire x1="5.08" y1="22.86" x2="12.7" y2="22.86" width="0.1524" layer="91"/>
<wire x1="12.7" y1="22.86" x2="20.32" y2="22.86" width="0.1524" layer="91"/>
<wire x1="20.32" y1="22.86" x2="27.94" y2="22.86" width="0.1524" layer="91"/>
<wire x1="27.94" y1="22.86" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<wire x1="35.56" y1="22.86" x2="48.26" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="30.48" x2="-17.78" y2="22.86" width="0.1524" layer="91"/>
<junction x="-17.78" y="22.86"/>
<pinref part="ALIM_CARTE_MOTEUR" gate="G$1" pin="2"/>
<wire x1="-7.62" y1="40.64" x2="-7.62" y2="22.86" width="0.1524" layer="91"/>
<junction x="-7.62" y="22.86"/>
<pinref part="C1" gate="G$1" pin="-"/>
<wire x1="5.08" y1="35.56" x2="5.08" y2="22.86" width="0.1524" layer="91"/>
<junction x="5.08" y="22.86"/>
<pinref part="C2" gate="C" pin="2"/>
<wire x1="12.7" y1="38.1" x2="12.7" y2="22.86" width="0.1524" layer="91"/>
<junction x="12.7" y="22.86"/>
<pinref part="REGULATEUR_5V" gate="G$1" pin="GND"/>
<wire x1="20.32" y1="58.42" x2="20.32" y2="22.86" width="0.1524" layer="91"/>
<junction x="20.32" y="22.86"/>
<pinref part="C3" gate="G$1" pin="-"/>
<wire x1="27.94" y1="35.56" x2="27.94" y2="22.86" width="0.1524" layer="91"/>
<junction x="27.94" y="22.86"/>
<pinref part="C4" gate="C" pin="2"/>
<wire x1="35.56" y1="38.1" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<junction x="35.56" y="22.86"/>
<pinref part="BORNIER_5V" gate="G$1" pin="2"/>
<wire x1="48.26" y1="40.64" x2="48.26" y2="22.86" width="0.1524" layer="91"/>
<pinref part="L2" gate="L" pin="C"/>
<wire x1="68.58" y1="33.02" x2="68.58" y2="22.86" width="0.1524" layer="91"/>
<wire x1="68.58" y1="22.86" x2="48.26" y2="22.86" width="0.1524" layer="91"/>
<junction x="48.26" y="22.86"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND'"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND''"/>
<pinref part="GND12" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND'''"/>
<pinref part="GND13" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND''''"/>
<pinref part="GND14" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND'''''"/>
<pinref part="GND15" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND''''''"/>
<pinref part="GND16" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND'''''''"/>
<pinref part="GND17" gate="1" pin="GND"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="LED_ON_OFF" gate="L" pin="A"/>
<pinref part="R1" gate="R" pin="1"/>
<wire x1="-17.78" y1="38.1" x2="-17.78" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+12V" class="0">
<segment>
<pinref part="R1" gate="R" pin="2"/>
<wire x1="-17.78" y1="50.8" x2="-17.78" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="58.42" x2="-17.78" y2="58.42" width="0.1524" layer="91"/>
<pinref part="ALIM_CARTE_12V" gate="G$1" pin="1"/>
<wire x1="-27.94" y1="43.18" x2="-27.94" y2="58.42" width="0.1524" layer="91"/>
<pinref part="ALIM_CARTE_MOTEUR" gate="G$1" pin="1"/>
<wire x1="-7.62" y1="43.18" x2="-7.62" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="58.42" x2="-17.78" y2="58.42" width="0.1524" layer="91"/>
<junction x="-17.78" y="58.42"/>
<pinref part="REGULATEUR_5V" gate="G$1" pin="+VIN"/>
<wire x1="17.78" y1="58.42" x2="12.7" y2="58.42" width="0.1524" layer="91"/>
<junction x="-7.62" y="58.42"/>
<pinref part="C1" gate="G$1" pin="+"/>
<wire x1="12.7" y1="58.42" x2="5.08" y2="58.42" width="0.1524" layer="91"/>
<wire x1="5.08" y1="58.42" x2="-7.62" y2="58.42" width="0.1524" layer="91"/>
<wire x1="5.08" y1="48.26" x2="5.08" y2="58.42" width="0.1524" layer="91"/>
<junction x="5.08" y="58.42"/>
<pinref part="C2" gate="C" pin="1"/>
<wire x1="12.7" y1="45.72" x2="12.7" y2="58.42" width="0.1524" layer="91"/>
<junction x="12.7" y="58.42"/>
<label x="-12.7" y="58.42" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="REGULATEUR_5V" gate="G$1" pin="+VOUT"/>
<wire x1="22.86" y1="58.42" x2="27.94" y2="58.42" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="+"/>
<wire x1="27.94" y1="58.42" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<pinref part="C4" gate="C" pin="1"/>
<wire x1="35.56" y1="45.72" x2="35.56" y2="58.42" width="0.1524" layer="91"/>
<wire x1="35.56" y1="58.42" x2="27.94" y2="58.42" width="0.1524" layer="91"/>
<junction x="27.94" y="58.42"/>
<pinref part="BORNIER_5V" gate="G$1" pin="1"/>
<wire x1="48.26" y1="43.18" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
<wire x1="48.26" y1="58.42" x2="35.56" y2="58.42" width="0.1524" layer="91"/>
<junction x="35.56" y="58.42"/>
<pinref part="BOUTTON_ROBOT" gate="G$1" pin="1"/>
<wire x1="58.42" y1="58.42" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
<junction x="48.26" y="58.42"/>
<junction x="58.42" y="58.42"/>
<wire x1="58.42" y1="58.42" x2="78.74" y2="58.42" width="0.1524" layer="91"/>
<label x="40.64" y="58.42" size="1.778" layer="95" rot="R90" xref="yes"/>
<label x="78.74" y="58.42" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="5V"/>
<wire x1="182.88" y1="63.5" x2="187.96" y2="63.5" width="0.1524" layer="91"/>
<wire x1="187.96" y1="63.5" x2="187.96" y2="62.23" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="5V'"/>
<wire x1="187.96" y1="62.23" x2="187.96" y2="60.96" width="0.1524" layer="91"/>
<wire x1="187.96" y1="60.96" x2="182.88" y2="60.96" width="0.1524" layer="91"/>
<wire x1="187.96" y1="62.23" x2="190.5" y2="62.23" width="0.1524" layer="91"/>
<junction x="187.96" y="62.23"/>
<label x="190.5" y="62.23" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="L2" gate="L" pin="A"/>
<pinref part="R2" gate="R" pin="1"/>
<wire x1="68.58" y1="40.64" x2="68.58" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SIGNAL_ACTIVE_ROBOT" class="0">
<segment>
<pinref part="R2" gate="R" pin="2"/>
<wire x1="68.58" y1="53.34" x2="68.58" y2="55.88" width="0.1524" layer="91"/>
<pinref part="BOUTTON_ROBOT" gate="G$1" pin="2"/>
<wire x1="58.42" y1="55.88" x2="68.58" y2="55.88" width="0.1524" layer="91"/>
<wire x1="68.58" y1="55.88" x2="76.2" y2="55.88" width="0.1524" layer="91"/>
<wire x1="76.2" y1="55.88" x2="76.2" y2="30.48" width="0.1524" layer="91"/>
<junction x="68.58" y="55.88"/>
<label x="76.2" y="30.48" size="1.778" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO2"/>
<wire x1="147.32" y1="60.96" x2="135.89" y2="60.96" width="0.1524" layer="91"/>
<label x="135.89" y="60.96" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="101,1,160.02,58.42,J11,P$1,,,,"/>
<approved hash="101,1,160.02,53.34,J13,P$1,,,,"/>
<approved hash="101,1,160.02,48.26,J15,P$1,,,,"/>
<approved hash="101,1,160.02,43.18,J17,P$1,,,,"/>
<approved hash="101,1,160.02,40.64,J18,P$1,,,,"/>
<approved hash="101,1,160.02,38.1,J19,P$1,,,,"/>
<approved hash="101,1,160.02,35.56,J110,P$1,,,,"/>
<approved hash="101,1,160.02,33.02,J111,P$1,,,,"/>
<approved hash="101,1,160.02,27.94,J113,P$1,,,,"/>
<approved hash="101,1,160.02,25.4,J114,P$1,,,,"/>
<approved hash="101,1,160.02,22.86,J115,P$1,,,,"/>
<approved hash="101,1,160.02,20.32,J116,P$1,,,,"/>
<approved hash="101,1,160.02,17.78,J117,P$1,,,,"/>
<approved hash="101,1,160.02,15.24,J118,P$1,,,,"/>
<approved hash="101,1,160.02,12.7,J119,P$1,,,,"/>
<approved hash="101,1,160.02,10.16,J120,P$1,,,,"/>
<approved hash="101,1,182.88,58.42,J121,P$1,,,,"/>
<approved hash="101,1,182.88,55.88,J122,P$1,,,,"/>
<approved hash="101,1,182.88,53.34,J123,P$1,,,,"/>
<approved hash="101,1,182.88,50.8,J124,P$1,,,,"/>
<approved hash="101,1,182.88,48.26,J125,P$1,,,,"/>
<approved hash="101,1,182.88,45.72,J126,P$1,,,,"/>
<approved hash="101,1,182.88,43.18,J127,P$1,,,,"/>
<approved hash="101,1,182.88,40.64,J128,P$1,,,,"/>
<approved hash="101,1,182.88,38.1,J129,P$1,,,,"/>
<approved hash="101,1,182.88,35.56,J130,P$1,,,,"/>
<approved hash="101,1,182.88,33.02,J131,P$1,,,,"/>
<approved hash="101,1,182.88,30.48,J132,P$1,,,,"/>
<approved hash="101,1,182.88,27.94,J133,P$1,,,,"/>
<approved hash="101,1,182.88,25.4,J134,P$1,,,,"/>
<approved hash="101,1,182.88,22.86,J135,P$1,,,,"/>
<approved hash="101,1,182.88,20.32,J136,P$1,,,,"/>
<approved hash="101,1,182.88,17.78,J137,P$1,,,,"/>
<approved hash="101,1,182.88,15.24,J138,P$1,,,,"/>
<approved hash="101,1,182.88,12.7,J139,P$1,,,,"/>
<approved hash="101,1,182.88,10.16,J140,P$1,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
