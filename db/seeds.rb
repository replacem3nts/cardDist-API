cbo1 = Cbo.create(name: 'Building One Community', username: 'B1C', password: 'Stamford')
cbo2 = Cbo.create(name: 'Unidad Latina En Accion', username: 'ULA', password: 'NewHaven')
cbo3 = Cbo.create(name: 'Americares Danbury', username: 'AmDanbury', password: 'Danbury')
cbo4 = Cbo.create(name: 'Catholic Charities Bridgeport', username: 'CCBridgeport', password: 'Bridgeport')
cbo5 = Cbo.create(name: 'Catholic Charities Hartford', username: 'CCHartford', password: 'Hartford')
cbo6 = Cbo.create(name: 'Americares Norwalk', username: 'AmNorwalk', password: 'Norwalk')
cbo7 = Cbo.create(name: 'Human Resources Agency', username: 'HRA', password: 'NewBritain')
cbo8 = Cbo.create(name: 'Windham Area Interfairth Ministry', username: 'WAIM', password: 'Willimantic')
cbo9 = Cbo.create(name: 'New Opportunities Waterbury', username: 'NOWaterbury', password: 'Waterbury')
cbo10 = Cbo.create(name: 'New Opportunities Torrington', username: 'NOTorrington', password: 'Torrington')
cbo11 = Cbo.create(name: 'Hispanic Alliance', username: 'HispanicAlliance', password: 'NL&Norwich')
cbo12 = Cbo.create(name: 'Americares Bridgeport', username: 'AmBridgeport', password: 'Bridgeport2')
cbo13 = Cbo.create(name: 'Integrated Refugee & Immigrant Services', username: 'IRIS', password: 'NewHaven2')
cbo14 = Cbo.create(name: 'New Opportunities Meriden', username: 'NOMeriden', password: 'Meriden')
cbo15 = Cbo.create(name: 'Americares Stamford', username: 'AmStamford', password: 'Stamford2')
cbo16 = Cbo.create(name: 'Generations Family Health Center', username: 'Generations', password: 'Willimantic2')

