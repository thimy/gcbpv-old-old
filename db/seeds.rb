# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)

InstrumentClass.destroy_all
Workshop.destroy_all
Teacher.destroy_all
Season.destroy_all
teachers = [
  { id: 1, name: "Goulven Dréano", status: "active", description: "" },
  { id: 2, name: "Tanguy Pacault", status: "active", description: "" },
  { id: 3, name: "Kaelig Frédéric", status: "active", description: "" },
  { id: 4, name: "Aurore Bréger", status: "active", description: "" },
  { id: 5, name: "Chantal Arnould", status: "active", description: "" },
  { id: 6, name: "Nathalie Herczog", status: "active", description: "" },
  { id: 7, name: "Joran Marsac", status: "active", description: "" },
  { id: 8, name: "Loïc Joucla", status: "active", description: "" },
  { id: 9, name: "Youn Lebreton", status: "active", description: "" },
  { id: 10, name: "Goulven Saout", status: "active", description: "" },
  { id: 11, name: "Yaël Benahim", status: "active", description: "" },
  { id: 12, name: "Ronan Robert", status: "active", description: "" },
  { id: 13, name: "Wenceslas Hervieux", status: "active", description: "" },
  { id: 14, name: "Mannaïg Le Guevel", status: "active", description: "" },
  { id: 15, name: "Yolaine Delamaire", status: "active", description: "" },
  { id: 999, name: "À définir", status: "inactive" }
]

teachers.each do |teacher|
  Teacher.create!(teacher)
end

Instrument.destroy_all
instruments = [
  { id: 1, name: "Accordéon diatonique" },
  { id: 2, name: "Accordéon à touches piano" },
  { id: 3, name: "Biniou" },
  { id: 4, name: "Bombarde" },
  { id: 5, name: "Chant" },
  { id: 6, name: "Clarinette" },
  { id: 7, name: "Cornemuse écossaise" },
  { id: 8, name: "Flûte traversière" },
  { id: 9, name: "Guitare" },
  { id: 10, name: "Harpe celtique" },
  { id: 11, name: "Percussions" },
  { id: 12, name: "Saxophone" },
  { id: 13, name: "Tin whistle" },
  { id: 14, name: "Uillean pipes" },
  { id: 15, name: "Violon" },
]

instruments.each do |instrument|
  Instrument.create!(instrument)
end

instrument_classes = [
  { id: 1, teacher_id: 1, instrument_id: 8 },
  { id: 2, teacher_id: 1, instrument_id: 11 },
  { id: 3, teacher_id: 1, instrument_id: 13 },
  { id: 4, teacher_id: 2, instrument_id: 3 },
  { id: 5, teacher_id: 2, instrument_id: 4 },
  { id: 6, teacher_id: 2, instrument_id: 6 },
  { id: 7, teacher_id: 2, instrument_id: 13 },
  { id: 8, teacher_id: 3, instrument_id: 15 },
  { id: 9, teacher_id: 4, instrument_id: 10 },
  { id: 10, teacher_id: 5, instrument_id: 15 },
  { id: 11, teacher_id: 6, instrument_id: 5 },
  { id: 12, teacher_id: 7, instrument_id: 9 },
  { id: 13, teacher_id: 8, instrument_id: 14 },
  { id: 14, teacher_id: 9, instrument_id: 7 },
  { id: 15, teacher_id: 9, instrument_id: 12 },
  { id: 16, teacher_id: 10, instrument_id: 1 },
  { id: 17, teacher_id: 11, instrument_id: 1 },
  { id: 18, teacher_id: 12, instrument_id: 1 },
  { id: 19, teacher_id: 13, instrument_id: 2 },
  { id: 20, teacher_id: 14, instrument_id: 5 },
  { id: 21, teacher_id: 15, instrument_id: 5 },
]

instrument_classes.each do |instrument_class|
  InstrumentClass.create!(instrument_class)
end

