
%include "&filbane\Formater\SKDE_somatikk.sas";
%include "&filbane\Formater\NPR_somatikk.sas";

proc format;

value Ald_4Gr
1='0 - 17 �r'
2='18 - 49 �r'
3='50 - 74 �r'
4='75 �r og over';

value erdag
0 = "d�gn"
1 = "dag";

value INNMATEHAST_2delt
1='Akutt'
2='Akutt'
3='Akutt'
4='Planlagt'
9='Ukjent'
;

value BEHANDLINGSNIVA3F
1 = 'D�gnopphold'  
2 = 'Dagbehandling'  
3 = 'Poliklinikk'
4 = 'Avtalespesialist';

value DRGtypeHastegrad
1='Planlagt medisin'
2='Akutt medisin' 
3='Planlagt kirurgi'
4='Akutt kirurgi'
9='Ukjent';

value behandler
1="Eget lokalsykehus"
2="UNN Troms�"
3="NLSH Bod�"
4="Annet sykehus i eget HF"
5="Annet HF i HN"
6="HF i andre RHF"
7="Private sykehus"
8="Avtalespesialister"
9="UNN HF"
10="Nordlandssykehuset HF";


Value BehHF 
1='Finnmarkssykehuset HF' 
2='UNN HF' 
3='Nordlandssykehuset HF' 
4='Helgelandssykehuset HF' 
5='Helse Nord-Tr�ndelag HF' 
6='St. Olavs Hospital HF' 
7='Helse M�re og Romsdal HF' 
9='Helse F�rde HF' 
10='Helse Bergen HF' 
11='Helse Fonna HF' 
12='Helse Stavanger HF' 
13='Resterende Helse Vest RHF' 
14='Vestre Viken HF' 
15='Sykehuset Telemark HF' 
16='Akershus universitetssykehus HF' 
17='Sykehuset Innlandet HF' 
18='Oslo universitetssykehus HF' 
19='Sunnaas sykehus HF' 
20='Sykehuset �stfold HF' 
21='S�rlandet sykehus HF' 
22='Sykehuset i Vestfold HF' 
23='Diakonhjemmet sykehus'
24='Lovisenberg diakonale sykehus'
25='Resterende Helse S�r-�st RHF' 
26='Haraldsplass diakonale sykehus'
27='Private sykehus'
28='Avtalespesialister'
30='HF utenfor Helse Nord RHF'
;

value BehRHF 
1='Helse Nord RHF' 
2='Helse Midt-Norge RHF' 
3='Helse Vest RHF' 
4='Helse S�r-�st RHF'
5='Private sykehus'
6='Avtalespesialister';

value behSh
10='Finnmarkssykehuset HF'
11='Klinikk Kirkenes'
12='Klinikk Hammerfest'
20='UNN HF'
21='UNN Troms�'
22='UNN Harstad'
23='UNN Narvik'
24='UNN Troms�' /* Storslett */
25='UNN Troms�' /* Bardu */
26='UNN Troms�' /* Finnsnes */
30='Nordlandssykehuset HF'
31='Nordlandssykehuset Vester�len'
32='Nordlandssykehuset Lofoten'
33='Nordlandssykehuset Bod�'
40='Helgelandssykehuset HF'
41='Helgelandssykehuset Mo i Rana'
42='Helgelandssykehuset Mosj�en'
43='Helgelandssykehuset Sandnessj�en'
300='Private sykehus'
400='Andre offentlige sykehus'
500='Avtalespesialister'
;

Value BoHF_kort
	1='Finnmark'
	2='UNN'
	3='Nordland'
	4='Helgeland '
	6='Nord-Tr�ndelag'
	7='St. Olavs'
	8='M�re og Romsdal'
	10='F�rde'
	11='Bergen'
	12='Fonna'
	13='Stavanger'
	14='�stfold'
	15='Akershus'
	16='OUS'
	17='Lovisenberg'
	18='Diakonhjemmet'
	19='Innlandet'
	20='Vestre Viken'
	21='Vestfold'
	22='Telemark'
	23='S�rlandet'
	24='Utlandet/Svalbard'
	25='Bor utenfor Helse Nord'
	99='Ukjent/ugyldig kommunenr';

