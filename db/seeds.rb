# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)

Subscription.destroy_all
Slot.destroy_all
Course.destroy_all
Workshop.destroy_all
Teacher.destroy_all
Season.destroy_all
teachers = [
  { id: 1, name: "Goulven Dréano", status: "Actif", description: "Un vrai mélomane qui joue sans fausse note au sein d’un collectif, Goulven est professeur de musique traditionnelle et coordinateur pédagogique au groupement culturel breton de Redon et Muzillac. Un vrai chef d’orchestre qui vous propose l’écriture d’une partition à plusieurs mains. Président de l’association Clakbam c’est une des nombreuses personnes qui vous font danser aux mardis de l’été.\r\n\r\nMon petit plaisir à Malansac : Les rencontres intergénérationnelles des mardis de l’été.\r\n\r\nMalansac en un mot : Associationsssss\r\n\r\nIl s’engage dans l’Avenir de Malansac." },
  { id: 2, name: "Tanguy Pacault", status: "Actif", description: "Il est clarinettiste depuis plus de 30 ans, et sonneur depuis une quinzaine d’années. Diplômé d’État, il enseigne au conservatoire de CAP Atlantique (Guérande-La Baule) ainsi qu’à l’école de musique traditionnelle des Pays de Vilaine.\r\n\r\nDe la flûte à bec à la bombarde, de la danse renaissance à l’énergie des musiques actuelles, son parcours lui a permis d’approcher une diversité de styles, pour acquérir et apprécier cette liberté d’expression propre et nécesssaire aux musiques improvisées.\r\n\r\nVice champion de Bretagne en duo, et lauréat de nombreux concours en duo ou trio, il joue en duo avec Damien Tatard à l’accordéon ou Christophe Gauche à l’orgue, et en trio avec Damien Tatard et Anne-Gaëlle Normand. Il participe également à la création du ciné-concert « De Nantes à Brest, un canal pas ba-nal » avec Anne-Gaëlle Normand et Ronan Robert." },
  { id: 3, name: "Kaelig Frédéric", status: "Actif", description: "Dans le début des années 70, Kaëlig Frédéric (Michel Frédéric de son patronyme d’état civil) découvre la scène avec les bals populaires ! Percussionniste  et bassiste, il joue aussi de la guitare en autodidacte. Il baigne dans les titres des Beatles, des Rolling Stones, Led Zeppelin, etc., mais aussi Dylan, Neil young, Creedence ou John Mayal et Johnny Winter…\r\n\r\nDans les années 70, il partage la grande aventure liée au phénomène folk celtique, festou-noz et ambiances pub, où musique irlandaise et chants de marins se côtoient. Guitare, cornemuses, binioù et bombarde sont les instruments qu’il pratique avec passion. (AVEL NEVEZ et LAGAD AN HEOL)\r\n\r\nLa musique irlandaise prend aussi une grande place dans sa vie musicale avec la création du groupe IRWIN et plus tard, l’étude de la harpe Celtique. Au cours des années 80, il parcourt les scènes de l’hexagone pour jouer un répertoire du 11ème au 18ème siècle, consacré à la harpe irlandaise. Il partage sa passion sur scène avec Bernard Benoit ou Claude Besson. Il enregistre 2 albums en solo avec cet instrument. Il a enseigné la harpe celtique pendant de nombreuses années et a publié de nombreuses partitions.\r\n\r\nKaëlig, multi-instrumentiste, va s’engager dans l’aventure rock celtique et plus particulièrement dans un répertoire de chants de marins traditionnels et récents. Avec le groupe MILLIONS DE SABORDS qui distillera une musique énergique, il partage souvent la scène des festivals avec d’autres artistes (Tri Yann, The Pogues, Gwendal, les Têtes Raides…) et réalisera 2 albums en écumant la contrée !\r\n\r\nVers la fin des années 90, c’est à nouveau l’envie de retrouver les racines des musiques qu’il affectionne et qui anime sa curiosité. Depuis 12 ans, avec le groupe Aux Couleurs du Moyen-Age, il travaille les instruments (Vièle d’Arc, Rebec, Oud, hautbois anciens, etc…) et le répertoire des musiques anciennes (Moyen-âge et Renaissance) il effectue depuis, avec l’Ensemble PASTOUREL et le Duo  MUSICA VILAINE (avec Bérangère Le Biavant) des concerts dans toute la France ainsi qu’à l’étranger.\r\n\r\nDepuis 2000, il étudie le violon dans le répertoire de la musique Irlandaise, participe à de nombreux ateliers, stages et voyage en Irlande ; il crée le groupe EWENN (musique bretonne et irlandaise) et se consacre, avec l’association VIOLONDANS de St. Herblain et le groupe EILEEN, aux  soirées de musique Irlandaise.\r\n\r\n
  En 2015, c’est la création du Duo de Jazz « TENDER JAZZ DUO » avec Bernard Bonnafont. Kaëlig y retrouve sa basse fretless dans un répertoire de grands standards de jazz (cette formation est toujours existante aujourd’hui).\r\n\r\nEn 2017, après avoir quitté le groupe EILEEN, Kaëlig, en compagnie de son fils Enogad (violoniste aussi), forme le Duo « FIDHEALL » (« violon » en gaëlique). Avec leurs violons, bouzouki, flûte et chants, ils proposent aujourd’hui des concerts de musique traditionnelle irlandaise.\r\n\r\nDepuis 2019, Frenchy Blues ! Avec la complicité de Henri Letouche (guitare solo) et Didier Geffroy (basse).\r\n\r\nC’est la passion pour le blues et l’écriture de chansons, la création d’un récital de 16 nouvelles chansons et des concerts en préparation !" },
  { id: 4, name: "Aurore Bréger", status: "Actif", description: "Aurore joue de la harpe celtique depuis l’âge de douze ans.\r\n\r\nSon parcours de musicienne l’a amenée à se produire régulièrement en France ou à l’étranger (tournées au Brésil, USA, Mexique, Australie…etc), en solo et en formation : trio de harpes Fileuses de Nuit, Quartet Alain Pennec, duo avec le flûtiste Erwan Hamon…\r\n\r\nElle a également participé à plusieurs CD et recueils de partitions, fruits de son approche singulière de la musique traditionnelle ainsi que de son intérêt pour la pédagogie de l’instrument.\r\n\r\nSi Aurore puise son inspiration aux sources des répertoires traditionnels, sa musique n’en est pas moins créative, empreinte d’une couleur particulière et ses compositions sont le reflet de son énergie et de sa sensibilité." },
  { id: 5, name: "Pierre-Josquin Goisbault", status: "Actif", description: "Pierre-Josquin Goisbault entretient un lien intime avec les cordes. Tout d’abord celles du violoncelle, puis la guitare et la voix qui prennent une place centrale dans son parcours.La composition de chansons arrive très vite, autour de 12 ans, puis toutes les années à venir.\r\n\r\nBercé au son de la chanson française, de la pop anglo-saxonne et surtout de la folk, Pierre-Josquin s’oriente jeune adulte, vers l’Irlande et sa musique traditionnelle. Il développe un jeu d’accompagnement harmonique et rythmique, puis intègre le banjo, la mandoline ou le dulcimer à ses cartes musicales. \r\n\r\nAprès 20 ans d’expériences musicales riches en apprentissages et en rencontres (chanson, pop, traditionnelles, folk…) il se consacre à un  nouveau répertoire de chansons, en français cette fois-ci, réunissant ses principales influences et explorant l’intime de l’être, les chemins empruntés et les joies quotidiennes. Ce projet de cœur est mené sous le nom de « JOSQUIN » depuis 2022.\r\n\r\nAussi, Pierre-Josquin échange airs irlandais et chansons avec François Boudet (uilleann pipes, contrebasse) dans le duo IMRAMA. Ils explorent les vastes territoires folk et traditionnels, en laissant une place de cœur aux bourdons et aux ballades chaleureuses. Un répertoire qui se plaît dans les lieux de proximité (chapelles, chez l’habitant, théâtres…)\r\n\r\nPierre-Josquin rejoint au Banjo Ténor l’équipe de l’HaPpY nOiR.e, fanfare participative du pays de Redon, menée par Wenceslas Hervieux.\r\n\r\nAvec Carol Maury, ils réunissent leurs influences respectives et communes, allant du blues au folk, et créent les Macadam Singers, dont le fil conducteur est une balade américaine en chansons de films.\r\n\r\nAvec le flûtiste Jérémie Mignotte, c’est une autre facette de la musique irlandaise qui est abordée : le duo Gentraige, invite aux airs joyeux et dansant, dans une formule sobre et efficace : Guitare dadgad / Flûte traversière. Le duo se fait également quatuor avec François Boudet et Anthony Debray (percussions, bodhràn).\r\n\r\nEn 2019 il co-crée le Collectif d’artistes Arbracames, réunissant des esthétiques variées, dont l’un des points communs est la dimension intimiste et acoustique des propositions. Le collectif propose des programmations culturelles, stages et autres spectacles." },
  { id: 6, name: "Chantal Arnould", status: "Actif", description: "De formation classique (elle est titulaire d’une médaille d’or de Conservatoire régional), Chantal Arnould s’est tournée dans les années 2000 vers les musiques traditionnelles, pour finalement se spécialiser en musique irlandaise.\r\n\r\nSon groupe, « Clonakilty », tourne beaucoup dans toute l’Ile-de-France, la Picardie, la Normandie… Chantal Arnould participe également à des concerts classiques, notamment pour accompagner des chorales dans un quatuor ou un orchestre.\r\n\r\nElle enseigne le violon depuis plus de 20 ans dans des associations et des écoles de musiques municipales.\r\n\r\nPetits et grands, lors de l’apprentissage du violon, peuvent découvrir les répertoires classique, irlandais, écossais, breton… avec quelques incursions dans les musiques de film, le rock, la pop !" },
  { id: 7, name: "Nathalie Herczog", status: "Actif", description: "Musicienne de formation classique au départ, Nathalie effectue ses études de pianiste-solfégiste-chanteuse aux conservatoires de Vannes, Rennes, et Saint-Nazaire.\r\n\r\nDès 1990, elle s’intéresse de très près au jazz, et travaille entre autres, avec Laurence Saltiel, Mark Murphy, Daniel Huck, Régis Huby et et Michèle Hendricks.\r\n\r\nDès 1992, elle intègre différents ensembles en compagnie des principaux jazzmen de la région Bretagne, tels qu’Eric Richard, Jeff Alluin, Patrick Stanislawski, Guillaume Casini, Laurent Genty, Vincent Guérin, ou Pascal Salmon, et participe à de nombreux projets de concerts et albums (Jazz dans les feuilles, Jardin Moderne, Loustiks de l’Akoustik, Antipode, Diapason, Théâtre de Redon, Aman Octet…)\r\n\r\nEn 2005, elle décide de constituer son propre quartet, et se produit régulièrement, en salles et festivals de la région (1ères parties d’Eric Lelann, Les Vendredis du Jazz de Noyal-Châtillon, Jazz Hors Saison de Pontorson, Festival de Gomené, Festival Jazz à l’Ouest, festival Jazz en Rhuys…)\r\n\r\nElle intègre également l’Ensemble Instrumental du Pays de Redon (l’E.I.P.R), et participera à divers projets, dont celui d’Extasis en 2006 : spectacle musical et chorégraphique autour du tango d’Astor Piazzolla.\r\n\r\nS’en suivra la formation d’un trio avec Samuel Miralles et Christian Grimaud : « Sueno de Luz », qui tournera durant 3 ans sur un spectacle mis en scène par Christophe Morin : « Souvenirs d’Argentine ».\r\n\r\nEn 2011, deux nouveaux projets voient le jour: « Girls Talk Jazz » trio (avec Lise Van Dooren et Sophie Druais, qui se transformera en quartet en aôut 2013 à l’occasion de leur rencontre à Marciac avec la « batteuse » Pauline Bourguère), et « Elastic 4tet » ( avec Sébastien Merdrignac, Stéphane Stanger et Boris Cavaroc).\r\n\r\nSuivront une série de concerts en salles et festivals tels que « Jazz au Pays de Redon », Jazz in Langourla, Jazz à l’Ouest, Plouër in Jazz…" },
  { id: 8, name: "Joran Marsac", status: "Actif", description: "" },
  { id: 9, name: "Loïc Joucla", status: "Actif", description: "" },
  { id: 10, name: "Youn Lebreton", status: "Actif", description: "Youn Lebreton est saxophoniste depuis 2018, essentiellement joueur de soprano et ténor. Il joue actuellement dans divers groupes comme Folaod en quartet, ERIS en trio ou bien en duo avec l’accordéoniste Clément Bobinet. De tendance éclectique, Youn s’inspire d’univers variés, allant du classique jazz aux musiques traditionnelles du monde entier." },
  { id: 11, name: "Goulven Saout", status: "Actif", description: "Goulven Saout tombe tout petit dans la culture bretonne, commence par la danse à l’âge de 6 ans, puis l’accordéon diatonique à 9 ans et à ses heures perdues joue un peu de violon et de mandoline. Il enseigne l’accordéon diatonique sur le secteur vannetais en tant qu’animateur musical au sein d’associations à Vannes, Ploeren, Theix, Questembert et Arradon.\r\n\r\nAprès des passages au sein de cercles celtiques (Theix puis Vannes), il joue 5 ans avec le groupe de chants de marins Taillevent et dans de nombreux duos (avec son frère a la bombarde, avec Yannick le Sausse de Follenn au violon…)." },
  { id: 12, name: "Yaël Benahim", status: "Actif", description: "Yaël Benahim a commencé à apprendre l’accordéon diatonique en 2007 au Centre Cuturel Breton avec Françoise Mevel. Après 9 ans de cours il participe à de nombreux stages de musique bretonne et irlandaise. Il suit ensuite des études de musicologie et vient d’obtenir son DEM au Conservatoire de Lannion. Il joue actuellement de l’accordéon dans le groupe LLYM, un groupe connu dans les festoù noz." },
  { id: 13, name: "Ronan Robert", status: "Actif", description: "Ronan Robert est devenu un musicien incontournable en Bretagne. Il a promené son accordéon dans toute la France, en Europe, en Afrique, au Québec, en Asie, en Amérique du sud, lors de différentes tournées avec différentes formations.\r\n\r\nTitulaire du Diplôme d’état de professeur de musique traditionnelle, il a enseigné pendant 10 ans dans différentes écoles de musique avant de se consacrer principalement au spectacle vivant. Devenu musicien professionnel en 1988 au sein du groupe Carré Manchot, il fonde ensuite « Cocktail diatonique » avec la participation de l’accordéoniste Richard Galliano, ainsi que Vertigo, Burn’s duo, Tourmenté d’Amour, Morwenna… Sa curiosité et son ouverture vers différentes influences l’amènent au fil de ses rencontres à créer en 1993 « Les trois saisons », une rencontre entre musiciens traditionnels, de jazz et classiques, en 1996 « Ronan Robert Réunion » en 2002 « Airs », en 2008 « Voyage en Diatonie » avec la création du Noguet Robert Quartet, actuellement en création d’un projet tous publics « Fungo ou l’amour des mots ».\r\n\r\nSon goût pour toutes les formes artistiques l’a conduit vers des esthétiques très différentes : Il joue aujourd’hui avec de nombreux artistes et compagnies aussi variés que la compagnie de danse Pied en Sol, le saxophoniste/talabarder Ronan Le Gourierec et le violoniste Raphaël Chevalier dans Bivoac, les accordéonistes Yann-Fanch Perroches et Fanch Loric dans Cocktail Diatonique, le talabarder Hervé Lelu en duo, l’accordéoniste Yannig Noguet, le contrebassiste Simon Mary et le percussionniste Jérôme Kerihuel dans le Noguet Robert Quartet, le chanteur Gérad Delahayes dans le spectacle « voilà les pirates », la harpiste Murielle Shreder et le flutiste/talabarder Erwan Hamon dans le trio Hamon Robert Schreder" },
  { id: 14, name: "Wenceslas Hervieux", status: "Actif", description: "Originaire du Pays de Redon en Bretagne, Wenceslas Hervieux étudie le piano dès l’âge de 4 ans au Centre Culturel Ti Kendalc’h à St-Vincent-sur-Oust. Cependant il a tendance à préférer jouer d’oreille ce que son environnement lui propose : musique classique, compositeurs des années 70-80, chansons de famille.\r\n\r\nS’étant mis à l’accordéon touches piano, Wenceslas est rapidement sollicité pour jouer de la musique des Balkans, avec le groupe Topolovo notamment.\r\n\r\nWenceslas Hervieux valide en 1998 une maîtrise en création musicale à l’Université Rennes II. Puis coordonne l’école de musique traditionnelle des Pays de Vilaine jusqu’en 2006.\r\n\r\nReconnu comme compositeur et arrangeur, sa “marque de fabrique“ est l’invention de musique construite sur la fusion entre la monodie bretonne et des modèles « exotiques » d’accompagnement de musique populaire, tantôt balkanique (Savaty Orkestar, créé en 2008 au Nouveau Pavillon), tantôt cajun (Gallo Gumbo, créé en 2013 à l’occasion d’échanges culturels entre la Louisiane et la Bretagne).\r\n\r\nImprovisateur, il travaille régulièrement avec les comédiens de la Compagnie Casus Délires. On retrouve également Wenceslas à l’orgue en compagnie d’Erwan Hamon à la bombarde sur l’album Si Vous Dormez. ll développe aussi une écriture spécifique pour le piano en musique traditionnelle pour le duo Chauvel-Hervieux dont l’album « Dis-moi oui ou dis-moi non » sort à l’automne 2019.\r\n\r\nWenceslas compose pour la création « Papic » de la Drolatic Industry dont la sortie est prévue en octobre 2019." },
  { id: 15, name: "Mannaïg Le Guevel", status: "Actif", description: "Mannaïg Le Guevel est passionnée de chant traditionnel de Haute Bretagne. Elle suit un cursus universitaire (Pont Supérieur) sur les musiques traditionnelles à Rennes, chante dans plusieurs groupes de la nouvelle scène Fest-Noz. Elle est également lauréate de la finale Chant à la Bogue 2022." },
  { id: 16, name: "Yolaine Delamaire", status: "Actif", description: "Très tôt, Yolaine est bercée par la musique, plutôt classique dans un premier temps, grâce à sa grand-mère mélomane. Elle choisit le chant comme moyen d’expression musicale.\r\n\r\nAu lycée, elle commence à apprendre le breton et est aussitôt séduite par le chant traditionnel. C’est à l’Université qu’elle pousse la porte d’un atelier de chant traditionnel et fait la rencontre d’Enora De Parscau avec laquelle naît une complicité amicale et vocale. Elle chante en fest-noz, au sein du groupe rennais Obaya, de 2002 à 2005. En 2005, elle créée le groupe Kiñkoñs avec Julien Danielo (accordéoniste) et Thomas Chapron (clarinettiste). Elle y chantera pendant 10 ans. Elle chante également en kan-ha-diskan, avec Enora De Parscau, Méva Guégan et aussi Rozenn Talec. Pendant quelques années elle forme le duo piano-chant avec Yves-Marie Denis. Leur travail se fera essentiellement autour des gwerzioù et des complaintes. \r\n\r\nYolaine se forme beaucoup sur le « terrain » par l’écoute des autres chanteurs et en allant régulièrement fouiller dans les collectages. C’est à partir de 2011 qu’elle décide de suivre des cours de technique vocale auprès de Solenn Diguet, professeure de chant et chanteuse lyrique. Depuis 2019, elle poursuit sa formation de technique vocale auprès d’Emmanuel Pesnot, « luthier des voix ».\r\n\r\nEn 2014, elle forme Silabenn trio aux côtés de Janick Martin (accordéoniste) et d’Erwan Lhermenier (clarinettiste). Leur répertoire de musique à danser ou à écouter, oscille entre la Haute et Basse Bretagne, avec des compositions originales et la volonté d’une écriture musicale fine et colorée.\r\n\r\nL’aventure musicale continue auprès d’Enora De Parscau avec laquelle elle forme Dame Angèle. Mêlant chant et poésie, elles y interprètent leurs propres chansons en breton. Toujours avec Enora, elles forment le trio Lirzhin, une formule Kan-ha-diskan joyeuse qui accueille une troisième commère, Murielle Le Guern.\r\n\r\nDepuis 2019, elle fait partie de Kreiz Breizh Akademi #8, une formation comprenant 12 musiciens dont le travail se fait autour de la musique bretonne et modale, sous la direction de Erik Marchand.\r\n\r\nEn 2022, Yolaine rejoint le collectif L’HaPpY nOiR.e, un cabaret de rue dont la musique déstabulante s’amuse du mélange de New-Orleans et des chansons de Haute-Bretagne. Toujours cette même année, elle partage une nouvelle aventure musicale, Moon Nevez, aux côtés de Paul Lucien, guitariste-chanteur et compositeur de « Folk songs » en y ajoutant sa touche « trad » de chanteuse bretonne.\r\n\r\nDepuis début 2023, Yolaine retrouve un de ses premiers compères, Julien Danielo, pour organiser des fest-deiz en école ! Leur projet s’appelle BIM BAL BOUM !!" },
  { id: 17, name: "Maëlle Gédouin", status: "Actif", description: "Chanteuse et formatrice, passionnée de chant traditionnel de Bretagne, d’improvisation et de polyphonie qu’elle met au service de ces ateliers adultes depuis quelques années (Guichen, Rennes)" },
  { id: 999, name: "À définir", status: "Inactif" }
]

teachers.each do |teacher|
  Teacher.create!(teacher)
end

Instrument.destroy_all
instruments = [
  { id: 1, name: "Accordéon diatonique", description: "L’accordéon diatonique est un instrument de musique à clavier, utilisant des anches libres, excitées par un vent variable fourni par le soufflet actionné par le musicien1. Il désigne les différentes variantes d’accordéon bi-sonoreN 1 organisées selon une ou plusieurs gammes diatoniques (à la différence de l’accordéon chromatique), même s’il existe des accordéons diatoniques qui ne sont pas bi-sonores comme l’accordéon diatonique russe, le garmon.\r\n\r\nSi certains modèles d’accordéon possèdent toutes les notes de la gamme chromatique (comme certains modèles continentaux à trois rangées ou les accordéons irlandais), ils conservent une organisation par gammes diatoniques.\r\n\r\nOn utilise principalement l’accordéon diatonique dans les musiques traditionnelles ou populaires. D’origine européenne, l’accordéon diatonique est présent dans beaucoup de traditions à travers le monde." },
  { id: 2, name: "Accordéon à touches piano", description: "Un accordéon à touches piano est doté d’un clavier droit tel celui d’un clavier de piano ou d’orgue. Le mécanisme et le mode de fonctionnement de la main droite se rapprochent plus d’un toucher pour orgue que pour piano, puisque ce sont tous deux des instruments à vent. Le terme « accordéon-piano » est dû à Guido Deiro vers 19101. Quant au registre de main gauche, il peut être équipé de tous les types de nomenclatures possibles.\r\n\r\nPar rapport au clavier de piano, les touches sont plus arrondies, plus petites et plus légères au toucher (la pression requise pour enfoncer est moindre qu’une touche de piano). Celles-ci sont placées à la verticale sur le côté, tournées vers le centre et les ’jeux’, les rendant toutes accessibles d’une seule main lorsqu’on manipule l’accordéon." },
  { id: 3, name: "Binioù", description: "Similaire à une cornemuse, il est composé d’un tuyau en bois avec une anche simple et un sac à air.\r\n\r\nFigure incontournable de la scène musicale bretonne, le binioù est fréquemment associé à la bombarde (c’est ce que l’on désigne sous le terme de « sonneurs de couple » pour accompagner les danses traditionnelles bretonnes), et se retrouve intégré aux formations musicales appelées bagad (bagadou au pluriel)." },
  { id: 4, name: "Bombarde", description: "La bombarde est un instrument de musique à vent à anche double de la famille des hautbois, employé dans la musique ancienne et la musique bretonne. Le mot « bombarde » provient du latin bombus, signifiant « bourdonnement » ou « bruit sourd ».\r\n\r\nIl s’agit d’une variante de hautbois populaire spécifique à la Bretagne. En breton l’instrument s’appelle ar vombard (mutation de bombard) ou an talabard. Un joueur de bombarde s’appelle un bombarder (bombardir en Pays Vannetais), mais le terme de talabarder a été plus récemment adopté dans le milieu des bagadoù.\r\n\r\nLa bombarde est traditionnellement associée au biniou pour former ce qu’on appelle un couple de sonneurs. On peut également en jouer au sein d’orchestres plus ou moins étoffés. Un pupitre de bombardes, associé à des percussions, des cornemuses et des caisses claires écossaises, forment un ensemble appelé bagad (bagadoù au pluriel en breton)." },
  { id: 5, name: "Chant", description: "Le chant représente l’ensemble de la production de sons musicaux produite par la voix humaine. La personne qui génère le chant est appelée chanteur, chanteuse, ou vocaliste. À l’EMT sont enseignés le chant de Haute-Bretagne, le chant breton et la technique vocale." },
  { id: 6, name: "Clarinette", description: "La clarinette (du provençal clarin désignant un hautbois) est un instrument de musique à vent de la famille des bois caractérisé par son anche simple et sa perce quasi cylindrique. Elle aurait été créée vers 1690 par Johann Christoph Denner (1655-1707) à Nuremberg sur la base d’un instrument à anche simple plus ancien : le « chalumeau ». La clarinette soprano (en si♭) est le modèle le plus commun.\r\n\r\nLa perce cylindrique de la clarinette la distingue du hautbois et du saxophone, tous deux à perce conique, et lui confère une aptitude au quintoiement. Son timbre chaud dans le registre grave, peut s’avérer extrêmement brillant voire perçant dans l’aigu.\r\n\r\nDe tous les instruments à vent de sa famille, la clarinette possède la plus grande tessiture avec trois octaves plus une sixte mineure, soit 45 notes en tout. Elle se décline en une famille d’instruments presque tous transpositeurs, depuis la clarinette contrebasse jusqu’à la clarinette piccolo, couvrant ainsi toute l’étendue d’un orchestre symphonique. À l’exception des percussions, la clarinette est l’instrument qui possède la plus grande famille. " },
  { id: 7, name: "Cornemuse écossaise", description: "La cornemuse écossaise, ou pìob-mhòr en gaélique écossais (grande cornemuse), ou great Highland bagpipe en anglais (grande cornemuse des Highlands), est un instrument à vent d’Écosse répandu à travers l’ancien empire britannique. C’est une cornemuse comportant trois bourdons (un basse et deux ténors) à anche simple, et un chanter muni d’une anche double. " },
  { id: 8, name: "Flûte traversière", description: "La flûte traversière est un instrument à vent de la famille des bois. La flûte traversière partage avec les instruments de la famille des flûtes la méthode de production du son : l’air soufflé est mis en vibration par un biseau disposé à l’embouchure. Son fonctionnement est toutefois assez différent de celui des flûtes à bec et est plus proche de celui de la quena et plus largement des flûtes à encoche, instruments pour lesquels c’est le musicien qui conduit l’air au biseau. " },
  { id: 9, name: "Guitare", description: "La guitare est un instrument à cordes pincées. Les cordes sont disposées parallèlement à la table d’harmonie et au manche, généralement coupé de frettes, sur lesquelles on appuie les cordes, d’une main, pour produire des notes différentes. L’autre main pince les cordes, soit avec les ongles et le bout des doigts, soit avec un plectre (ou médiator). La guitare a le plus souvent six cordes." },
  { id: 10, name: "Harpe celtique", description: "La harpe celtique est un instrument de musique à cordes ancien, répandu en Irlande (cláirseach), en Écosse (clársach), au Pays de Galles (telyn), en Bretagne (telenn), pour jouer et accompagner la musique celtique. Elle jouit d’un regain de popularité en Bretagne depuis les années 1950. Plus petite que la harpe de concert, elle est plus maniable. Elle possède un répertoire propre né de l’époque où elle était l’instrument des musiciens ambulants. Elle fait notamment partie des symboles de l’Irlande." },
  { id: 11, name: "Percussions", description: "Les instruments de percussion — souvent appelés simplement percussion, au féminin — sont des instruments de musique dont l’émission sonore résulte de la frappe ou du grattage d’une membrane ou d’un matériau résonnant. Les instruments de percussion ont probablement constitué les tout premiers instruments de musique et font partie intégrante de la plupart des genres musicaux. On les trouve en effet depuis la musique traditionnelle jusqu’à la musique classique." },
  { id: 12, name: "Saxophone", description: "Le saxophone est un instrument de musique à vent, appartenant à la famille des bois. Il a été inventé par le Belge Adolphe Sax et breveté à Paris le 21 mars 1846.\r\n\r\nLe saxophone est généralement en laiton, bien qu’il en existe certains en cuivre, en argent, en plastique ou plaqués en or." },
  { id: 13, name: "Tin whistle", description: "Le tin whistle, aussi appelé tin(-)whistle, whistle, penny whistle, Irish whistle, feadóg, feadóg stáin, ou flûte irlandaise au Québec, est un instrument à vent de type bois. Il s’agit d’une flûte droite à six trous, généralement en métal et couramment utilisée dans la musique des îles Britanniques (Angleterre, Écosse, Pays de Galles et Irlande). Elle dispose d’un conduit permettant de canaliser l’air émis par le musicien vers le biseau. Ce type de conception se retrouve également avec le flageolet et la flûte à bec. Un joueur de tin whistle est appelé tin whistler ou simplement whistler dans la langue du pays d’origine. Le tin whistle est également désigné par le terme généraliste de flûte irlandaise." },
  { id: 14, name: "Uillean pipes", description: "Uilleann pipes est le nom contemporain donné à la cornemuse irlandaise (píb uilleann en gaélique, pib-ilin en breton). Le terme uilleann (/ˈɪlən/), (génitif de uille qui signifie coude en gaélique), n’est utilisé que depuis le XXe siècle. L’instrument était auparavant connu sous le nom de union Pipes, terme utilisé depuis le XVIIIe siècle ; une rumeur persistante voudrait que la dénomination union soit due à des connotations politiques, telles que l’Acte d’Union (1800) imposé par l’Angleterre, mais l’instrument étant attesté bien avant cette date, cette explication ne tient pas. Il est en revanche possible qu’il s’agisse de l’union de la chanterelle et des régulateurs." },
  { id: 15, name: "Violon", description: "Le violon est un instrument de musique à cordes frottées. Constitué de 71 pièces de bois (érable, buis, ébène, etc.) collées ou assemblées les unes aux autres. Le violon possède quatre cordes accordées généralement à la quinte, que l’instrumentiste, appelé violoniste, frotte avec un archet ou pince avec l’index ou le pouce (en pizzicato).\r\n\r\nDans les formations de musique classique comme le quatuor à cordes ou l’orchestre symphonique, le violon est l’instrument le plus petit et de tessiture la plus aiguë parmi sa famille ; celle-ci inclut l’alto, le violoncelle et la contrebasse. Sa création remonte au XVIe siècle. Très vite popularisé, il occupe une place importante dans la musique classique occidentale : de grands compositeurs ont écrit pour cet instrument (concertos, musique de chambre, pièces symphoniques, etc.) voire en jouaient eux-mêmes (Vivaldi, Bach, Mozart, etc.). Certains violonistes du XIXe siècle, tels que Paganini, ont acquis une grande renommée." },
]

instruments.each do |instrument|
  Instrument.create!(instrument)
end

courses = [
  { id: 1, teacher_id: 1, instrument_id: 8 },
  { id: 2, teacher_id: 1, instrument_id: 11 },
  { id: 3, teacher_id: 1, instrument_id: 13 },
  { id: 4, teacher_id: 2, instrument_id: 3 },
  { id: 5, teacher_id: 2, instrument_id: 4 },
  { id: 6, teacher_id: 2, instrument_id: 6 },
  { id: 7, teacher_id: 2, instrument_id: 13 },
  { id: 8, teacher_id: 3, instrument_id: 15 },
  { id: 9, teacher_id: 4, instrument_id: 10 },
  { id: 10, teacher_id: 5, instrument_id: 9 },
  { id: 11, teacher_id: 6, instrument_id: 15 },
  { id: 12, teacher_id: 7, instrument_id: 5 },
  { id: 13, teacher_id: 8, instrument_id: 9 },
  { id: 14, teacher_id: 9, instrument_id: 14 },
  { id: 15, teacher_id: 10, instrument_id: 7 },
  { id: 16, teacher_id: 10, instrument_id: 12 },
  { id: 17, teacher_id: 11, instrument_id: 1 },
  { id: 18, teacher_id: 12, instrument_id: 1 },
  { id: 19, teacher_id: 13, instrument_id: 1 },
  { id: 20, teacher_id: 14, instrument_id: 2 },
  { id: 21, teacher_id: 15, instrument_id: 5 },
  { id: 22, teacher_id: 16, instrument_id: 5 },
  { id: 23, teacher_id: 17, instrument_id: 5 },
]

courses.each do |course|
  Course.create!(course)
end

Discovery.destroy_all
discoveries = [
  {
    name: "Éveil musical de 4 à 6 ans",
    price: 90, 
    description: "Chant, danse, conte… à la découverte du patrimoine culturel local, de la musique traditionnelle. Jeux rythmiques et mélodiques autour de la musique traditionnelle, chants, danses, contes, découverte d’instruments, participation à la P’tite Bogue, aux évènements de l’Ecole de Musique…"
  },
  {
    name: "Découverte instrumentale enfants de 7 à 9 ans",
    price: 130,
    description: "Accompagnement de l’élève vers le choix d’un instrument.
    Découverte et pratique de 5 instruments parmi les suivants : binioù-bombarde et cornemuse, clarinette, violon, guitare, flûtes (tin whistle, traversière…), accordéon diatonique, bodhran. Jeux rythmiques et mélodiques autour de la musique traditionnelle, chants, danses, percussions corporelles, participation à la P’tite Bogue, aux évènements de l’Ecole de Musique…"
  },
  {
    name: "Découverte instrumentale ados et adultes",
    price: 60,
    description: "Découverte et pratique de plusieurs instruments choisis par les participants en lien avec le professeur." },
]

discoveries.each do |discovery|
  Discovery.create!(discovery)
end

City.destroy_all
cities = [
  { id: 1, name: "Redon" },
  { id: 2, name: "Allaire" },
  { id: 3, name: "La Chapelle de Brain" },
  { id: 4, name: "La Gacilly" },
  { id: 5, name: "Peillac" },
  { id: 6, name: "Pipriac" },
  { id: 7, name: "Plessé" },
  { id: 8, name: "Renac" },
  { id: 9, name: "Saint-Nicolas-de-Redon" },
  { id: 10, name: "La Chapelle Gaceline" },
]

cities.each do |city|
  City.create!(city)
end

workshops = [{
  name: "Atelier / Ensemble vocal « Voix de pays »",
  teacher_id: 17,
  workshop_day: "thursday",
  start_time: Time.strptime("20:45", "%H:%M"),
  end_time: Time.strptime("22:15", "%H:%M"),
  frequency: "odd_weeks",
  location: "Redon",
  description: "Ensemble vocal réunissant tous ceux qui aiment chanter et prendre du plaisir à le faire ensemble. Le répertoire transmis est issu des chants de traditions populaires et orales du Pays de Redon, mais aussi d’ailleurs dans le monde dans une forme d’alternance, qu’ils puissent se répondre. Les chants seront arrangés selon les méthodes traditionnelles (polyphonies, question/réponse, etc.) avec la participation des chanteur·e·s."
}, {
  name: "Atelier « Chant et danse » pour les 7-11 ans",
  teacher_id: 15,
  workshop_day: "wednesday",
  location: "Redon",
  description: "Apprentissage ludique du chant et de la danse de Haute-Bretagne."
}, {
  name: "Atelier chant – répertoire vannetais-gallo aujourd’hui",
  teacher_id: 15,
  workshop_day: "wednesday",
  start_time: Time.strptime("20:00", "%H:%M"),
  end_time: Time.strptime("21:30", "%H:%M"),
  frequency: "every_two_weeks",
  location: "Redon",
  description: "Découverte et pratique du chant traditionnel de Haute-Bretagne (mélodies, marches, danses). Ouverture sur d’autres répertoires traditionnels."
}, {
  name: "« La Chantième Compagnie »",
  teacher_id: 14,
  workshop_day: "tuesday",
  start_time: Time.strptime("20:00", "%H:%M"),
  end_time: Time.strptime("21:30", "%H:%M"),
  frequency: "every_two_weeks",
  location: "Redon",
  description: "Vous avez envie d’explorer quel chanteur êtes-vous, d’approfondir votre style d’après des collectages, d’animer un repas chanté, de rencontrer d’autres chanteurs ? Ils vous ont concocté un programme inédit tout au long de l’année les mardi soir.\r\n\r\nUne croisière annuelle à réserver car les places sont limitées."
}, {
  name: "HaPpY nOiR.e",
  teacher_id: 16,
  workshop_day: "wednesday",
  start_time: Time.strptime("20:45", "%H:%M"),
  end_time: Time.strptime("21:15", "%H:%M"),
  frequency: "odd_weeks",
  location: "Redon",
  description: "Atelier de chant, apprentissage du répertoire de l’HaPpY nOiR·e (Musique de Rue participative).
  Répertoire issu du Pays de Redon et se chante donc essentiellement en langue française. Travail à l’unisson, se répond, mais est ici également arrangé en polyphonie, contrepoint, improvisation. Dans L’HaPpY nOiR·e on chante, voire on danse et on invente des chorégraphies. Nous accueillons les personnes :\r\n\r\n
  • qui ont une pratique ou non du chant traditionnel\r\n\r\n
  • qui chantent pour elles-mêmes ou bien qui ont une bonne expérience de la scène\r\n\r\n
  • qui habitent le territoire depuis des générations ou qui viennent d’arriver sur le pays\r\n\r\n
  • qui ont envie de vivre et partager des moments exceptionnels et puissants au cœur d’un ensemble musical professionnel."
}, {
  name: "Atelier irlandais",
  teacher_id: 6,
  workshop_day: "tuesday",
  start_time: Time.strptime("20:30", "%H:%M"),
  end_time: Time.strptime("21:30", "%H:%M"),
  frequency: "odd_weeks",
  location: "Redon",
  description: "Découverte et apprentissage de morceaux traditionnels irlandais, à allure tranquille pour créer un répertoire commun : Jigs, reels, valses, airs de chansons, polkas… \r\n\r\n
  Les morceaux sont abordés via différents supports (oreille, tablatures, partitions, supports audio…).
  Public cible : instruments traditionnels irlandais ou proches (question de tonalité ou de compatibilité de style) et maîtrise de base de l’instrument préférable."
}, {
  name: "« Slow session » irlandaise",
  teacher_id: 6,
  workshop_day: "tuesday",
  start_time: Time.strptime("21:40", "%H:%M"),
  end_time: Time.strptime("22:40", "%H:%M"),
  frequency: "odd_weeks",
  location: "Redon",
  description: "Une heure de session « slow » pour aborder les suites de morceaux irlandais et s’entraîner à les mener en condition « irish pub ».\r\n\r\n
  Apprentissage à l’oreille. Supports et tablatures fournis après le cours si nécessaire."
}, {
  name: "Découverte de la musique médiévale",
  teacher_id: 3,
  workshop_day: "wednesday",
  start_time: Time.strptime("20:30", "%H:%M"),
  end_time: Time.strptime("22:00", "%H:%M"),
  frequency: "even_weeks",
  location: "Redon",
  description: "Instruments attendus : voix, harpe celtique, violon, flûte à bec, flûte traversière, tin whistle, bodhran, vielle à roue, veuze, psalterion – 2 ans de pratique minimum.\r\n\r\n
  Entre le 11ème et le 15ème siècle, les trouvères, bardes, ménestrels et troubadours de Bretagne, du reste de l’Europe et du bassin méditerranéen, ont fait résonner leurs instruments pour composer et chanter des mélodies profanes et savantes.\r\n\r\n
  Cet atelier permettra d’approcher ce répertoire peu connu, qui précède, pour partie, nos musiques traditionnelles.\r\n\r\n
  Cette année, Kaëlig propose d’ouvrir un nouvel atelier pour débutants. Il pourra avoir lieu sous réserve d’un nombre minimum de participants."
}, {
  name: "Arrangements / création / impro",
  teacher_id: 2,
  workshop_day: "thursday",
  start_time: Time.strptime("18:45", "%H:%M"),
  end_time: Time.strptime("19:30", "%H:%M"),
  location: "Redon",
  description: "Ecoute, invention, improvisation, création, appropriation autour de matériaux sonores locaux. Dans ce laboratoire d’expérimentations musicales, du bruit au son, on se met à l’aise avec son instrument et ses qualités, et on donne forme au bruit.\r\n\r\n
  Cet atelier est ouvert à tous à partir de 12 ans. Les horaires de l’atelier seront définis en fonction des participants à l’atelier."
}, {
  name: "Brigade d’animation de rue",
  teacher_id: 2,
  workshop_day: "thursday",
  start_time: Time.strptime("20:00", "%H:%M"),
  end_time: Time.strptime("20:45", "%H:%M"),
  location: "Redon",
  description: "Faites place à la Brigade d’animation de rue ou « la BAR » ! On se mêle au public, on le sollicite, on agite et on s’agite ! Cet atelier est ouvert aux percussions, soufflants, chanteurs, violonistes, flûtistes."
}, {
  name: "Atelier ados ”collecté-connecté”",
  teacher_id: 2,
  workshop_day: "tbd",
  frequency: "every_two_weeks",
  location: "Redon",
  description: "Projet d’ensemble musical réuni autour d’une création collective ayant pour point de départ les ressources du territoire du Pays de Redon (collectages numérisés disponibles, éléments sonores environnementaux, patrimoniaux qui fondent l’identité du territoire).\r\n\r\n
  Outils : prise de son en extérieur, outils de création musicale numérique, instruments acoustiques, voix, base de données Dastumédia, etc.  En fonction du groupe et de l’évolution du projet, des artistes et intervenants extérieurs pourront alimenter ce projet, encadré par un ou plusieurs professeurs de l’école de musique.\r\n\r\n
  Partenariat possible avec un établissement scolaire et des structures culturelles du territoire."
}, {
  name: "Ensemble de harpes",
  teacher_id: 4,
  workshop_day: "saturday",
  start_time: Time.strptime("11:00", "%H:%M"),
  end_time: Time.strptime("14:00", "%H:%M"),
  frequency: "once_per_month",
  location: "Redon",
  description: "Travail autour d’un répertoire commun. L’ensemble harpes, qui porte le nom de « Kordenn Gizidik », se produira par ailleurs en concert lors des divers évènements de l’école."
}, {
  name: "Percussions (9 ans et +)",
  teacher_id: 1,
  workshop_day: "saturday",
  start_time: Time.strptime("11:00", "%H:%M"),
  end_time: Time.strptime("12:30", "%H:%M"),
  frequency: "every_two_weeks",
  location: "Redon",
  description: "• Initier à la pratique de différents instruments de percussion. Explorer les multiples possibilités de l’ensemble des instruments de percussion : sur le répertoire d’Afrique noire, Maghreb et Brésil.\r\n\r\n
  • Initier l’élève aux différents éléments de la pratique instrumentale (posture, position des bras et des mains, frappe, sonorité, technique) Travailler un répertoire de niveau technique simple pour accompagner d’autres musiciens (troupes de soufflants)\r\n\r\n
  • Connaître différents signaux d’appel et de break, découvrir les trois sonorités de base, travailler les rythmes binaire et ternaire, les placements rythmiques, l’improvisation…\r\n\r\n
  • Moyens : apprentissage par onomatopées, chants, percussions corporelles. Travail d’ensemble : djembés, carcabou, cloches, shaker…"
}, {
  name: "Musiques du monde",
  teacher_id: 1,
  workshop_day: "saturday",
  start_time: Time.strptime("12:30", "%H:%M"),
  end_time: Time.strptime("14:00", "%H:%M"),
  frequency: "every_two_weeks",
  location: "Redon",
  description: "Monter un répertoire autour de musique traditionnelle du monde (Amérique du sud, Israël, Italie, Suède, Niger, etc…), appréhender des thèmes et rythmiques différents…\r\n\r\n
  Il pourra également être proposé de travailler un répertoire commun avec l’atelier de musique du monde du Conservatoire le 7 de Redon en vue de concerts entre les deux écoles."
}, {
  name: "Musique adaptée – Action Sensicap",
  teacher_id: 999,
  workshop_day: "saturday",
  location: "Redon",
  description: "Atelier de pratique musicale d’ensemble ouvert à tous et adapté aux personnes en situation de handicap.\r\n\r\n
  Le professeur formé utilise des approches spécifiques, divers instruments et dispose d’un orgue sensoriel, nous proposons un atelier de pratique musicale.\r\n\r\n
  Entre 5 et 10 séances avec un projet de restitution à inventer en fin de cycle. Contactez-nous pour le construire ensemble !"
}, {
  name: "Chant, musique et danse pour les 7-11 ans",
  teacher_id: 1,
  workshop_day: "wednesday",
  start_time: Time.strptime("19:00", "%H:%M"),
  end_time: Time.strptime("19:45", "%H:%M"),
  location: "Allaire",
  description: "Découverte et pratique du répertoire chanté, joué, dansé. Expérimenter le plaisir de jouer ensemble. Percussions corporelles.\r\n\r\n
  Apprentissage de la danse et d’un répertoire pour se produire à divers moments de l’année."
}, {
  name: "Chant en breton ”Kan ha diskan”",
  teacher_id: 16,
  workshop_day: "tuesday",
  start_time: Time.strptime("20:00", "%H:%M"),
  end_time: Time.strptime("21:30", "%H:%M"),
  frequency: "every_two_weeks",
  location: "Redon",
  description: "Découverte et pratique du chant traditionnel de Haute-Bretagne (mélodies, marches, danses).  Le kan ha diskan est du chant en couple et en breton, technique de chant très particulière qu’on retrouve en Basse-Bretagne basée sur le chant/contre-chant.\r\n\r\n
  Ouverture sur d’autres répertoires traditionnels."
}, {
  name: "Ensemble adultes",
  teacher_id: 6,
  workshop_day: "tuesday",
  location: "La Chapelle de Brain",
  description: "Atelier de pratique musicale à plusieurs conduits et dirigé par Chantal Anould. "
}, {
  name: "Percussions pour les 9-18 ans",
  teacher_id: 1,
  workshop_day: "thursday",
  start_time: Time.strptime("19:00", "%H:%M"),
  end_time: Time.strptime("19:45", "%H:%M"),
  location: "La Gacilly",
  description: "• Initier à la pratique de différents instruments de percussion. Explorer les multiples possibilités de l’ensemble des instruments de percussion : sur le répertoire d’Afrique noire, Maghreb et Brésil.\r\n\r\n
  • Initier l’élève aux différents éléments de la pratique instrumentale (posture, position des bras et des mains, frappe, sonorité, technique) Travailler un répertoire de niveau technique simple pour accompagner d’autres musiciens (troupes de soufflants)\r\n\r\n
  • Connaître différents signaux d’appel et de break, découvrir les trois sonorités de base, travailler les rythmes binaire et ternaire, les placements rythmiques, l’improvisation…\r\n\r\n
  • Moyens : apprentissage par onomatopées, chants, percussions corporelles. Travail d’ensemble : djembés, carcabou, cloches, shaker…"
}, {
  name: "Technique vocale et travail de l’interprétation",
  teacher_id: 7,
  workshop_day: "thursday",
  location: "Redon ou La Gacilly",
  description: "Atelier d’ensemble de travail vocal selon un répertoire choisi collectivement et conduit par Nathalie Herczog.\r\n\r\n
  Des projets peuvent être menées avec des instrumentistes de l’école. "
}, {
  name: "Fanfare / découverte instrumentale pour débutants (7-12 ans)",
  teacher_id: 2,
  workshop_day: "monday",
  start_time: Time.strptime("19:00", "%H:%M"),
  end_time: Time.strptime("19:45", "%H:%M"),
  location: "Plessé",
  description: "Chaque enfant choisit en début d’année, en lien avec le professeur, un instrument fourni par l’école de musique qu’il conservera pour toute l’année. Il découvre l’instrument, découvre du répertoire et s’initie à la musique en mouvement !"
}, {
  name: "Atelier Duo",
  teacher_id: 999,
  frequency: "six_times",
  description: "Jours et horaires ajustables, sur 6 séances successives – le professeur qui interviendra sur cet atelier sera déterminé en fonction des jours et heures possibles pour les élèves.\r\n\r\n
  L’atelier duo est proposé sur environ 6 séances (période inter-vacances) d’une heure par semaine pour jouer avec un autre musicien sur un répertoire proposé de musiques traditionnelles de Bretagne et d’ailleurs."
}]

workshops.each do |workshop|
  Workshop.create!(workshop)
end

Meeting.destroy_all
meetings = [{
  name: "Accordéon diatonique",
  description: "6 figures d’accordéonistes intervenants",
  amount: 6,
  meeting_day: "saturday",
  price: 140
}, {
  name: "Chant traditionnel",
  description: "6 figures du chant traditionnel intervenants",
  amount: 6,
  meeting_day: "saturday",
  price: 140
}, {
  name: "Guitare",
  description: "3 figures de la guitare invitées par Joran Marsac et l’EMT",
  amount: 3,
  price: 90
}, {
  name: "Flûte",
  description: "3 figures de la flûte traditionnelle invitées par Goulven Dréano et l’EMT",
  amount: 3,
  price: 90
}, {
  name: "Chant/Ballades irlandaises",
  description: "Animées par Emmanuel Lemare",
  amount: 2,
  price: 140
}, {
  name: "Orgue sensoriel",
  description: "Animé par Tanguy Pacault",
  amount: 6,
  price: 140
}, {
  name: "Uillean pipes",
  description: "Animé par Loïc Joucla",
  amount: 6,
  meeting_day: "saturday",
  price: 200
}]

meetings.each do |meeting|
  Meeting.create!(meeting)
end

GroupWork.destroy_all
group_works = [{
  name: "Harmonica",
  location: "Redon",
  price: 20
}, {
  name: "Cornemuse",
  location: "Redon",
  price: 20
}]

group_works.each do |workshop|
  GroupWork.create!(workshop)
end

Project.destroy_all
projects = [{
  name: "La P’tite Bogue",
  description: "Journée d’immersion musicale pour les 4-10 ans. Partenariat avec le 7, Conservatoire."
}, {
  name: "Les Jeunes Pousses",
  description: "Création d’un spectacle pour la Bogue avec les élèves de -11ans de l’EMT."
}, {
  name: "Création Jeunes Bogue 2023",
  description: "Pour ados musiciens. Participation à une création avec un artiste invité à la Bogue."
}, {
  name: "Concordances",
  description: "Création avec l’orchestre Concordances du 7, =le Conservatoire pour la Bogue 2023 (adhésion obligatoire)."
}, {
  name: "Événement printemps 2024",
  description: "Création événement de l’EMT."
}]

projects.each do |project|
  Project.create!(project)
end

slots = [
  {
    teacher_id: 1,
    city_id: 1,
    day: "monday",
    start_time: Time.strptime("17:00", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 1,
    city_id: 2,
    day: "wednesday",
    start_time: Time.strptime("16:00", "%H:%M"),
    end_time: Time.strptime("17:30", "%H:%M"),
  },
  {
    teacher_id: 1,
    city_id: 2,
    day: "wednesday",
    start_time: Time.strptime("19:45", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 1,
    city_id: 4,
    day: "thursday",
    start_time: Time.strptime("17:00", "%H:%M"),
    end_time: Time.strptime("18:15", "%H:%M"),
  },
  {
    teacher_id: 1,
    city_id: 4,
    day: "thursday",
    start_time: Time.strptime("19:45", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 1,
    city_id: 5,
    day: "wednesday",
    start_time: Time.strptime("12:00", "%H:%M"),
    end_time: Time.strptime("13:30", "%H:%M"),
  },
  {
    teacher_id: 2,
    city_id: 1,
    day: "monday",
    start_time: Time.strptime("13:00", "%H:%M"),
    end_time: Time.strptime("17:00", "%H:%M"),
  },
  {
    teacher_id: 2,
    city_id: 1,
    day: "monday",
    start_time: Time.strptime("20:30", "%H:%M"),
    end_time: Time.strptime("22:30", "%H:%M"),
  },
  {
    teacher_id: 2,
    city_id: 1,
    day: "thursday",
    start_time: Time.strptime("16:30", "%H:%M"),
    end_time: Time.strptime("18:00", "%H:%M"),
  },
  {
    teacher_id: 2,
    city_id: 1,
    day: "thursday",
    start_time: Time.strptime("18:45", "%H:%M"),
    end_time: Time.strptime("20:00", "%H:%M"),
  },
  {
    teacher_id: 2,
    city_id: 1,
    day: "thursday",
    start_time: Time.strptime("20:45", "%H:%M"),
    end_time: Time.strptime("22:30", "%H:%M"),
  },
  {
    teacher_id: 2,
    city_id: 7,
    day: "monday",
    start_time: Time.strptime("17:30", "%H:%M"),
    end_time: Time.strptime("20:00", "%H:%M"),
  },
  {
    teacher_id: 3,
    city_id: 1,
    day: "wednesday",
    start_time: Time.strptime("17:00", "%H:%M"),
    end_time: Time.strptime("20:00", "%H:%M"),
  },
  {
    teacher_id: 3,
    city_id: 6,
    day: "wednesday",
    start_time: Time.strptime("18:00", "%H:%M"),
    end_time: Time.strptime("21:00", "%H:%M"),
  },
  {
    teacher_id: 4,
    city_id: 1,
    day: "wednesday",
    start_time: Time.strptime("10:00", "%H:%M"),
    end_time: Time.strptime("20:00", "%H:%M"),
  },
  {
    teacher_id: 5,
    city_id: 4,
    day: "wednesday",
    start_time: Time.strptime("18:45", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 6,
    city_id: 1,
    day: "wednesday",
    start_time: Time.strptime("10:30", "%H:%M"),
    end_time: Time.strptime("14:00", "%H:%M"),
  },
  {
    teacher_id: 6,
    city_id: 2,
    day: "wednesday",
    start_time: Time.strptime("17:20", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 6,
    city_id: 3,
    day: "tuesday",
    start_time: Time.strptime("17:30", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 6,
    city_id: 4,
    day: "wednesday",
    start_time: Time.strptime("15:00", "%H:%M"),
    end_time: Time.strptime("16:40", "%H:%M"),
  },
  {
    teacher_id: 6,
    city_id: 7,
    day: "monday",
    start_time: Time.strptime("19:00", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 7,
    city_id: 4,
    day: "thursday",
    frequency: "odd_weeks"
  },
  {
    teacher_id: 7,
    city_id: 10,
    day: "wednesday",
    frequency: "even_weeks"
  },
  {
    teacher_id: 8,
    city_id: 1,
    day: "wednesday",
    start_time: Time.strptime("20:00", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 8,
    city_id: 9,
    day: "wednesday",
    start_time: Time.strptime("20:00", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 8,
    city_id: 2,
    day: "wednesday",
    start_time: Time.strptime("18:00", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 9,
    city_id: 1,
    day: "monday",
    start_time: Time.strptime("17:00", "%H:%M"),
    end_time: Time.strptime("22:00", "%H:%M"),
  },
  {
    teacher_id: 9,
    city_id: 10,
    day: "wednesday",
    frequency: "even_weeks"
  },
  {
    teacher_id: 10,
    city_id: 1,
    day: "wednesday",
    description: "Horaires à définir selon les inscriptions"
  },
  {
    teacher_id: 11,
    city_id: 1,
    day: "tuesday",
    start_time: Time.strptime("10:00", "%H:%M"),
    end_time: Time.strptime("14:00", "%H:%M"),
  },
  {
    teacher_id: 11,
    city_id: 1,
    day: "tuesday",
    start_time: Time.strptime("17:00", "%H:%M"),
    end_time: Time.strptime("21:00", "%H:%M"),
  },
  {
    teacher_id: 11,
    city_id: 2,
    day: "wednesday",
    start_time: Time.strptime("15:30", "%H:%M"),
    end_time: Time.strptime("20:30", "%H:%M"),
  },
  {
    teacher_id: 12,
    city_id: 1,
    day: "friday",
    description: "Horaires à définir selon les inscriptions – tous les 15 jours",
    frequency: "every_two_weeks"
  },
  {
    teacher_id: 12,
    city_id: 4,
    description: "Jours et horaires à définir selon les inscriptions – tous les 15 jours"
  },
  {
    teacher_id: 12,
    city_id: 6,
    description: "Jours et horaires à définir selon les inscriptions – tous les 15 jours"
  },
  {
    teacher_id: 13,
    city_id: 7,
    day: "monday",
    start_time: Time.strptime("17:30", "%H:%M"),
    end_time: Time.strptime("21:00", "%H:%M"),
  },
  {
    teacher_id: 14,
    city_id: 1,
    day: "tuesday",
    start_time: Time.strptime("15:30", "%H:%M"),
    end_time: Time.strptime("20:30", "%H:%M"),
  },
  {
    teacher_id: 14,
    city_id: 1,
    day: "thursday",
    start_time: Time.strptime("15:30", "%H:%M"),
    end_time: Time.strptime("20:30", "%H:%M"),
  },
  {
    teacher_id: 14,
    city_id: 8,
    day: "tuesday",
    start_time: Time.strptime("15:30", "%H:%M"),
    end_time: Time.strptime("20:30", "%H:%M"),
  },
  {
    teacher_id: 14,
    city_id: 8,
    day: "thursday",
    start_time: Time.strptime("15:30", "%H:%M"),
    end_time: Time.strptime("20:30", "%H:%M"),
  },
  {
    teacher_id: 15,
    city_id: 1,
    day: "wednesday",
    start_time: Time.strptime("15:00", "%H:%M"),
    end_time: Time.strptime("21:30", "%H:%M"),
  },
  {
    teacher_id: 16,
    city_id: 2,
    day: "tuesday",
    start_time: Time.strptime("19:00", "%H:%M"),
    end_time: Time.strptime("21:00", "%H:%M"),
  },
  {
    teacher_id: 16,
    city_id: 2,
    day: "wednesday",
    start_time: Time.strptime("19:00", "%H:%M"),
    end_time: Time.strptime("21:00", "%H:%M"),
  },
]

slots.each do |slot|
  Slot.create!(slot)
end

Category.destroy_all
categories = [
  { name: "Groupement" },
  { name: "École de musique traditionnelle" },
  { name: "Centre de ressources" },
  { name: "Événements" },
]

categories.each do |category|
  Category.create!(category)
end

Plan.destroy_all
Plan.create!({
  name: "Formule 2023",
  class_price: 300,
  workshop_price: 108,
  obc_markup: 10,
  outbounds_markup: 20
})

Season.create!({ start_year: 2023, plan_id: 1 })
Configuration.create!({ season_id: 1 })

staff = [{
  first_name: "Fabienne",
  last_name: "Mabon",
  start_year: 2000,
  role: "Coordinatrice du groupement",
  description: "Super Fabienne s’occupe de tout",
  is_employee: true,
  status: "Actif"
}, {
  first_name: "Laurence",
  last_name: "David",
  start_year: 2000,
  role: "Secrétaire-comptable",
  description: "Les chiffres les chiffres les chiffres",
  is_employee: true,
  status: "Actif"
}, {
  first_name: "Aurélie",
  last_name: "Brault",
  start_year: 2000,
  role: "Coordinatrice du centre de ressources",
  description: "Suivi des ressources de collecte et autre",
  is_employee: true,
  status: "Actif"
 }, {
  first_name: "Goulven",
  last_name: "Dreano",
  start_year: 2000,
  role: "Coordinateur des professeurs",
  description: "Mélomane en résidence",
  is_employee: true,
  status: "Actif"
}, {
  first_name: "Milly",
  last_name: "Felez",
  start_year: 2022,
  role: "Coordinatrice de l’école de musique, sa communication et ses évéments",
  description: "Gère tout ce qui concerne l’école de musique",
  is_employee: true,
  status: "Actif"
}]

staff.each do |person|
  Staff.create!(person)
end

Payor.create!(
  id: 1,
  last_name: "Kieu",
  first_name: "Thimy",
  street_address: "28 rue de Pont Miny",
  postcode: "44460",
  city: "Fégréac",
  phone: "0633779190",
  mail: "thimy@pm.me"
)

students = [{
  id: 1,
  last_name: "Kieu",
  first_name: "Thimy",
  payor_id: 1,
  birthyear: 1987,
  email: "thimy@pm.me"
}, {
  id: 2,
  last_name: "Fouques",
  first_name: "Hugo",
  payor_id: 1,
  birthyear: 1989,
  email: "thimy@pm.me"
}]

students.each do |student|
  Student.create!(student)
end

User.create!(
  id: 1,
  email: "thimy@pm.me",
  password: "De6ebrey",
  payor_id: 1,
  teacher_id: 1,
  student_id: 1,
  volunteer: true,
  admin: true
)

payment_states = [{
  name: "Demande d’information"
}, {
  name: "Inscrit - à régler"
}, {
  name: "Inscrit - réglé"
}, {
  name: "À rembourser"
}]

payment_states.each do |payment_state|
  PaymentState.create!(payment_state)
end

subscriptions = [{
  id: 1,
  season_id: 1,
  student_id: 1,
  payment_state_id: 2
}, {
  id: 2,
  season_id: 1,
  student_id: 2,
  payment_state_id: 2
}]

subscriptions.each do |subscription|
  Subscription.create!(subscription)
end

sessions = [{
  id: 1,
  course_id: 2,
  subscription_id: 1,
  slot_id: 1,
  start_time: Time.strptime("19:20", "%H:%M"),
  end_time: Time.strptime("19:40", "%H:%M"),
}, {
  id: 2,
  course_id: 8,
  subscription_id: 1,
  slot_id: 13,
  start_time: Time.strptime("19:00", "%H:%M"),
  end_time: Time.strptime("19:40", "%H:%M"),
}, {
  id: 3,
  course_id: 9,
  subscription_id: 2,
  slot_id: 15,
  start_time: Time.strptime("19:00", "%H:%M"),
  end_time: Time.strptime("19:20", "%H:%M"),
}]

sessions.each do |session|
  Session.create!(session)
end

