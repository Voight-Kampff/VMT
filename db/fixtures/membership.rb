Membership.seed do |s|
	s.id = 1
	s.name = 'Membre individuel'
	s.price = 5000
	s.avantage = " "
end

Membership.seed do |s|
	s.id = 2
	s.name = 'Membre bienfaiteur'
	s.avantage = "Avantage 2 billets"
	s.price = 25000
end

Membership.seed do |s|
	s.id = 3
	s.name = 'Membre grand donateur'
	s.avantage = "Accès libre au festival de l'année"
	s.price = 100000
end

Membership.seed do |s|
	s.id = 4
	s.name = 'Membre entreprise'
	s.avantage = "Avantage 4 billets"
	s.price = 50000
end

Membership.seed do |s|
	s.id = 5
	s.name = 'Membre entreprise'
	s.avantage = "Avantage 8 billets"
	s.price = 100000
end