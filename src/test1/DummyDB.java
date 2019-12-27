package test1;



import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;
import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

public class DummyDB {
	private int totalCountries;
	
	
	
	
	
	public String data = "Aalborg AMBA AAL,\r\n" + 
			"Aarhus AAR,\r\n" + 
			"Aberdeen Ltd ABZ,\r\n" + 
			"Abu Dhabi AUH,\r\n" + 
			"Acapulco ACA,\r\n" + 
			"Adana-Sakirpasa ADA,\r\n" + 
			"Addis Ababa-Bole ADD,\r\n" + 
			"Adelaide ADL,\r\n" + 
			"Aden ADE,\r\n" + 
			"Aerodrom Portoroz doo POW,\r\n" + 
			"Agadir-Al Massira AGA,\r\n" + 
			"Agen-La Garenne AGF,\r\n" + 
			"Agra AGR,\r\n" + 
			"Ahmedabad-Sardar Vallabh Bhai Patel Int´l AMD,\r\n" + 
			"Ajaccio-Campo Dell'Oro AJA,\r\n" + 
			"Akron-Canton Regional CAK,\r\n" + 
			"Alamosa-Bergman-San Luis Valley Regional Airfeld ALS,\r\n" + 
			"Albany ALB,\r\n" + 
			"Albi-Le Sequestre LBI,\r\n" + 
			"Albuquerque ABQ,\r\n" + 
			"Alderney ACI,\r\n" + 
			"Aleppo ALP,\r\n" + 
			"Alesund-Vigra AES,\r\n" + 
			"Alexandria ESF,\r\n" + 
			"Alexandria-El Nhouza ALY,\r\n" + 
			"Alexandroupolis National AXD,\r\n" + 
			"Alghero-Fertilia AHO,\r\n" + 
			"Algiers-Houari Boumedienne ALG,\r\n" + 
			"Alicante ALC,\r\n" + 
			"Alice Springs ASP,\r\n" + 
			"Almaty Int'l ALA,\r\n" + 
			"Almeria LEI,\r\n" + 
			"Alor Setar-Sultan Abdul Halim AOR,\r\n" + 
			"Altenrhein ACH,\r\n" + 
			"Amarillo-Rick Husband AMA,\r\n" + 
			"Amilcar Cabral SID,\r\n" + 
			"Amman-Queen Alia AMM,\r\n" + 
			"Amritsar-Raja Sansi ATQ,\r\n" + 
			"Amsterdam Schiphol SPL,\r\n" + 
			"Anchorage-Ted Stevens ANC,\r\n" + 
			"Ancona AOI,\r\n" + 
			"Angoulême-Brie-Champniers ANG,\r\n" + 
			"Ankara-Esenboga ESB,\r\n" + 
			"Annaba-Rabah Bitat AAE,\r\n" + 
			"Annecy-Haute Savoie NCY,\r\n" + 
			"Antalya AYT,\r\n" + 
			"Antananarivo-Ivato Aerodrome TNR,\r\n" + 
			"Antigua-VC Bird SJF,\r\n" + 
			"Antofagasta-Cerro Moreno ANF,\r\n" + 
			"Antwerp ANR,\r\n" + 
			"Appleton/Outagamie County Regional ATW,\r\n" + 
			"Aqaba AQJ,\r\n" + 
			"Arad ARW,\r\n" + 
			"Arica-Chacalluta ARI,\r\n" + 
			"Arkhangelsk-Talagi ARH,\r\n" + 
			"Aruba-Queen Beatrix AUA,\r\n" + 
			"Asheville Regional AVL,\r\n" + 
			"Ashkabad ASB,\r\n" + 
			"Asmara Int'l ASM,\r\n" + 
			"Asturias OVD,\r\n" + 
			"Asuncion-Silvio Pettirossi ASU,\r\n" + 
			"Aswan-Daraw ASW,\r\n" + 
			"Athens Ben Epps AHN,\r\n" + 
			"Athens-Eleftherios Venizelos ATH,\r\n" + 
			"Athens-Hellinikon ATH,\r\n" + 
			"Atlanta-Hartsfeld Atlanta ATL,\r\n" + 
			"Atlantic City Int'l ACY,\r\n" + 
			"Auckland AKL,\r\n" + 
			"Augsburg AGB,\r\n" + 
			"Augusta Regional AGS,\r\n" + 
			"Austin-Bergstrom AUS,\r\n" + 
			"Avignon/Caumont AVN,\r\n" + 
			"Badajoz-Talavera la Real BJZ,\r\n" + 
			"Baden-Airpark GmbH FKB,\r\n" + 
			"Baghdad SDA,\r\n" + 
			"Bahrain BAH,\r\n" + 
			"Baku-Bina Int'l BAK,\r\n" + 
			"Bali-Denpasar-Ngurah Rai DPS,\r\n" + 
			"Balikpapan-Sepinggan BPN,\r\n" + 
			"Baltimore/Washington Int'l BWI,\r\n" + 
			"Bamako-Senou Int'l BKO,\r\n" + 
			"Bandaranaike Int'l CMB,\r\n" + 
			"Bangalore BLR,\r\n" + 
			"Bangkok Int'l BKK,\r\n" + 
			"Bangor BGR,\r\n" + 
			"Bangui-M´Poko BGF,\r\n" + 
			"Banjul Int'l BJL,\r\n" + 
			"Bankstown BWU,\r\n" + 
			"Barcelona BCN,\r\n" + 
			"Bari-Palese BRI,\r\n" + 
			"Barnaul BAX,\r\n" + 
			"Barra BRR,\r\n" + 
			"Barranquilla-Aeropuerto Int´l Ernesto Cortissoz BAQ,\r\n" + 
			"Basel/Mulhouse MLH,\r\n" + 
			"Basel/Mulhouse BSL,\r\n" + 
			"Baton Rouge Metroplitan BTR,\r\n" + 
			"Beauvais/Tille BVA,\r\n" + 
			"Beijing-Capital PEK,\r\n" + 
			"Beira BEW,\r\n" + 
			"Beirut BEY,\r\n" + 
			"Belfast BFS,\r\n" + 
			"Belfast BFS,\r\n" + 
			"Belfast City BHD,\r\n" + 
			"Belgrade BEG,\r\n" + 
			"Belize-Phillip SW Goldson BZE,\r\n" + 
			"Bellingham BLI,\r\n" + 
			"Belo Horizonte-Pampulha PLU,\r\n" + 
			"Belo Horizonte-Tancredo Neves Int´l CNF,\r\n" + 
			"Benbecula BEB,\r\n" + 
			"Benghazi-Benina BEN,\r\n" + 
			"Bergen, Flesland BGO,\r\n" + 
			"Bergerac-Roumaniere EGC,\r\n" + 
			"Berlin-Schonefeld SXF,\r\n" + 
			"Berlin-Tegel TXL,\r\n" + 
			"Berlin-Tempelhof THF,\r\n" + 
			"Bermuda BDA,\r\n" + 
			"Bern BRN,\r\n" + 
			"Beziers/Vias BZR,\r\n" + 
			"Biak-Frans Kaisiepo BIK,\r\n" + 
			"Biarritz/Bayone/Anglet BIQ,\r\n" + 
			"Bilbao BIO,\r\n" + 
			"Billings Logan BIL,\r\n" + 
			"Billund BLL,\r\n" + 
			"Binghamton BGM,\r\n" + 
			"Bintulu BTU,\r\n" + 
			"Birmingham BHX,\r\n" + 
			"Birmingham BHM,\r\n" + 
			"Bishkek-Manas KGA,\r\n" + 
			"Bismark Municipal BIS,\r\n" + 
			"Bissau-Osvaldo Vieira BXO,\r\n" + 
			"Blackbushe BBS,\r\n" + 
			"Blackpool BLK,\r\n" + 
			"Blantyre-Chileka BLZ,\r\n" + 
			"Bloemfontein BFN,\r\n" + 
			"Bluefeld-Mercer County BLF,\r\n" + 
			"Boa Vista Int'l BVB,\r\n" + 
			"Bodø BOO,\r\n" + 
			"Boeing Field/King County Int´l BFI,\r\n" + 
			"Bogotá-El Dorado BOG,\r\n" + 
		