p1 = Prescriber.create(cbo: cbo1, firstname: 'Alejandra', lastname: 'Gomez', tel: '203-559-4960', email: 'agomez@building1community.org')
p2 = Prescriber.create(cbo: cbo1, firstname: 'Jennifer', lastname: 'Wiesner', tel: '203-223-2513', email: 'jwiesner@building1community.org')
p3 = Prescriber.create(cbo: cbo2, firstname: 'Megan', lastname: 'Fountain', tel: 'xxx-xxx-xxxx', email: 'megan@ulanewhaven.org')
p4 = Prescriber.create(cbo: cbo2, firstname: 'Admin', lastname: 'ULA', tel: '203-606-3484', email: 'admin@ulanewhaven.org')
p5 = Prescriber.create(cbo: cbo2, firstname: 'UnidadLatina', lastname: 'Accion', tel: '203-606-3485', email: 'ulaccion@yahoo.com')
p6 = Prescriber.create(cbo: cbo3, firstname: 'Dina', lastname: 'Valenti', tel: '203-770-5209', email: 'dvalenti@americares.org')
p7 = Prescriber.create(cbo: cbo4, firstname: 'Maria', lastname: 'Palacios', tel: '860-655-0895', email: 'mpalacios@ccfc-ct.org')
p8 = Prescriber.create(cbo: cbo4, firstname: 'Alex', lastname: 'Arevelo', tel: '203-258-9088', email: 'aarevalo@ccfc-ct.org')
p9 = Prescriber.create(cbo: cbo5, firstname: 'Liz', lastname: 'Bryden', tel: '860-728-2579', email: 'lbryden@ccaoh.org')
p10 = Prescriber.create(cbo: cbo5, firstname: 'Nilda', lastname: 'Morales-Rivera', tel: '860-718-5645', email: 'nmorales@ccaoh.org')
p11 = Prescriber.create(cbo: cbo5, firstname: 'Ivelisse', lastname: 'Acevedo', tel: '860-655-0895', email: 'iacevedo@ccaoh.org')
p12 = Prescriber.create(cbo: cbo6, firstname: 'Veronica', lastname: 'Sullivan', tel: '203-899-2493', email: 'vsullivan@americares.org')
p13 = Prescriber.create(cbo: cbo7, firstname: 'Juan', lastname: 'Berrios', tel: '860-612-1781', email: 'jberrios@hranbct.org')
p14 = Prescriber.create(cbo: cbo7, firstname: 'Helen', lastname: 'Supsinskas', tel: '860-612-1781', email: 'helens@hranbct.org')
# p15 = Prescriber.create(cbo: cbo7, firstname: , lastname: , tel: , email: )
p16 = Prescriber.create(cbo: cbo8, firstname: 'Victoria', lastname: 'Nimirowski', tel: '860-456-7270', email: 'director@waimct.org')
p17 = Prescriber.create(cbo: cbo9, firstname: 'Anastacia', lastname: 'Woolcock', tel: '203-575-4397', email: 'awoolcock@newoppinc.org')
p18 = Prescriber.create(cbo: cbo10, firstname: 'Cristina', lastname: 'Mera', tel: '860-482-9749', email: 'cmera@newoppinc.org')
p19 = Prescriber.create(cbo: cbo10, firstname: 'Maria', lastname: 'Gonzalez', tel: '860-482-9749', email: 'mlgonzalez@newoppinc.org')
p20 = Prescriber.create(cbo: cbo11, firstname: 'Migdalia', lastname: 'Salas', tel: '860-910-4489', email: 'migdalia@hispanicalliancesect.org ')
p21 = Prescriber.create(cbo: cbo11, firstname: 'Ninon', lastname: 'Guinassi', tel: '860-910-4490', email: 'ninon@hispanicalliances.ct.org')
p22 = Prescriber.create(cbo: cbo12, firstname: 'Jennifer', lastname: 'DaSilva', tel: '203-333-9175', email: 'jdasilva@americares.org')
p23 = Prescriber.create(cbo: cbo13, firstname: 'Camille', lastname: 'Kritzman', tel: '203-562-2095 ext 208', email: 'ckritzman@irisct.org')
p24 = Prescriber.create(cbo: cbo13, firstname: 'Ann', lastname: "O'Brien", tel: '203-562-2095 ext 202', email: 'obrien@irisct.org')
p25 = Prescriber.create(cbo: cbo13, firstname: 'Tabitha', lastname: 'Sookdeo', tel: '239-601-7769', email: 'tsookdeo@irisct.org')
p26 = Prescriber.create(cbo: cbo14, firstname: 'Dona', lastname: 'Ditrio', tel: '203-639-5060 ext 210', email: 'dditrio@newoppinc.org')
p27 = Prescriber.create(cbo: cbo14, firstname: 'Dawn', lastname: 'Velez', tel: '203-639-5060 ext 208', email: 'dvelez@newoppinc.org')
p28 = Prescriber.create(cbo: cbo15, firstname: 'Muguette', lastname: 'Maignan', tel: '203-399-6455', email: 'mmaignan@americares.org')
p29 = Prescriber.create(cbo: cbo16, firstname: 'Judith', lastname: 'Gaudet', tel: '860-456-6213', email: 'jgaudet@genhealth.org')

hc1 = Hc.create(name: 'DEFAULT HC',  username: 'Default', password: 'Default')
hc2 = Hc.create(name: 'CHC of Stamford',  username: 'MariaStamford', password: 'MariaRocks')
hc3 = Hc.create(name: 'CHC of Norwalk',  username: 'MariaNorwalk', password: 'MariaRocks')
hc4 = Hc.create(name: 'CHC of Danbury',  username: 'MariaDanbury', password: 'MariaRocks')
hc5 = Hc.create(name: 'CHC of New Britain',  username: 'MariaNewBritain', password: 'MariaRocks')
hc6 = Hc.create(name: 'CHC of New London',  username: 'MariaNewLondon', password: 'MariaRocks')
hc7 = Hc.create(name: 'CHC of Meriden',  username: 'MariaMeriden', password: 'MariaRocks')
hc8 = Hc.create(name: 'SouthWest Family Health Center', username: 'SouthWest', password: 'Bridgeport')
hc9 = Hc.create(name: 'Community Health Services', username: 'CHS', password: 'Hartford')
hc10 = Hc.create(name: 'Generations Family Health Center', username: 'Generations', password: 'Willimantic')
hc11 = Hc.create(name: 'StayWell Health Center', username: 'StayWell', password: 'Waterbury')
hc12 = Hc.create(name: 'CHWC of Greater Torrington', username: 'CHWC', password: 'Torrington')
hc13 = Hc.create(name: 'Optimus in Bridgeport', username: 'OptimusBridgeport', password: 'Bridgeport2')
hc14 = Hc.create(name: 'Optimus in Stamford', username: 'OptimusStamford', password: 'Stamford2')
hc15 = Hc.create(name: 'UCFS of Norwich', username: 'UCFS', password: 'Norwich')
hc16 = Hc.create(name: 'Fair Haven', username: 'FairHaven', password: 'NewHaven')