Discovery.destroy_all
discoveries = [
  {
    id: 1,
    name: "Éveil musical de 4 à 6 ans",
    price: 90, 
    description: "Chant, danse, conte... à la découverte du patrimoine culturel local, de la musique traditionnelle. Jeux rythmiques et mélodiques autour de la musique traditionnelle, chants, danses, contes, découverte d’instruments, participation à la P’tite Bogue, aux évènements de l’Ecole de Musique, ..."
  },
  {
    id: 2,
    name: "Découverte instrumentale enfants de 7 à 9 ans",
    price: 130,
    description: "Accompagnement de l’élève vers le choix d’un instrument.
    Découverte et pratique de 5 instruments parmi les suivants : biniou-bombarde et cornemuse, clarinette, violon, guitare, flûtes (tin whistle, traversière...), accordéon diatonique, bodhran. Jeux rythmiques et mélodiques autour de la musique traditionnelle, chants, danses, percussions corporelles, participation à la P’tite Bogue, , aux évènements de l’Ecole de Musique, ..."
  },
  {
    id: 3,
    name: "Découverte instrumentale ados et adultes",
    price: 60,
    description: "Découverte et pratique de plusieurs instruments choisis par les participants en lien avec le professeur." },
]

discoveries.each do |discovery|
  Discovery.create!(discovery)
end

City.destroy_all
cities = [
  { name: "Redon" },
  { name: "Allaire" },
  { name: "La Chapelle de Brain" },
  { name: "La Gacilly" },
  { name: "Peillac" },
  { name: "Pipriac" },
  { name: "Plessé" },
  { name: "Renac" },
  { name: "Saint-Nicolas-de-Redon" },
]

cities.each do |city|
  City.create!(city)
end

workshops = [{
  id: 1,
  name: "Danse, chant et musique pour les 7-11 ans",
  teacher_id: 1,
  workshop_day: "Mercredi",
  location: "Allaire"
}, {
  id: 2,
  name: "Chant en breton pour les 7-11 ans",
  teacher_id: 15,
  workshop_day: "Mardi ou mercredi",
  location: "Redon ou Allaire/Peillac"
}, {
  id: 3,
  name: "Atelier Duo (enfants, ados ou adultes)",
  teacher_id: 5,
  workshop_day: "Mardi",
  location: "La Chapelle de Brain"
}, {
  id: 4,
  name: "Percussions pour les 9-18 ans",
  teacher_id: 1,
  workshop_day: "Jeudi",
  location: "La Gacilly"
}, {
  id: 5,
  name: "Pratique d’ensemble ou fanfare pour débutants (7-12 ans)",
  teacher_id: 2,
  workshop_day: "Lundi",
  location: "Plessé"
}, {
  id: 6,
  name: "Atelier Duo (enfants, ados ou adultes)",
  teacher_id: 999,
  description: "6 séances environ en période inter-vacances",
  location: "Redon"
}, {
  id: 7,
  name: "Percussions (9 ans et +)",
  teacher_id: 1,
  workshop_day: "Samedi (toutes les deux semaines)",
  location: "Redon"
}, {
  id: 8,
  name: "Découverte de la musique médiévale",
  teacher_id: 3,
  workshop_day: "Mercredi (toutes les deux semaines)",
  location: "Redon"
}, {
  id: 9,
  name: "Atelier jeunes ”collecté connecté” (12 ans et +)",
  teacher_id: 2,
  description: "Niveau intermédiaire/avancé",
  location: "Redon"
}, {
  id: 10,
  name: "Arrangements/création/impro",
  teacher_id: 2,
  workshop_day: "Jeudi",
  location: "Redon"
}, {
  id: 11,
  name: "Brigade d’animation de rue",
  teacher_id: 2,
  workshop_day: "Jeudi",
  location: "Redon"
}, {
  id: 12,
  name: "Musique du monde",
  teacher_id: 1,
  workshop_day: "Samedi (toutes les deux semaines)",
  location: "Redon"
}, {
  id: 13,
  name: "Ensemble de harpes",
  teacher_id: 4,
  workshop_day: "Samedi (1 fois par mois)",
  location: "Redon"
}, {
  id: 14,
  name: "Ensemble adultes",
  teacher_id: 5,
  workshop_day: "Mardi",
  location: "La Chapelle de Brain"
}, {
  id: 15,
  name: "Chant Haute-Bretagne",
  teacher_id: 14,
  workshop_day: "Mercredi",
  location: "Redon"
}, {
  id: 16,
  name: "Technique vocale et travail de l’interprétation",
  teacher_id: 6,
  workshop_day: "Toutes les deux semaines",
  location: "Redon ou La Gacilly"
}, {
  id: 17,
  name: "Atelier irlandais",
  teacher_id: 5,
  workshop_day: "Mardi (toutes les deux semaines)",
  location: "Redon"
}, {
  id: 18,
  name: "”Slow session” irlandaise",
  teacher_id: 5,
  workshop_day: "Mardi",
  location: "Redon"
}, {
  id: 19,
  name: "Ensemble vocal ”Chants du Pays et d’ailleurs”",
  teacher_id: 999,
  workshop_day: "Mardi (toutes les deux semaines)",
  location: "Redon"
}, {
  id: 20,
  name: "La Chantième Compagnie",
  teacher_id: 13,
  workshop_day: "Mardi",
  location: "Redon"
}, {
  id: 21,
  name: "L’HAPPY NOIRE",
  teacher_id: 15,
  workshop_day: "Mercredi",
  location: "Redon"
}, {
  id: 22,
  name: "Carte Blanche",
  teacher_id: 12,
  workshop_day: "Toutes les deux semaines",
  location: "Redon"
}]