			"Boise BOI,\r\n" + 
			"Bologna-G Marconi BLQ,\r\n" + 
			"Bonriki Int'l TRW,\r\n" + 
			"Bordeaux/Merignac BOD,\r\n" + 
			"Borlänge BLE,\r\n" + 
			"Bornholm-Roenne RNN,\r\n" + 
			"Boston-Logan BOS,\r\n" + 
			"Bourgas BOJ,\r\n" + 
			"Bourges BOU,\r\n" + 
			"Bournemouth BOH,\r\n" + 
			"Bozeman BZN,\r\n" + 
			"Bradford Regional BFD,\r\n" + 
			"Brasilia Int'l-Presidente Juscelino Kubitschek BSB,\r\n" + 
			"Bratislava-M R Stefanik BTS,\r\n" + 
			"Brazzaville-Maya Maya BVZ,\r\n" + 
			"Bremen-Flughafen Bremen BRE,\r\n" + 
			"Brest/Guipavas BES,\r\n" + 
			"Brindisi BDS,\r\n" + 
			"Brisbane BNE,\r\n" + 
			"Brisbane-Archerfeld BNE,\r\n" + 
			"Bristol BRS,\r\n" + 
			"Bristol-Filton BRS,\r\n" + 
			"Brive-La Roche BVE,\r\n" + 
			"Brno-Turany BRQ,\r\n" + 
			"Brownsville/South Padre Island Int´l BRO,\r\n" + 
			"Brunei-Bandar Seri Begawan BWN,\r\n" + 
			"Brussels BRU,\r\n" + 
			"Brussels-South Charleroi CRL,\r\n" + 
			"Bucaramanga-Palo Negro BGA,\r\n" + 
			"Bucharest-Baneasa BBU,\r\n" + 
			"Bucharest-Otopeni OTP,\r\n" + 
			"Budapest-Ferihegy BUD,\r\n" + 
			"Buenos Aires-Aeropuerto Ministro Pistarini Int´l Ezeiza EZE,\r\n" + 
			"Buenos Aires-Don Torcuato DOT,\r\n" + 
			"Buffalo Niagara Int´l BUF,\r\n" + 
			"Bujumbura BJM,\r\n" + 
			"Bulawayo BUQ,\r\n" + 
			"Burbank-Glendale-Pasedena BUR,\r\n" + 
			"Burlington BTV,\r\n" + 
			"Cairns CNS,\r\n" + 
			"Cairo CAI,\r\n" + 
			"Calgary YYC,\r\n" + 
			"Cali-Alfonso Bonilla Aragón CLO,\r\n" + 
			"Calicut CCI,\r\n" + 
			"Calvi-Sainte Catherine CLY,\r\n" + 
			"Camagüey-Ignacio Agramonte CMW,\r\n" + 
			"Cambridge CBG,\r\n" + 
			"Camden CDU,\r\n" + 
			"Campbeltown CAL,\r\n" + 
			"Campeche-Ingeniero Alberto Acuna Ongay Int'l CPE,\r\n" + 
			"Campo Grande CGR,\r\n" + 
			"Canberra CBN,\r\n" + 
			"Cancun Int´l CUN,\r\n" + 
			"Canefeld DCF,\r\n" + 
			"Cannes CEQ,\r\n" + 
			"Cape Town CPT,\r\n" + 
			"Caracas-Maiquetia Simon Bolivar CCS,\r\n" + 
			"Carcassonne CCF,\r\n" + 
			"Cardiff CWL,\r\n" + 
			"Carlisle CAX,\r\n" + 
			"Cartagena-Rafael Nunez CTG,\r\n" + 
			"Casablanca-Mohammed V CMN,\r\n" + 
			"Casper/Natrona County Int´l CPR,\r\n" + 
			"Castres-Mazamet DCM,\r\n" + 
			"Catania-Fontanarossa CTA,\r\n" + 
			"Cayenne-Rochambeau CAY,\r\n" + 
			"Cayo Largo-Vilo Acuna Int´l CYO,\r\n" + 
			"Chambery/Aix les Bains CMF,\r\n" + 
			"Champaign-Willard CMI,\r\n" + 
			"Chania K Daskalogiannis CHQ,\r\n" + 
			"Channel Islands-Alderney ACI,\r\n" + 
			"Channel Islands-Guernsey GCI,\r\n" + 
			"Channel Islands-Jersey JER,\r\n" + 
			"Charleston-Yeager CRW,\r\n" + 
			"Charlotte/Douglas Int'l CLT,\r\n" + 
			"Chattanooga Metropolitan CHA,\r\n" + 
			"Chavenay PAR,\r\n" + 
			"Cheju-Jeju CJU,\r\n" + 
			"Chelyabinsk-Balandino CEK,\r\n" + 
			"Chengdu/Shuangliu CTU,\r\n" + 
			"Chennai/Madras-Meenambakam MAA,\r\n" + 
			"Cherbourg-Maupertus CER,\r\n" + 
			"Chester CEG,\r\n" + 
			"Chetumal CTM,\r\n" + 
			"Cheyenne CYS,\r\n" + 
			"Chiang Mai Int´l CNX,\r\n" + 
			"Chiang Rai CEI,\r\n" + 
			"Chicago Midway MDW,\r\n" + 
			"Chicago-O Hare ORD,\r\n" + 
			"Chisinau KIV,\r\n" + 
			"Chittagong-Shah Amanat Int´l CGP,\r\n" + 
			"Christchurch Ltd CHC,\r\n" + 
			"Châteauroux/Deols-Marcel Dassault CHR,\r\n" + 
			"Ciego de Avila-Maximo Gomez Int'l AVI,\r\n" + 
			"Cienfuegos-Jamie González Int'l CFG,\r\n" + 
			"Cincinnati/N Kentucky Int´l CVG,\r\n" + 
			"City of Derry-Londonderry LDY,\r\n" + 
			"Ciudad del Carmen CME,\r\n" + 
			"Ciudad Obregón CEN,\r\n" + 
			"Ciudad Victoria CVM,\r\n" + 
			"Clermont Ferrand Auvergne CFE,\r\n" + 
			"Cleveland-Hopkins CLE,\r\n" + 
			"Cochin COK,\r\n" + 
			"Cocos Islands CCK,\r\n" + 
			"Coimbatore CJB,\r\n" + 
			"Colima CLQ,\r\n" + 
			"Colmar-Houssen CMR,\r\n" + 
			"Cologne/Bonn CGN,\r\n" + 
			"Colorado Springs COS,\r\n" + 
			"Columbia Metropolitan CAE,\r\n" + 
			"Columbus-Port Columbus Int´l CMH,\r\n" + 
			"Columbus-Golden Triangle Regional GTR,\r\n" + 
			"Conakry-Gbessia CKY,\r\n" + 
			"Concepcion CCP,\r\n" + 
			"Constanta-Mihail Kogalniceanu CND,\r\n" + 
			"Constantine CZL,\r\n" + 
			"Cook Is-Rarotonga RAR,\r\n" + 
			"Coolangatta-Gold Coast OOL,\r\n" + 
			"Copenhagen Roskilde RKE,\r\n" + 
			"Copenhagen-Kastrup CPH,\r\n" + 
			"Cordoba ODB,\r\n" + 
			"Cordoba-Ambrosio l y Taravella COR,\r\n" + 
			"Corfu I Kapodistrias CFU,\r\n" + 
			"Cork CRK,\r\n" + 
			"Corpus Christi Int´l CRP,\r\n" + 
			"Cortez Municipal CEZ,\r\n" + 
			"Corumba CMG,\r\n" + 
			"Cotonou COO,\r\n" + 
			"Coventry-West Midlands CVT,\r\n" + 
			"Cozumel CZM,\r\n" + 
			"Crotone CRV,\r\n" + 
			"Crown Point TAB,\r\n" + 
			"Cruzeiro do Sul Int´l CZS,\r\n" + 
			"Cuernavaca CVJ,\r\n" + 
			"Cumberland Regional CBE,\r\n" + 
			"Cuneo-Levaldigi CUF,\r\n" + 
			"Curacao-Hato CUR,\r\n" + 
			"Curitiba-Afonso Pena CWB,\r\n" + 
			"Dakar-Yoff-Leopol Sedar Senghor Int´l DKR,\r\n" + 
			"Dalaman DLM,\r\n" + 
			"Dalian-Zhoushuizi DLC,\r\n" + 
			"Dallas Love Field DAL,\r\n" + 
			"Dallas/Fort Worth DFW,\r\n" + 
			"Damascus DAM,\r\n" + 
			"Dammam-King Fahd OED,\r\n" + 
			"Dane County Regional MSN,\r\n" + 
			"Dar-es-Salaam DAR,\r\n" + 
			"Darwin Int'l DRW,\r\n" + 
			"Davao Int'l DVO,\r\n" + 
			"Dayton DAY,\r\n" + 
			"Daytona Beach Int´l DAB,\r\n" + 
			"Deauville/Saint Gatien DOL,\r\n" + 
			"Decatur DEC,\r\n" + 
			"Delhi-Indira Ghandi DEL,\r\n" + 
			"Denver DEN,\r\n" + 
			"Des Moines DSM,\r\n" + 
			"Detroit City DET,\r\n" + 
			"Detroit Metropolitan Wayne County DTW,\r\n" + 
			"Dhahran DHA,\r\n" + 
			"Dhaka-Zia DAC,\r\n" + 
			"Dijon-Bourgogne Aéroport DIJ,\r\n" + 
			"Dinard/Plertuit/St Malo DNR,\r\n" + 
			"Djerba-Zarzis DJE,\r\n" + 
			"Djibouti – Ambouli JIB,\r\n" + 
			"Dnepropetrovsk DNK,\r\n" + 
			"Doha DOH,\r\n" + 
			"Dole/Tavaux DLE,\r\n" + 
			"Donegal Int´l CFN,\r\n" + 
			"Dortmund – Wickede DTM,\r\n" + 
			"Dothan Regional DHN,\r\n" + 
			"Douala DLA,\r\n" + 
			"Dresden DRS,\r\n" + 
			"Dubai DXB,\r\n" + 
			"Dublin DUB,\r\n" + 
			"Dubois-Jefferson County DUJ,\r\n" + 
			"Dubrovnik DBV,\r\n" + 
			"Dubuque Regional DBQ,\r\n" + 
			"Dundee DND,\r\n" + 
			"Dunedin Ltd DUD,\r\n" + 
			"Durango – La Plata County DRO,\r\n" + 
			"Durban DUR,\r\n" + 
			"Dushanbe DYU,\r\n" + 
			"Düsseldorf DUS,\r\n" + 
			"Düsseldorf Express- Mönchengladbach MGL,\r\n" + 
			"East London ELS,\r\n" + 
			"East Midlands EMA,\r\n" + 
			"Eastern Iowa CID,\r\n" + 
			"Edinburgh EDI,\r\n" + 
			"Edmonton YEG,\r\n" + 
			"Egilsstadir EGS,\r\n" + 
			"Eilat-J Hozman ETH,\r\n" + 
			"Eindhoven EIN,\r\n" + 
			"Ekaterinburg-Koltcovo SVX,\r\n" + 
			"El Paso ELP,\r\n" + 
			"El Salvador Int´l SAL,\r\n" + 
			"Elmira/Coring Regional ELM,\r\n" + 
			"Enontekiö ENF,\r\n" + 
			"Enschede Twente ENS,\r\n" + 
			"Entebbe EBB,\r\n" + 
			"Epinal/Mirecourt EPL,\r\n" + 
			"Erfurt ERF,\r\n" + 
			"Erie ERI,\r\n" + 
			"Esbjerg EBJ,\r\n" + 
			"Essen/Mulheim ESS,\r\n" + 
			"Essendon MEB,\r\n" + 
			"Evansville Regional EVV,\r\n" + 
			"Exeter EXT,\r\n" + 
			"Fairbanks Int´l FAI,\r\n" + 
			"Faleolo APW,\r\n" + 
			"Fargo-Hector FAR,\r\n" + 
			"Farnborough FAB,\r\n" + 
			"Faro FAO,\r\n" + 
			"Fayetteville Municipal – Drake Field FYV,\r\n" + 
			"Fayetteville Regional FAY,\r\n" + 
			"Fayetteville-Lincoln County Regional FYM,\r\n" + 
			"Fes Saiss FEZ,\r\n" + 
			"Fiji-Suva Nausori Int'l SUV,\r\n" + 
			"Fiji-Nadi NAN,\r\n" + 
			"Flagstaff Pulliam FLG,\r\n" + 
			"Flamingo BON,\r\n" + 
			"Flint-Bishop FNT,\r\n" + 
			"Florence Regional FLO,\r\n" + 
			"Florence-Amerigo Vespucci FLR,\r\n" + 
			"Flores FLW,\r\n" + 
			"Forli FRL,\r\n" + 
			"Fort Collins-Loveland Municipal FNL,\r\n" + 
			"Fort Lauderdale-Hollywood Int´l FLL,\r\n" + 
			"Fort McMurray YMM,\r\n" + 
			"Fort Myers-SW Florida Int'l RSW,\r\n" + 
			"Fort Pierce-St Lucie County Int´l FPR,\r\n" + 
			"Fort Smith FSM,\r\n" + 
			"Fort Wayne FWA,\r\n" + 
			"Fortaleza FOR,\r\n" + 
			"Foz do Iguaçu-Cataratas Int'l IGU,\r\n" + 
			"Franceville-Mvengue MVB,\r\n" + 
			"Francistown FRW,\r\n" + 
			"Frankfurt FRA,\r\n" + 
			"Frankfurt-Hahn HHN,\r\n" + 
			"Freetown-Lunghi FNA,\r\n" + 
			"Fresno Yosemite FAT,\r\n" + 
			"Friedrichshafen/Lowental FDH,\r\n" + 
			"Fua´amotu Int´l TBU,\r\n" + 
			"Fuerteventura FUE,\r\n" + 
			"Fujairah FJR,\r\n" + 
			"Fukui FKJ,\r\n" + 
			"Funchal-o da Madeira FNC,\r\n" + 
			"Gaborone-Seretse Khama GBE,\r\n" + 
			"Gainesville Regional GLE,\r\n" + 
			"Galway GWY,\r\n" + 
			"Garoua GOU,\r\n" + 
			"Gaya GAY,\r\n" + 
			"Gdansk-Trojmiasto Ltd GDN,\r\n" + 
			"Geilo-Dagali DLD,\r\n" + 
			"Geneva GVA,\r\n" + 
			"Genoa GOA,\r\n" + 
			"George GRJ,\r\n" + 
			"Georgetown-Cheddi Jagan Int´l GEO,\r\n" + 
			"Gerona-Costa Brava GRO,\r\n" + 
			"Gibraltar GIB,\r\n" + 
			"Glasgow Ltd GLA,\r\n" + 
			"Glasgow-Prestwick PIK,\r\n" + 
			"Gloucestershire GLO,\r\n" + 
			"Goa-Dabolim GOI,\r\n" + 
			"Gomel (Pokalubichi) GME,\r\n" + 
			"Gorna Orjahovica GOZ,\r\n" + 
			"Gran Canaria LPA,\r\n" + 
			"Granada GRX,\r\n" + 
			"Grand Bahama FPO,\r\n" + 
			"Grand Cayman-Owen Roberts Int´l GCM,\r\n" + 
			"Grand Forks Int'l GFK,\r\n" + 
			"Grand Junction-Walker Field GJT,\r\n" + 
			"Grand Rapids/Kent County Int´l GPZ,\r\n" + 
			"Grand Turk GDT,\r\n" + 
			"Grande Case-L´Esperance SFG,\r\n" + 
			"Grant County MWH,\r\n" + 
			"Grantley Adams Int´l BGI,\r\n" + 
			"Graz GRZ,\r\n" + 
			"Great Falls GTF,\r\n" + 
			"Greater Los Angeles/March GlobalPort RIV,\r\n" + 
			"Greater Rochester Int´l ROC,\r\n" + 
			"Greenville Spartanburg GSP,\r\n" + 
			"Grenada-Point Salines Int´l GND,\r\n" + 
			"Grenoble/Saint-Geoirs GNB,\r\n" + 
			"Groningen Eelde GRQ,\r\n" + 
			"Guadalajarra-Don Miguel Hidalgo GDL,\r\n" + 
			"Guam-Antonio BWon Pat Int´l GUM,\r\n" + 
			"Guangzhou Baiyun CAN,\r\n" + 
			"Guatemala City-La Aurora GUA,\r\n" + 
			"Guayaquil-Simon Bolivar GYE,\r\n" + 
			"Guaymas-General Jose Maria Yanez Intl GYM,\r\n" + 
			"Gulfport-Biloxi GPT,\r\n" + 
			"Göteborg City GSE,\r\n" + 
			"Göteborg-Landvetter GOT,\r\n" + 
			"Hagerstown Regional HGR,\r\n" + 
			"Haifa-U Michaeli HFA,\r\n" + 
			"Halifax Stanfeld YHZ,\r\n" + 
			"Hamburg HAM,\r\n" + 
			"Hamilton YHM,\r\n" + 
			"Hannover HAJ,\r\n" + 
			"Hanoi-Noi Bai HAN,\r\n" + 
			"Harare HRE,\r\n" + 
			"Harbin-Taiping HRB,\r\n" + 
			"Harrisburg HAR,\r\n" + 
			"Harstad/Narvik-Evenes EVE,\r\n" + 
			"Hartford-Springfeld – Bradley BDL,\r\n" + 
			"Hastings Municipal HSI,\r\n" + 
			"Hat Yai Int'l HDY,\r\n" + 
			"Haugesund HAU,\r\n" + 
			"Haverfordwest HAW,\r\n" + 
			"Helsinki-Malmi HEM,\r\n" + 
			"Helsinki-Vantaa HEL,\r\n" + 
			"Henderson HIR,\r\n" + 
			"Heraklion-Nikos Kazantzakis HER,\r\n" + 
			"Hickory Regional HKY,\r\n" + 
			"Hierro VDE,\r\n" + 
			"Hilton Head Island HXD,\r\n" + 
			"Hiroshima HIJ,\r\n" + 
			"Ho Chi Minh City-Tan Son Nhat Int´l SGN,\r\n" + 
			"Hobart HBA,\r\n" + 
			"Holguin-Frank Pais Int´l HOG,\r\n" + 
			"Hong Kong (HKG) HKG,\r\n" + 
			"Honolulu HNL,\r\n" + 
			"Horta HOR,\r\n" + 
			"Houston-George Bush Intercontinental IAH,\r\n" + 
			"Houston-William P Hobby HOU,\r\n" + 
			"Humberside Ltd HUY,\r\n" + 
			"Huntington Tri-State HTS,\r\n" + 
			"Huntsville HSV,\r\n" + 
			"Hurgadah HRG,\r\n" + 
			",\r\n" + 
			"Hyderabad HYD,\r\n" + 
			"Ibiza IBZ,\r\n" + 
			"Ile d´Yeu-Grand Phare IDY,\r\n" + 
			"Indianapolis IND,\r\n" + 
			"Innsbruck INN,\r\n" + 
			"Inverness-Dalcross INV,\r\n" + 
			"Inyokern-Kern County IYK,\r\n" + 
			"Ioannina National IOA,\r\n" + 
			"Ipoh-Sultan Azlan Shah IPH,\r\n" + 
			"Iquitos IQT,\r\n" + 
			"Irkutsk IKT,\r\n" + 
			"Islamabad ISB,\r\n" + 
			"Islay ILY,\r\n" + 
			"Isle of Man IOM,\r\n" + 
			"Isles of Scilly-St Mary's ISC,\r\n" + 
			"Istanbul-Atatürk IST,\r\n" + 
			"Ithaca-Tompkins County ITH,\r\n" + 
			"Ivalo Int'l IVL,\r\n" + 
			"Izmir-Adnan Menderes ADB,\r\n" + 
			"Jackson Hole JAC,\r\n" + 
			"Jackson Int´l JAN,\r\n" + 
			"Jacksonville JAX,\r\n" + 
			"Jaipur-Sanganeer JAI,\r\n" + 
			"Jakarta-Halim Perdanakusuma Int´l HLP,\r\n" + 
			"Jakarta-Soekarno Hatta JKT,\r\n" + 
			"Jeddah-King Abdulaziz JED,\r\n" + 
			"Joe Foss Field-Sioux Falls FSD,\r\n" + 
			"Joensuu JOE,\r\n" + 
			"Johannesburg JNB,\r\n" + 
			"Johnstown-Cambria County JST,\r\n" + 
			"Johor Bahru-Sultan Ismail JHB,\r\n" + 
			"Jyvaskyla JYV,\r\n" + 
			"Jönköping JKJ,\r\n" + 
			"Kabul-Khwaja Rawash KBL,\r\n" + 
			"Kajaani KAJ,\r\n" + 
			"Kalamazoo/Battle Creek Int´l AZO,\r\n" + 
			"Kalmar KLR,\r\n" + 
			"Kano-Mallam Aminu Kano KAN,\r\n" + 
			"Kansas City MCI,\r\n" + 
			"Kansas City Downtown MKC,\r\n" + 
			"Kaohsiung Int´l KHH,\r\n" + 
			"Karachi KHI,\r\n" + 
			"Karaganda-Sary Arka KGF,\r\n" + 
			"Kariba KAB,\r\n" + 
			"Karlovy Vary KLV,\r\n" + 
			"Karonga KGJ,\r\n" + 
			"Karup KRP,\r\n" + 
		