Rx.create(cbo_id: 1, hc_id: 1)
Rx.create(cbo_id: 1, hc_id: 1)
Rx.create(cbo_id: 1, hc_id: 1)
Rx.create(cbo_id: 1, hc_id: 1)
Rx.create(cbo_id: 1, hc_id: 1)
Rx.create(cbo_id: 1, hc_id: 14, language: 'EN', clienttel: '203-555-1212', prescribername: 'Alejandra Gomez', prescriberphone: '203-559-4960', prescriberemail: 'agomez@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'FR', clienttel: '203-777-7676', prescribername: 'Alejandra Gomez', prescriberphone: '203-559-4960', prescriberemail: 'agomez@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'EN', clienttel: '860-123-4567', prescribername: 'Jennifer Wiesner', prescriberphone: '203-223-2513', prescriberemail: 'jwiesner@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'SP', clienttel: '203-765-5142', prescribername: 'Jennifer Wiesner', prescriberphone: '203-223-2513', prescriberemail: 'jwiesner@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'SP', clienttel: '203-555-3333', prescribername: 'Jennifer Wiesner', prescriberphone: '203-223-2513', prescriberemail: 'jwiesner@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'SP', clienttel: '203-555-1212', prescribername: 'Alejandra Gomez', prescriberphone: '203-559-4960', prescriberemail: 'agomez@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'PT', clienttel: '203-777-7676', prescribername: 'Alejandra Gomez', prescriberphone: '203-559-4960', prescriberemail: 'agomez@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'FR', clienttel: '860-123-4567', prescribername: 'Jennifer Wiesner', prescriberphone: '203-223-2513', prescriberemail: 'jwiesner@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'EN', clienttel: '203-765-5142', prescribername: 'Jennifer Wiesner', prescriberphone: '203-223-2513', prescriberemail: 'jwiesner@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'EN', clienttel: '203-555-3333', prescribername: 'Jennifer Wiesner', prescriberphone: '203-223-2513', prescriberemail: 'jwiesner@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'SP', clienttel: '203-555-1212', prescribername: 'Alejandra Gomez', prescriberphone: '203-559-4960', prescriberemail: 'agomez@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'SP', clienttel: '203-777-7676', prescribername: 'Alejandra Gomez', prescriberphone: '203-559-4960', prescriberemail: 'agomez@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'SP', clienttel: '860-123-4567', prescribername: 'Jennifer Wiesner', prescriberphone: '203-223-2513', prescriberemail: 'jwiesner@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'FR', clienttel: '203-765-5142', prescribername: 'Jennifer Wiesner', prescriberphone: '203-223-2513', prescriberemail: 'jwiesner@building1community.org')
Rx.create(cbo_id: 1, hc_id: 14, language: 'EN', clienttel: '203-555-3333', prescribername: 'Jennifer Wiesner', prescriberphone: '203-223-2513', prescriberemail: 'jwiesner@building1community.org')

Funduse.create(kind: 'Food')
Funduse.create(kind: 'Housing')
Funduse.create(kind: 'Medicine')
Funduse.create(kind: 'Childcare')
Funduse.create(kind: 'Utilities')
Funduse.create(kind: 'Transportation')
Funduse.create(kind: 'Education')
Funduse.create(kind: 'Clothing')
Funduse.create(kind: 'Other')

Covidimpact.create(kind: 'Job Loss')
Covidimpact.create(kind: 'Income Reduction')
Covidimpact.create(kind: 'Essential Worker')
Covidimpact.create(kind: 'COVID Symptoms')
Covidimpact.create(kind: 'COVID Test')
Covidimpact.create(kind: 'COVID Diagnosis')
Covidimpact.create(kind: 'COVID Hospitalization')
Covidimpact.create(kind: 'COVID Fatality')

Doctorvisit.create(kind: 'Hospital ER')
Doctorvisit.create(kind: 'Community Health Center')
Doctorvisit.create(kind: 'Walk-in Clinic')
Doctorvisit.create(kind: "Doctor's Office")
Doctorvisit.create(kind: 'None of the Above')