module WithTime
  extend ActiveSupport::Concern
 
  DAYS_ORDERED = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi"]

  def time(time)
    time.strftime("%kh%M")
  end
end
