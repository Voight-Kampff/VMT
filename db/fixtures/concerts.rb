Concert.seed do |s|
	s.id = 1
	s.date = DateTime.new(2013,8,25,17,0,0,'+1')
	s.head = 'Marielle et Katia Labèque, pianistes'
	s.subhead = 'Dimanche 25 août, à 17h. au château de Tannay'
	s.description = 'Les Variations Musicales de Tannay » accueillent en ouverture du Festival 2013 
	les « deux sœurs pianistes les plus célèbres de la scène classique internationale ». Formées au 
	conservatoire de Paris, elles ont remporté de nombreux prix et  l’impressionnante variété de leur 
	répertoire les fait jouer aux quatre coins de la planète : New York, Berlin, Vienne, Londres...ainsi
	 que dans les orchestres les plus prestigieux sous la direction des plus grands.'
	s.shortname = 'Marielle et Katia Labèque'
	s.price = 6000
	s.playlist = ['Debussy : Nuages et fêtes','Ravel : Rapsody espagnole','Gershwin : trois préludes',
		'Philip Glass : quatre mouvements pour deux pianos']
	s.category = 'concert'
end

Concert.seed do |s|
	s.id = 2
	s.date = DateTime.new(2013,8,28,20,0,0,'+1')
	s.head = 'David Greilsammer, en récital pour deux pianos'
	s.subhead = 'Mercredi 28 août, à 20h. au château de Tannay'
	s.description = 'Né à Jérusalem, sacré « révélation » aux Victoires de la  musique en 2008, 
	David Greilsammer est reconnu comme l’un des artistes les plus audacieux et visionnaires de sa génération.
	 En tant que pianiste, il s’est produit dans les plus grandes salles et a collaboré avec les plus grands 
	 orchestres. Il propose ce soir, à Tannay, et  en premier suisse romande, une performance pianistique 
	 passant en 65 minutes d’une sonate baroque à une sonate contemporaine et inversement.'
	s.shortname = 'David Greilsammer'
	s.price = 4000
	s.playlist = ['15 sonates de Scarlatti et de Cage']
	s.category = 'concert'
end

Concert.seed do |s|
	s.id = 3
	s.date = DateTime.new(2013,8,30,20,0,0,'+1')
	s.head = 'Béatrice Berrut, pianiste, avec l’orchestre du festival composé de musiciens de l’Orchestre de 
	la Suisse romande, sous la direction de Jonathan Haskell'
	s.subhead = 'Vendredi 30 août, à 20h. au château de Tannay'
	s.description = "Beatrice Berrut est née en 1985 dans le canton du Valais. Elle a déjà derrière elle une 
	très belle carrière internationale. Et son dernier album consacré à l’intégrale des sonates de Schumann 
	donne à entendre un souffle lyrique véritable et un grand soin apporté aux détails. Au début de cette 
	année 2013, on a pu l’entendre au Victoria Hall de Genève, invitée par les Amis de l'OSR. Gidon Kremer 
	la décrit comme «  une artiste à la sensibilité et à l'engagement impressionnants »"
	s.shortname = 'Béatrice Berrut'
	s.price = 5000
	s.playlist = ['Romance pour cordes op.42 de Sibelius','Concerto no.27, en si bémol K 595 de Mozart',
		'Pelléas et Mélisande de G.Fauré','Concerto pour piano en la mineur op.54 de R.Schumann']
	s.category = 'concert'
end

Concert.seed do |s|
	s.id = 4
	s.date = DateTime.new(2013,8,31,16,30,0,'+1')
	s.head = 'L’ensemble Intermezzo, sous la direction d’Ahmed Hamdy'
	s.subhead = 'Samedi 31 août, à 16h.30 au château de Tannay. Concert à l’intention des enfants'
	s.description = "C’est en 1768, lors de son troisième voyage à Vienne en compagnie de son père Leopold, 
	que Mozart, âgé de 12 ans seulement, compose l’opéra Bastien et Bastienne. Séduit par la charmante 
	histoire d’amour de l’intermède Le Devin du village de Jean-Jacques Rousseau, Mozart l’adapta pour 
	l’opéra et composa Bastien et Bastienne comme une pièce bucolique dans le goût champêtre de l’époque."
	s.shortname = 'L’ensemble Intermezzo'
	s.price = 0
	s.playlist = ['Bastien et Bastienne, de Mozart, avec un orchestre de musiciens de l’Orchestre de 
		chambre de Genève et de l’ensemble da Capo, un chœur d’enfants ainsi qu’une récitante.']
end

Concert.seed do |s|
	s.id = 5
	s.date = DateTime.new(2013,9,1,17,0,0,'+1')
	s.head = 'Jean-Guihen Queyras, violoncelliste, avec l’Orchestre du Festival sous la direction de 
	Jonathan Haskell'
	s.subhead = 'Dimanche 1er septembre à 17h. au château de Tannay'
	s.description = "Aussi à l’aise dans le répertoire baroque que contemporain, le violoncelliste 
	français Jean-Guihen Queyras (né en 1967) figure parmi les musiciens les plus marquants de sa 
	génération. Membre du quatuor à cordes Arcanto, il a pour partenaire privilégié de musique de 
	chambre le pianiste Alexandre Tharaud que les Variations Musicales de Tannay recevait il y a 
	deux ans. Jean-Guihen est Professeur à la Musikhochschule de Stuttgart et co-directeur artistique 
	des Rencontres Musicales de Haute-Provence qui ont lieu chaque année au mois de juillet à Forcalquier. 
	Depuis novembre 2005, il joue un violoncelle de Gioffredo Cappa de 1696."
	s.shortname = 'Jean-Guihen Queyras'
	s.price = 5000
	s.playlist = ['Sérénade pour cordes d’Elgar','Andante cantabile en ré majeur op.11 de Tchaïkovski',
		'Concerto  no.1 en ut majeur Hob.VII bl de Haydn','Elégie de la Sérénade pour cordes de Tchaïkovski',
		"St Paul's Suite pour cordes de Holst","Symphonie no.34 en do majeur K 238 de Mozart"]
	s.category = 'concert'
end

Concert.seed do |s|
	s.id = 6
	s.date = DateTime.new(2013,9,1,17,0,0,'+1')
	s.head = 'Abonnement 2013'
	s.subhead = "Libre accès à tous les concerts de l'éditition 2013"
	s.shortname = 'Abonnement'
	s.price = 20000
	s.category = 'abonnement'
end

Concert.seed do |s|
	s.id = 7
	s.head = 'Membre individuel'
	s.shortname = 'Membre individuel'
	s.price = 5000
	s.category = 'membre'
end

Concert.seed do |s|
	s.id = 8
	s.head = 'Membre bienfaiteur'
	s.subhead = "Avantage 2 billets"
	s.shortname = 'Membre bienfaiteur'
	s.price = 25000
	s.category = 'membre'
end

Concert.seed do |s|
	s.id = 9
	s.head = 'Membre grand donateur'
	s.subhead = "Accès libre au festival de l'année"
	s.shortname = 'Membre grand donateur'
	s.price = 100000
	s.category = 'membre'
end

Concert.seed do |s|
	s.id = 10
	s.head = 'Membre entreprise'
	s.subhead = "Avantage 4 billets"
	s.shortname = 'Membre entreprise'
	s.price = 50000
	s.category = 'membre'
end

Concert.seed do |s|
	s.id = 11
	s.head = 'Membre entreprise'
	s.subhead = "Avantage 8 billets"
	s.shortname = 'Membre entreprise'
	s.price = 100000
	s.category = 'membre'
end