			"Kasane BBK,\r\n" + 
			"Kassel KSF,\r\n" + 
			"Kathmandu-Tribhuvan KTM,\r\n" + 
			"Katowice KTW,\r\n" + 
			"Kaunas KUN,\r\n" + 
			"Kavala-Megas Alexandros Int'l KVA,\r\n" + 
			"Kazan KZN,\r\n" + 
			"Kefallinia EFL,\r\n" + 
			"Keflavik KEF,\r\n" + 
			"Kelowna YLW,\r\n" + 
			"Kemi-Tornio KEM,\r\n" + 
			"Kerry KIR,\r\n" + 
			"Key West EYW,\r\n" + 
			"Khabarovsk-Novy KHV,\r\n" + 
			"Khartoum KRT,\r\n" + 
			"Kiev-Boryspil State KBP,\r\n" + 
			"Kiev-Zulhany IEV,\r\n" + 
			"Kigali KGL,\r\n" + 
			"Kilimanjaro JRO,\r\n" + 
			"Kimberley KIM,\r\n" + 
			"Kingston-Norman Manley KIN,\r\n" + 
			"Kinshasa-N´Djili FIH,\r\n" + 
			"Kinston-North Carolina Global Transpark ISO,\r\n" + 
			"Kirkenes KKN,\r\n" + 
			"Kirkwall KOI,\r\n" + 
			"Kiruna KRN,\r\n" + 
			"Kittilä KTT,\r\n" + 
			"Klagenfurt KLU,\r\n" + 
			"Klamath Falls Int´l LMT,\r\n" + 
			"Knock Int´l NOC,\r\n" + 
			"Knoxville-McGhee Tyson TYS,\r\n" + 
			"Kochi KCZ,\r\n" + 
			"Kolkata-Netaji Subhas Chanra Bose Int´l CCU,\r\n" + 
			"Komatsu KMQ,\r\n" + 
			"Kortrijk-Wevelgem/Flanders Int´l FIA,\r\n" + 
			"Kos-Ippokratis KGS,\r\n" + 
			"Kosice KSC,\r\n" + 
			"Kota Bharu-Sultan Ismail Petra KBR,\r\n" + 
			"Kota Kinabalu Int´l BKI,\r\n" + 
			"Kotoka ACC,\r\n" + 
			"Krakow-Balice KRK,\r\n" + 
			"Krasnoyarsk KJA,\r\n" + 
			"Kristianstad-Everod KID,\r\n" + 
			"Krivij Rig KWG,\r\n" + 
			"Kruunupyy-Kokkola-Pietarsaari KOK,\r\n" + 
			"Kuala Lumpur-KLIA KUL,\r\n" + 
			"Kuala Lumpur-Sultan Abdul Aziz Shah SZB,\r\n" + 
			"Kuala Terengganu-Sultan Mahmud TGG,\r\n" + 
			"Kuantan-Sultan Haji Ahmad Shah KUA,\r\n" + 
			"Kuching Int´l KCH,\r\n" + 
			"Kumamoto KMJ,\r\n" + 
			"Kumasi KMS,\r\n" + 
			"Kunming-Wujiaba KMG,\r\n" + 
			"Kuopio KUO,\r\n" + 
			"Kuressaare URE,\r\n" + 
			"Kuusamo KAO,\r\n" + 
			"Kuwait KWI,\r\n" + 
			"Kärdla KDL,\r\n" + 
			"La Ceiba-Golson LCE,\r\n" + 
			"La Coruña LCG,\r\n" + 
			"La Crosse Municipal LSE,\r\n" + 
			"La Havana-Jose Marti HAV,\r\n" + 
			"La Palma SPC,\r\n" + 
			"La Paz-El Alto LPB,\r\n" + 
			"La Paz-Manuel de Leon LAP,\r\n" + 
			"La Rochelle-Ile de Ré LRH,\r\n" + 
			"Laayoune Hassan EUN,\r\n" + 
			"Labuan LBU,\r\n" + 
			"Lae LAE,\r\n" + 
			"Lafayette Regional LFT,\r\n" + 
			"Lagos-Murtala Muhammed LOS,\r\n" + 
			"Lahad Datu LDU,\r\n" + 
			"Lahore-Allama Iqbal LHE,\r\n" + 
			"Lahr-Black Forest LHA,\r\n" + 
			"Lake Tahoe TVL,\r\n" + 
			"Lakselv-Banak LKL,\r\n" + 
			"Lambarene LBQ,\r\n" + 
			"Lamezia SUF,\r\n" + 
			"Lancaster LNS,\r\n" + 
			"Langkawi LGK,\r\n" + 
			"Lannion LAI,\r\n" + 
			"Lanseria HLA,\r\n" + 
			"Lansing-Capital City LAN,\r\n" + 
			"Lanzarote ACE,\r\n" + 
			"Lappeenranta LPP,\r\n" + 
			"Laredo Int´l LRD,\r\n" + 
			"Larnaca LCA,\r\n" + 
			"Las Vegas-McCarran LAS,\r\n" + 
			"Launceston LST,\r\n" + 
			"Le Bourget LBG,\r\n" + 
			"Le Havre/Octeville LEH,\r\n" + 
			"Le Touquet-Côte d´Opale LTQ,\r\n" + 
			"Leeds Bradford LBA,\r\n" + 
			"Lehigh Valley ABE,\r\n" + 
			"Leipzig/Halle LEJ,\r\n" + 
			"Lelystad LEY,\r\n" + 
			"Lexington/Blue Grass LEX,\r\n" + 
			"Libreville-Leon M´Ba Int´l LBV,\r\n" + 
			"Liepaja LPX,\r\n" + 
			"Lihue LIH,\r\n" + 
			"Lille LIL,\r\n" + 
			"Lilongwe LLW,\r\n" + 
			"Lima-Jorge Chavez CLX,\r\n" + 
			"Limnos LXS,\r\n" + 
			"Limoges/Bellegarde LIG,\r\n" + 
			"Limon LMH,\r\n" + 
			"Linz-Blue Danube LNZ,\r\n" + 
			"Lisbon LIS,\r\n" + 
			"Little Rock National LIT,\r\n" + 
			"Liverpool-John Lennon LPL,\r\n" + 
			"Livingstone LVI,\r\n" + 
			"Liège LGG,\r\n" + 
			"Ljubljana D D LJU,\r\n" + 
			"Ljubljana D Dndoza-El Plumerillo MDZ,\r\n" + 
			"Lome-Tokoin LFW,\r\n" + 
			"London-Biggin Hill BQH,\r\n" + 
			"London-City LCY,\r\n" + 
			"London-Gatwick LGW,\r\n" + 
			"London-Heathrow LHR,\r\n" + 
			"London-Luton LTN,\r\n" + 
			"London-Manston MSE,\r\n" + 
			"London-Southend SEN,\r\n" + 
			"London-Stansted STN,\r\n" + 
			"Long Beach LGB,\r\n" + 
			"Long Island-MacArthur ISP,\r\n" + 
			"Lorain County Regional LPR,\r\n" + 
			"Lorient/Lann-Bihoué LRT,\r\n" + 
			"Los Angeles LAX,\r\n" + 
			"Louisville SDF,\r\n" + 
			"Luanda-4 de Fevereiro LAD,\r\n" + 
			"Lubbock LBB,\r\n" + 
			"Lucknow-Amausi LKO,\r\n" + 
			"Luebeck-Blankensee LBC,\r\n" + 
			"Lugano LUG,\r\n" + 
			"Lulea-Kallax Cargo LLA,\r\n" + 
			"Lusaka LUN,\r\n" + 
			"Luxembourg-Findel LUX,\r\n" + 
			"Luxor LXR,\r\n" + 
			"Lydd LYX,\r\n" + 
			"Lynchburg Regional LYH,\r\n" + 
			"Lyon-Aéroport Lyon-Saint Exupéry LYS,\r\n" + 
			"Lyon/Bron Int´l LYS,\r\n" + 
			"Maastricht Aachen MST,\r\n" + 
			"Macau MFM,\r\n" + 
			"Mackay MKY,\r\n" + 
			"Mactan-Cebu Int´l NOP,\r\n" + 
			"Madrid-Barajas MAD,\r\n" + 
			"Madrid-Cuatro Vientos MCV,\r\n" + 
			"Magadan Sokol GDX,\r\n" + 
			"Makedonia-Thessaloniki SKG,\r\n" + 
			"Malabo SSG,\r\n" + 
			"Malaga AGP,\r\n" + 
			"Male MLE,\r\n" + 
			"Malmo-Sturup MMX,\r\n" + 
			"Malta Int'l MLA,\r\n" + 
			"Manado-Sam Ratulangi MDC,\r\n" + 
			"Managua-Augusto Cesar Sandino MGA,\r\n" + 
			"Manaus-Eduardo Gomes Int´l MAO,\r\n" + 
			"Manchester MHT,\r\n" + 
			"Manchester MAN,\r\n" + 
			"Mandalay MDL,\r\n" + 
			"Manila-Ninoy Aquino Int´l MNL,\r\n" + 
			"Manzanillo-Sierra Maestra Int´l MZO,\r\n" + 
			"Maputo MPM,\r\n" + 
			"Marathon MTH,\r\n" + 
			"Maribor Aerodrom MBX,\r\n" + 
			"Mariehamn MHQ,\r\n" + 
			"Marrakech-Menara RAK,\r\n" + 
			"Marseille/Provence MRS,\r\n" + 
			"Martinique-Lamentin FDF,\r\n" + 
			"Maseru-Moshoeshoe 1 MSU,\r\n" + 
			"Mason City Municipal MCW,\r\n" + 
			"Matamoros-General Servando Canales MAM,\r\n" + 
			"Matsapha MTS,\r\n" + 
			"Matsumoto MMJ,\r\n" + 
			"Maun MUB,\r\n" + 
			"Mazatlan-General Rafael Buelna MZT,\r\n" + 
			"Mbandaka MDK,\r\n" + 
			"McAllen-Miller MFE,\r\n" + 
			"Medan-Polonia MES,\r\n" + 
			"Medellin-Jose Maria Cordova MDE,\r\n" + 
			"Melaka-Batu Berendam MKZ,\r\n" + 
			"Melbourne Int'l MLB,\r\n" + 
			"Melbourne-Tullamarine MEL,\r\n" + 
			"Melilla MLN,\r\n" + 
			"Melo-Aeropuerto Int´l de Cerro Largo MLZ,\r\n" + 
			"Melville Hall DOM,\r\n" + 
			"Memphis MEM,\r\n" +  
			"Menorca MAH,\r\n" + 
			"Mercedita PSE,\r\n" + 
			"Merida-Licenciado Manuel Crecencio Rejon Int'l MID,\r\n" + 
			"Meridian Regional-Key Field MEI,\r\n" + 
			"Metz/Nancy/Lorraine ETZ,\r\n" + 
			"Mexico-Benito Juarez MEX,\r\n" + 
			"Miami MIA,\r\n" + 
			"Midland MAF,\r\n" + 
			"Mikkeli City MIK,\r\n" + 
			"Milan-Orio Al Serio BGY,\r\n" + 
			"Milan-Linate LIN,\r\n" + 
			"Milan-Malpensa MXP,\r\n" + 
			"Milwaukee-General Mitchell Int´l MKE,\r\n" + 
			"Minneapolis-St Paul Int´l MSP,\r\n" + 
			"Minot MOT,\r\n" + 
			"Minsk National MSQ,\r\n" + 
			"Miri MYY,\r\n" + 
			"Misawa MSJ,\r\n" + 
			"Missoula Int´l-Johnson-Bell Field MSO,\r\n" + 
			"Mitilini MJT,\r\n" + 
			"Mobile Downtown BFM,\r\n" + 
			"Mobile Regional MOB,\r\n" + 
			"Modesto City County MOD,\r\n" + 
			"Mogadishu MGQ,\r\n" + 
			"Molde-Aaro MOL,\r\n" + 
			"Mombasa-Moi Int´l MBA,\r\n" + 
			"Monaco Heliport MCM,\r\n" + 
			"Moncton YQM,\r\n" + 
			"Monrovia-Roberts ROB,\r\n" + 
			"Montego Bay-Sangster MBJ,\r\n" + 
			"Monterrey MTY,\r\n" + 
			"Montevideo-Carrasco MUD,\r\n" + 
			"Montpellier-Mediterranée Aéroport MPL,\r\n" + 
			"Montréal–Mirabel YMX,\r\n" + 
			"Montréal–Pierre Elliott Trudeau YUL,\r\n" + 
			"Montserrat MNI,\r\n" + 
			"Moorabbin MBW,\r\n" + 
			"Mora-Siljan MXX,\r\n" + 
			"Moscow-Domodedovo DME,\r\n" + 
			"Moscow-Sheremetyevo SVO,\r\n" + 
			"Moscow-Vnukovo VKO,\r\n" + 
			"Mostar OMO,\r\n" + 
			"Mount Isa ISA,\r\n" + 
			"Mumbai/Bombay-Chhatarpati Shivaji BOM,\r\n" + 
			"Munich MUC,\r\n" + 
			"Murmansk MMK,\r\n" + 
			"Muscat-Seeb MCT,\r\n" + 
			"Münster-Osnabrück MSR,\r\n" + 
			"Nagoya NGO,\r\n" + 
			"Nairobi-Jomo Kenyatta NBO,\r\n" + 
			"Nampula APL,\r\n" + 
			"Nancy/Essey Aéroport ENC,\r\n" + 
			"Nanjing Lukou Co Ltd NKG,\r\n" + 
			"Nantes-Atlantique NTE,\r\n" + 
			"Nantucket Memorial ACK,\r\n" + 
			"Naples Municipal APF,\r\n" + 
			"Naples-Capodichino NAP,\r\n" + 
			"Narssarssuaq UAK,\r\n" + 
			"Nashville BNA,\r\n" + 
			"Nassau NAS,\r\n" + 
			"Natal–Augusto Severo NAT,\r\n" + 
			"Nauru INU,\r\n" + 
			"Ndola and Kitwe NLA,\r\n" + 
			"Nevis-Newcastle NEV,\r\n" + 
			"New Caledonia NOU,\r\n" + 
			"New Haven HVN,\r\n" + 
			"New Orleans-Louis Armstrong MSY,\r\n" + 
			"New York-John F Kennedy JFK,\r\n" + 
			"New York-La Guardia LGA,\r\n" + 
			"Newark EWR,\r\n" + 
			"Newcastle NTL,\r\n" + 
			"Newcastle NCL,\r\n" + 
			"Newquay Cornwall NQY,\r\n" + 
			"Niamey Diori Hamani NIM,\r\n" + 
			"Nice/Cote,\r\n" + 
			"DAzur NCE,\r\n" + 
			"Niigata KIJ,\r\n" + 
			"Nimes/Arles/Camargue FNI,\r\n" + 
			"Nogales NOG,\r\n" + 
			"Norfolk ORF,\r\n" + 
			"Norrköping NRK,\r\n" + 
			"North Platte Regional LBF,\r\n" + 
			"Northern Maine Regional PQI,\r\n" + 
			"Norwich NWI,\r\n" + 
			"Nouadhibou Aerodrome NDB,\r\n" + 
			"Nouakchott Aerodrome NKO,\r\n" + 
			"Novosibirsk Tolmachevo OVB,\r\n" + 
			"Nuevo Laredo–Quetzalcoatl NLD,\r\n" + 
			"Nuremberg NUE N´Djamena NDH,\r\n" + 
			"Oakland OAK,\r\n" + 
			"Oaxaca OAX,\r\n" + 
			"Odense ODE,\r\n" + 
			"Odessa ODS,\r\n" + 
			"Ohrid OHD,\r\n" + 
			"Okayama OKJ,\r\n" + 
			"Okinawa/Naha OKA,\r\n" + 
			"Oklahoma City-Will Rogers World OKC,\r\n" + 
			"Olbia-Costa Smerelda OLB,\r\n" + 
			"Omaha-Eppley Airfeld OMA,\r\n" + 
			"Ontario Int'l ONT,\r\n" + 
			"Oporto-Fr SA Carneiro OPO,\r\n" + 
			"Orkney Is–Eday Airstrip EOI,\r\n" + 
			"Orkney Is-N Ronaldsay Airstrip NRL,\r\n" + 
			"Orlando MCO,\r\n" + 
			"Orlando/Sanford Central Florida Regional SFB,\r\n" + 
			"Osaka-Itami ITM,\r\n" + 
			"Osaka-Kansai Co Ltd KIX,\r\n" + 
			"Oslo-Gardermoen GEN,\r\n" + 
			"Ostend OST,\r\n" + 
			"Ostrava Int´l OSR,\r\n" + 
			"Ottawa YOW,\r\n" + 
			"Ouagadougou OUA,\r\n" + 
			"Ouarzazate OZZ,\r\n" + 
			"Oujda Angads OUD,\r\n" + 
			"Oulu OUL,\r\n" + 
			"Oxford OXF,\r\n" + 
			"Paderborn/Lippstadt PAD,\r\n" + 
			"Pago Pago PPG,\r\n" + 
			"Palanga PLQ,\r\n" + 
			"Palembang-Sultan Mahmud Badaruddin II PLM,\r\n" + 
			"Palermo-o Falcone e Borsellino PMO,\r\n" + 
			"Palm Beach Int´l PBI,\r\n" + 
			"Palm Springs Regional PSP,\r\n" + 
			"Palma De Mallorca PMI,\r\n" + 
			"Pamplona PNA,\r\n" + 
			"Panama City-Tocumen PTY,\r\n" + 
			"Panama City/Bay County Int´l PFN,\r\n" + 
			"Paphos PFO,\r\n" + 
			"Paramaribo-Johan Adolf Pengel Int´l PBM,\r\n" + 
			"Pardubice PED,\r\n" + 
			"Paris-Charles De Gaulle CDG,\r\n" + 
			"Paris-Orly ORY,\r\n" + 
			"Paris-Pontoise POX,\r\n" + 
			"Parkersburg-Mid-Ohio Valley Regional PKB,\r\n" + 
			"Paro PBH,\r\n" + 
			"Patna PAT,\r\n" + 
			"Patras/Araxos National GPA,\r\n" + 
			"Pau-Pyrenees PUF,\r\n" + 
			"Penang PEN,\r\n" + 
			"Pendleton/Eastern Oregon Regional PDT,\r\n" + 
			"Pensacola PNS,\r\n" + 
			"Penzance Heliport PZE,\r\n" + 
			"Peoria-Greater Peoria Regional PIA,\r\n" + 
			"Pereira-Matecana PEI,\r\n" + 
			"Perpignan/Rivesaltes PGF,\r\n" + 
			"Perth Int´l-Westralia Corporation PER,\r\n" + 
			"Peru/Grissom Aeroplex IND,\r\n" + 
			"Peshawar PEW,\r\n" + 
			"Petropavlovsk-Kamchatsky – Yelizovo PKC,\r\n" + 
			"Philadelphia PHL,\r\n" + 
			"Phnom Penh PNH,\r\n" + 
			"Phoenix Sky Harbor Int´l PHX,\r\n" + 
			"Phuket Int´l HKT,\r\n" + 
			"Piarco POS,\r\n" + 
			"Piedmont Triad Int´l GSO,\r\n" + 
			"Piestany PZY,\r\n" + 
			"Pilanesburg NTY,\r\n" + 
			"Pisa PSA,\r\n" + 
			"Pittsburgh DTP,\r\n" + 
			"Piura PIU,\r\n" + 
			"Plattsburgh Clinton County PLB,\r\n" + 
			"Plattsburgh Int´l AFB PBG,\r\n" + 
			"Plovdiv PDV,\r\n" + 
			"Plymouth City PLH,\r\n" + 
			"Point-a-Pitre Le Raizet PTP,\r\n" + 
			"Pointe-Noire Aerodrome PNR,\r\n" + 
			"Poitiers-Biard PIS,\r\n" + 
			"Ponta Pora Int´l PMG,\r\n" + 
			"Pontianak-Supadio PNK,\r\n" + 
			"Poprad-Tatry TAT,\r\n" + 
			"Pori POR,\r\n" + 
			"Port Angeles-William R Fairchild Int´l CLM,\r\n" + 
			"Port Elizabeth PLZ,\r\n" + 
			"Port Gentil POG,\r\n" + 
			"Port Harcourt PHC,\r\n" + 
			"Port Moresby/Jacksons POM,\r\n" + 
			"Port Vila-Bauerfeld VLI,\r\n" + 
			"Port-au-Prince PAP,\r\n" + 
			"Portland PDX,\r\n" + 
			"Porto Alegre-Salgado Filho Int´l POA,\r\n" + 
			"Porto Santo PXO,\r\n" + 
			"Poughkeepsie-Dutchess County POU,\r\n" + 
			"Poza Rica-Tajin PAZ,\r\n" + 
			"Poznan-Lawica POZ,\r\n" + 
			"Prague-Ruzyne PRG,\r\n" + 
			"Prince George YXS,\r\n" + 
			"Providence-Theodore Francis Green PVD,\r\n" + 
			"Providenciales PLS,\r\n" + 
			"Provincetown Municipal PNN,\r\n" + 
			"Puebla-Hermanos Serdan PBC,\r\n" + 
			"Puerto Montt-El Tepual PMC,\r\n" + 
			"Puerto Plata POP,\r\n" + 
			"Puerto Vallarta Int´l-Gustavo Diaz Ordaz PVR,\r\n" + 
			"Pula PUY,\r\n" + 
			"Punta Arenas PUQ,\r\n" + 
			"P´yongyang-Sunan FNJ,\r\n" + 
			"Quaid-e-Azam KHI,\r\n" + 
			"Querétaro-Ingeniero F Espinoza Gutierrez Int´l QRO,\r\n" + 
			"Quimper-Pluguffan UIP,\r\n" + 
			"Quito-Mariscal Sucre UIO,\r\n" + 
			"Québec YQB,\r\n" + 
			"Rabat-Sale RBA,\r\n" + 
			"Rabaul-Lakunai RAB,\r\n" + 
			"Rafha RAH,\r\n" + 
			"Raleigh-Durham Int´l RDU,\r\n" + 
			"Rapid City Regional RAP,\r\n" + 
			"Ras Al Khaimah RKT,\r\n" + 
			"Reading Regional RDG,\r\n" + 
			"Recife-Guararapes/Gilberto Freyre Int´l REC,\r\n" + 
			"Redmond Municipal-Roberts Field RDM,\r\n" + 
			"Reims/Champagne RHE,\r\n" + 
			"Rennes/Saint-Jacques RNS,\r\n" + 
			"Reno/Tahoe RNO,\r\n" + 
			"Reus REU,\r\n" + 
			"Reykjavik REK,\r\n" + 
			"Rhinelander-Oneida County RHI,\r\n" + 
			"Rhodes-Diagoras RHQ,\r\n" + 
			"Richmond RIC,\r\n" + 
			"Rickenbacker LCK,\r\n" + 
			"Riga RIX,\r\n" + 
			"Rijeka-Riviera Kvarner RJK,\r\n" + 
			"Rimini-Miramareo RMI,\r\n" + 
			"Rio Branco-Presidente Medici RBR,\r\n" + 
			"Rio De Janeiro-Santos Dumont GIG,\r\n" + 
			"Rio de Janeiro-Galeão-Antonio Carlos Jobim International A GIG,\r\n" + 
			"Riyadh-King Khaled RUH,\r\n" + 
			"Roanoke Regional ROA,\r\n" + 
			"Rochester RST,\r\n" + 
			"Rock Sound RSD,\r\n" + 
			"Rocky Mount/Wilson Regional RWI,\r\n" + 
			"Rodez/Marcillac RDZ,\r\n" + 
			"Roland Garros RUN,\r\n" + 
			"Rome-Ciampino CIA,\r\n" + 
			"Rome-Leonardo da Vinci Fiumicino FCO,\r\n" + 
			"Rosh Pina-Mahanaim Ben Yaakov RPN,\r\n" + 
			"Roswell Industrial Air Center ROW,\r\n" + 
			"Rotterdam RTM,\r\n" + 
			"Rovaniemi RVN,\r\n" + 
			"Rzeszow-Jasionka RZE,\r\n" + 
			"Saarbrucken SCN,\r\n" + 
			"Sabadell QSA,\r\n" + 
			"Sacramento County System SMF,\r\n" + 
			"Saint Brieuc-Armor SBK,\r\n" + 
			"Saint Croix-Henry E Rohlsen STX,\r\n" + 
			"Saint Etienne/Boutheon EBU,\r\n" + 
			"Saint Kitts-Robert Bradshaw SKB,\r\n" + 
			"Saint Louis-Lambert Int´l STL,\r\n" + 
			"Saint Lucia-Hewanorra UVW,\r\n" + 
			"Saint Lucia-Vigie SLU,\r\n" + 
			"Saint Maarten-Princess Juliana SXM,\r\n" + 
			"Saint Thomas-Cyril E King STT,\r\n" + 
			"Saint Vincent-E T Joshua SVD,\r\n" + 
			"Saipan SPN,\r\n" + 
			"Salalah SLL,\r\n" + 
			"Salamanca SLM,\r\n" + 
			"Salina SLN,\r\n" + 
			"Salisbury/Ocean City Regional SBY,\r\n" + 
			"Salt Lake City SLC,\r\n" + 
			"Salta SLA,\r\n" + 
			"Salzburg-W A Mozart SZG,\r\n" + 
			"Samarkand SKD,\r\n" + 
			"Samos SMI,\r\n" + 
			"San Andres-Gustavo Rojas Pinilla ADZ,\r\n" + 
			"San Angelo Regional/Mathis Field SJT,\r\n" + 
			"San Antonio SAT,\r\n" + 
			"San Diego SAN,\r\n" + 
			"San Francisco SFO,\r\n" + 
			"San Javier/Murcia MJV,\r\n" + 
			"San Jose SJC,\r\n" + 
			"San Jose-Juan Santamaria SJO,\r\n" + 
			"San José-Tobias Bolanos SYQ,\r\n" + 
			"San Juan-Luiz Munoz Marin SJU,\r\n" + 
			"San Luis County Regional SBP,\r\n" + 
			"San Pedro Sula-La Mesa SAP,\r\n" + 
			"San Sebastian-Fuenterrabia EAS,\r\n" + 
			"Sanaa SAH,\r\n" + 
			"Sandakan SDK,\r\n" + 
			"Sandefjord-Torp TRF,\r\n" + 
			"Santa Ana-John Wayne SNA,\r\n" + 
			"Santa Barbara SNA,\r\n" + 
			"Santa Maria SMA,\r\n" + 
			"Santander-Parayas SDR,\r\n" + 
			