workshops.each do |workshop|
  Workshop.create!(workshop)
end

Meeting.destroy_all
meetings = [{
  id: 1,
  name: "Accordéon diatonique",
  description: "6 figures d’accordéonistes intervenants",
  amount: 6,
  meeting_day: "Samedi",
  price: 140
}, {
  id: 2,
  name: "Chant traditionnel",
  description: "6 figures du chant traditionnel intervenants",
  amount: 6,
  meeting_day: "Samedi",
  price: 140
}, {
  id: 3,
  name: "Guitare",
  description: "3 figures de la guitare invitées par Joran Marsac et l’EMT",
  amount: 3,
  price: 90
}, {
  id: 4,
  name: "Flûte",
  description: "3 figures de la flûte traditionnelle invitées par Goulven Dréano et l’EMT",
  amount: 3,
  price: 90
}, {
  id: 5,
  name: "Chant/Ballades irlandaises",
  description: "Animées par Emmanuel Lemare",
  amount: 2,
  price: 140
}, {
  id: 6,
  name: "Orgue sensoriel",
  description: "Animé par Tanguy Pacault",
  amount: 6,
  price: 140
}, {
  id: 7,
  name: "Uillean pipes",
  description: "Animé par Loïc Joucla",
  amount: 6,
  meeting_day: "Samedi",
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
  id: 1,
  name: "Formule 2023",
  class_price: 300,
  workshop_price: 108,
  awakening_price: 90,
  kids_discovery_price: 130,
  discovery_price: 60,
  obc_markup: 10,
  outbounds_markup: 20
})

Season.create!({ start_year: 2023, plan_id: 1 })

Student.destroy_all
Payor.destroy_all
5.times do |i|
  Payor.create!(id: i, last_name: "Payor", first_name: "#{i + 1}", mail: "payor#{i + 1}@mail.com", street_address: "Adresse", postcode: rand(10000..97000), city: "City")
end

Student.destroy_all
10.times do |i|
  Student.create!(id: i, last_name: "Student", first_name: "#{i + 1}", payor_id: 1)
end