* Slik som f�r ;
value BoRHF
1='Boomr Helse Nord RHF' 
2='Boomr Helse Midt-Norge RHF' 
3='Boomr Helse Vest RHF' 
4='Boomr Helse S�r-�st RHF' 
24='Boomr utlandet/Svalbard' 
99='Ukjent/ugyldig kommunenr';

value BoShHN
1='Boomr Kirkenes'
2='Boomr Hammerfest' 
3='Boomr Troms�'
4='Boomr Harstad'
5='Boomr Narvik' 
6='Boomr Vester�len'
7='Boomr Lofoten' 
8='Boomr Bod�' 
9='Boomr Rana' 
10='Boomr Mosj�en' 
11='Boomr Sandnessj�en'
12='Bor utenfor Helse Nord';

   value HDG
      1 = 'Sykdommer i nervesystemet'  
      2 = '�yesykdommer'  
      3 = '�re-, nese- og halssykdommer'  
      4 = 'Sykdommer i �ndedrettsorganene'  
      5 = 'Sykdommer i sirkulasjonsorganene'  
      6 = 'Sykdommer i ford�yelsesorganene'  
      7 = 'Sykdommer i lever, galleveier og bukspyttkjertel'  
      8 = 'Sykdommer i muskel-, skjelettsystemet og bindevev'  
      9 = 'Sykdommer i hud og underhud'  
      10 = 'Indresekretoriske-, ern�rings- og stoffskiftesykdommer'  
      11 = 'Nyre- og urinveissykdommer'  
      12 = 'Sykdommer i mannlige kj�nnsorganer'  
      13 = 'Sykdommer i kvinnelige kj�nnsorganer'  
      14 = 'Sykdommer under svangerskap, f�dsel og barseltid'  
      15 = 'Nyf�dte med tilstander som har oppst�tt i perinatalperioden'  
      16 = 'Sykdommer i blod, bloddannende organer og immunapparat'  
      17 = 'Myeloproliferative sykdommer og lite differensierte svulster'  
      18 = 'Infeksi�se og parasitt�re sykdommer'  
      19 = 'Psykiske lidelser og rusproblemer'  
      21 = 'Skade, forgiftninger og toksiske effekter av medikamenter/andre stoffer, medikamentmisbruk og organiske sinnslidelser fr'  
      22 = 'Forbrenninger'  
      23 = 'Faktorer som p�virker helsetilstand - andre kontakter med helsetjenesten'
      24 = 'Signifikant multitraume'
      30 = 'Sykdommer i bryst'  
      40 = 'Kategorier p� tvers av flere hoveddiagnosegrupper'  
      99 = 'Kategorier for feil og uvanlige diagnose-prosedyrekombinasjoner'
      999 = 'Ikke registrert hoveddiagnosegruppe';

value FAG_SKDE
      1 = 'Anestesi'  
      2 = 'Barn'  
      3 = 'Fysikalsk medisin'  
      4 = 'Gynekologi'  
      5 = 'Hud'  
      6 = 'Indremedisin'  
      7 = 'Indremed, Gastro'  
      8 = 'Indremed, generell'  
      9 = 'Indremed, kardiologi'  
      10 = 'Indremed, lunge'  
      11 = 'Kirurgi'  
      12 = 'Kirurgi, generell'  
      13 = 'Kirurgi, ortopedi'  
      14 = 'Kirurgi, urologi'  
      15 = 'Nevrologi'  
      16 = 'Ortopedi'  
      17 = 'Plastikkirurgi'  
      18 = 'Radiologi'  
      19 = 'Revmatologi'  
      20 = 'Urologi'  
      21 = '�re-nese-hals'  
      22 = '�ye'  
      23 = 'Onkologi'  
      24 = 'Indremed, nyre'  
      25 = 'Indremed, endokrinologi'  
      30 = 'Psykiatri'  
      31 = 'Psykologi'
      99 = 'Ukjent'      ;
      
      
run;