			"Santarem Int´l STM,\r\n" + 
			"Santiago SCQ,\r\n" + 
			"Santiago-Antonio Maceo SCU,\r\n" + 
			"Santiago-Arturo Merino Benitez SCL,\r\n" + 
			"Santo Domingo-Las Americas SDQ,\r\n" + 
			"Sao Tome TMS,\r\n" + 
			"Sarajevo SJJ,\r\n" + 
			"Saranac Lake-Adirondack Regional SLK,\r\n" + 
			"Sarasota Bradenton Int´l SRQ,\r\n" + 
			"Saratov-Tsentralny RTW,\r\n" + 
			"Saskatoon YXE,\r\n" + 
			"Satu Mare SUJ,\r\n" + 
			"Savannah SAV,\r\n" + 
			"Savonlinna SVL,\r\n" + 
			"Seattle/Tacoma SEA,\r\n" + 
			"Sebha SEB,\r\n" + 
			"Seinäjoki SJY,\r\n" + 
			"Selebi Phikwe PKW,\r\n" + 
			"Sendai SDJ,\r\n" + 
			"Seoul-Incheon ICN,\r\n" + 
			"Seoul-Kimpo SEL,\r\n" + 
			"Seville-San Pablo SVQ,\r\n" + 
			"Seychelles Int´l SEZ,\r\n" + 
			"Sfax-el-Maou SFA,\r\n" + 
			"Shanghai-Hong Qiao SHA,\r\n" + 
			"Shanghai-Pudong PVG,\r\n" + 
			"Shannon SHN,\r\n" + 
			"Sharjah SHJ,\r\n" + 
			"Sheffeld City SZD,\r\n" + 
			"Shenyang-Taoxian SHE,\r\n" + 
			"Shenzhen-Baoan SZX,\r\n" + 
			"Shetland Island-Sumburgh LSI,\r\n" + 
			"Shiraz-Shahid Dastghaib SYZ,\r\n" + 
			"Shoreham ESH,\r\n" + 
			"Shreveport Regional SHV,\r\n" + 
			"Sibu SBW,\r\n" + 
			"Sidney Municipal SDY,\r\n" + 
			"Singapore-Changi SIN,\r\n" + 
			"Sion SIR,\r\n" + 
			"Sioux Falls Regional FSD,\r\n" + 
			"Sioux Gateway SUX,\r\n" + 
			"Sir Seewoosagur Ramgoolam MRU,\r\n" + 
			"Skive SQW,\r\n" + 
			"Skopje SKP,\r\n" + 
			"Sliac SLD,\r\n" + 
			"Sligo Regional SXL,\r\n" + 
			"Sofa EAD SOF,\r\n" + 
			"Sondre Stromfjord/Kangerlussuaq SFJ,\r\n" + 
			"South Bend Regional SBN,\r\n" + 
			"South Caicos SLX,\r\n" + 
			"Southampton SOU,\r\n" + 
			"Split SPU,\r\n" + 
			"Spokane GEG,\r\n" + 
			"Springfeld-Branson Regional SGF,\r\n" + 
			"St Moritz-Samedan SMV,\r\n" + 
			"St Nazaire/Montoir SNR,\r\n" + 
			"St Petersburg-Clearwater Int´l PIE,\r\n" + 
			"St Petersburg-Pulkovo LED,\r\n" + 
			"St Tropez du Golfe LTT,\r\n" + 
			"St. John's YYT,\r\n" + 
			"State College SCE,\r\n" + 
			"Stauning Vestjyllands STA,\r\n" + 
			"Stavanger SVG,\r\n" + 
			"Stewart SWF,\r\n" + 
			"Stockholm-Arlanda ARN,\r\n" + 
			"Stockholm-Bromma BMA,\r\n" + 
			"Stockholm-Skavsta NYO,\r\n" + 
			"Stord-Soerstokken SRP,\r\n" + 
			"Stornoway STY,\r\n" + 
			"Strasbourg-S,\r\n" + 
			"Stuttgart STR,\r\n" + 
			"Sundsvall-Harnosand SDL,\r\n" + 
			"Surabaya-Juanda Int´l SUB,\r\n" + 
			"Surakarta-Adi Sumarmo Wiryokusumo SOC,\r\n" + 
			"Svalbard-Longyear LYR,\r\n" + 
			"Swansea SWS,\r\n" + 
			"Sydney SYD,\r\n" + 
			"Syracuse-Hancock SYR,\r\n" + 
			"Szczecin-Goleniow SZZ,\r\n" + 
			"Sao Paulo-Congonhas Int´l CGH,\r\n" + 
			"Sao Paulo-Guarulhos Int´l SAO,\r\n" + 
			"Sao Paulo-Viracopos VCP,\r\n" + 
			"Sonderborg SGD,\r\n" + 
			"Tabarka-7 Novembre Int´l TBJ,\r\n" + 
			"Tahiti-Faa´a PPT,\r\n" + 
			"Taipei-Chiang Kai Shek TPE,\r\n" + 
			"Tallinn TLL,\r\n" + 
			"Tamale ACC,\r\n" + 
			"Tampa Int´l TPA,\r\n" + 
			"Tampere-Pirkkala TMP,\r\n" + 
			"Tanga TGT,\r\n" + 
			"Tangier-Boukhalef TNG,\r\n" + 
			"Tarbes-Lourdes-Pyrennes LDE,\r\n" + 
			"Targu Mures TGM,\r\n" + 
			"Tartu Raadi Ltd TAY,\r\n" + 
			"Tashkent-Yuzhny TAS,\r\n" + 
			"Tawau TWU,\r\n" + 
			"Tbilisi TBS,\r\n" + 
			"Teesside MME,\r\n" + 
			"Tegucigalpa-Toncontin TGU,\r\n" + 
			"Tehran-Mehrabad THR,\r\n" + 
			"Tehuacán TCN,\r\n" + 
			"Tel Aviv-Ben Gurion TLV,\r\n" + 
			"Tel Aviv-Dov Hoz SDV,\r\n" + 
			"Tenerife North TFN,\r\n" + 
			"Tenerife South TFS,\r\n" + 
			"Tennant Creek TCA,\r\n" + 
			"Tepic TPQ,\r\n" + 
			"Thiruvanthapuram Int´l TRV,\r\n" + 
			"Thisted TED,\r\n" + 
			"Thunder Bay YQT,\r\n" + 
			"Tianjin-Binhai TSN,\r\n" + 
			"Tirana-Rinas Mother Teresa TIA,\r\n" + 
			"Tiree TRE,\r\n" + 
			"Tiruchirapalli TRZ,\r\n" + 
			"Tokyo-Haneda Int´l HNT,\r\n" + 
			"Tokyo-Narita Int´l NRT,\r\n" + 
			"Toledo Express TOL,\r\n" + 
			"Toluca-Licenciado Adolfo Lopez Mateos Int´l TLC,\r\n" + 
			"Toronto YYZ,\r\n" + 
			"Toulon/Hyeres TLN,\r\n" + 
			"Toulouse-Blagnac TLS,\r\n" + 
			"Townsville Int´l TSV,\r\n" + 
			"Toyama TOY,\r\n" + 
			"Tozeur-Nefta TOE,\r\n" + 
			"Trenton-Mercer County TTN,\r\n" + 
			"Treviso-San Angelo TSF,\r\n" + 
			"Tri-Cities Regional TRI,\r\n" + 
			"Trieste-R Dei Legionari TRS,\r\n" + 
			"Tripoli TIP,\r\n" + 
			"Tromso TOS,\r\n" + 
			"Trondheim/Vaernes TRD,\r\n" + 
			"Tucson TUS,\r\n" + 
			"Tulcea TCE,\r\n" + 
			"Tulsa TUL,\r\n" + 
			"Tunis-Carthage TUN,\r\n" + 
			"Tupelo Municipal TUP,\r\n" + 
			"Turin TRN,\r\n" + 
			"Turku TRK,\r\n" + 
			"Tuxtla Gutiérrez-Francisco Sarabia TGZ,\r\n" + 
			"Tyler Pounds Regional TYR,\r\n" + 
			"Tyumen-Roshchino TJM,\r\n" + 
			"Uherske Hradiste-Kunovice UHE,\r\n" + 
			"Ulan Bator-Buyant Ukha ULN,\r\n" + 
			"Ulyanovsk-Vostochny ULY,\r\n" + 
			"Umea UME,\r\n" + 
			"Upington UTN,\r\n" + 
			"Uruapan-Licenciado Y Gen Ignacio Lopez Rayon UPN,\r\n" + 
			"Urumqi-Diwopu URC,\r\n" + 
			"Utica-Oneida County UCA,\r\n" + 
			"Vaasa VAA,\r\n" + 
			"Vagar FAE,\r\n" + 
			"Valence/Chabeuil VAF,\r\n" + 
			"Valencia VLC,\r\n" + 
			"Valladolid VLL,\r\n" + 
			"Vancouver YVR,\r\n" + 
			"Varadero-Juan G Gomez Int´l VRA,\r\n" + 
			"Varanasi VNS,\r\n" + 
			"Varkaus VRK,\r\n" + 
			"Varna Ltd VAR,\r\n" + 
			"Venice-Aeroporto Marco Polo VCE,\r\n" + 
			"Vero Beach VRB,\r\n" + 
			"Verona-Valerio Catullo VRN,\r\n" + 
			"Vichy/Charmeil VHY,\r\n" + 
			"Victoria Falls VFA,\r\n" + 
			"Victoria, CA YYJ,\r\n" + 
			"Vienna VIE,\r\n" + 
			"Vientiane-Wattay VTE,\r\n" + 
			"Vigo VGO,\r\n" + 
			"Vilnius Int´l VNO,\r\n" + 
			"Virgin Gorda VIJ,\r\n" + 
			"Viseu VSE,\r\n" + 
			"Vitoria Int´l VIT,\r\n" + 
			"Vladivostok (JSC Vladivostok Air) VVO,\r\n" + 
			"Vojens-Skrydstrup SKS,\r\n" + 
			"Växjö-Urasa VXO,\r\n" + 
			"Wakkanai WKJ,\r\n" + 
			"Wallis Hihifo WLS,\r\n" + 
			"Warsaw-Frederic Chopin WAW,\r\n" + 
			"Washington-Dulles IAD,\r\n" + 
			"Washington-Ronald Reagan National DCA,\r\n" + 
			"Waterford Regional WAT,\r\n" + 
			"Waterloo Municipal ALO,\r\n" + 
			"Watertown Int´l ART,\r\n" + 
			"Wausau/Central Wisconsin Regional CWA,\r\n" + 
			"Wellington WLG,\r\n" + 
			"Wenatchee/Pangborn Memorial EAT,\r\n" + 
			"Westchester County HPN,\r\n" + 
			"Westerland-SFG Sylter Flughafen GmbH & Co GWT,\r\n" + 
			"Wichita Mid-Continent ICT,\r\n" + 
			"Wick Aerodrome WIC,\r\n" + 
			"Wilkes-Barre-Scranton Int´l WBW,\r\n" + 
			"Williams Gateway IWA,\r\n" + 
			"Williamsport Regional IPT,\r\n" + 
			"Wilmington Int´l ILM,\r\n" + 
			"Windhoek-Hosea Kutako WDH,\r\n" + 
			"Windsor, CA YQG,\r\n" + 
			"Winnipeg YWG,\r\n" + 
			"Winston-Salem INT,\r\n" + 
			"Worcester Regional ORH,\r\n" + 
			"Wroclaw-Strachowice WRO,\r\n" + 
			"Yangon RGN,\r\n" + 
			"Yaounde-Nsimalen NSI,\r\n" + 
			"Yerevan-Zvartnots EVN,\r\n" + 
			"Yogyakarta-Adi Sucipto JOG,\r\n" + 
			"Yuzhno-Sakhalinsk UUS,\r\n" + 
			"Ornsköldsvik OER,\r\n" + 
			"Ostersund OSD\r\n" + 
			""
			
	
;
	static List<String> countries;
	public DummyDB() {
		countries = new ArrayList<String>();
		StringTokenizer st = new StringTokenizer(data, ",");
		
		while(st.hasMoreTokens()) {
			countries.add(st.nextToken().trim());
		}
		totalCountries = countries.size();
	}
	
	public List<String> getData(String query) {
		String country = null;
		query = query.toLowerCase();
		List<String> matched = new ArrayList<String>();
		for(int i=0; i<totalCountries; i++) {
			country = countries.get(i).toLowerCase();
			
			
		
			if(country.startsWith(query) ||country.equals(query)) {
				matched.add(countries.get(i));
			}
			
		}
		return matched;
	}
	
	
	public boolean checkdeparture(String input) {
		
		if(data.contains(input)){
            System.out.println("yes departure is valid");
            return true;
        }  
      else{
          System.out.println("no it's not valid");
          return false;
      }
}
	
	
	public boolean checkdestination(String input) {
		
		if(data.contains(input)){
            System.out.println("yes destination is valid");
            return true;
        }  
      else{
          System.out.println("no it's not valid");
          return false;
      }
}
//	 public static String getDayOfWeek(String date){
//	  return LocalDate.parse(date, DateTimeFormatter.ofPattern("yyyy-MM-dd")).getDayOfWeek().name();
//		}
	
	
	
    public static String getDayOfWeek(String dates){
        
        // String dates="2019-10-21";
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
 LocalDate date = LocalDate.parse(dates, formatter); // LocalDate = 2010-02-23
 DayOfWeek dow = date.getDayOfWeek();  // Extracts a `DayOfWeek` enum object.
 return dow.getDisplayName(TextStyle.SHORT, Locale.US);
 


}
    
    public static String getMonth(String dates){
        
        // String dates="2019-10-21";
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
 LocalDate date = LocalDate.parse(dates, formatter); // LocalDate = 2010-02-23
Month month=date.getMonth();  // Extracts a `DayOfWeek` enum object.
 return month.getDisplayName(TextStyle.SHORT, Locale.US);
 


}
    public static String getDay(String dates){
        
        // String dates="2019-10-21";
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
 LocalDate date = LocalDate.parse(dates, formatter); // LocalDate = 2010-02-23
 int da=date.getDayOfMonth();
 
 String day=String.valueOf(da);
 return day;
 


}
    
  
	
}
