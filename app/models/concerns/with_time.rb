module WithTime
  extend ActiveSupport::Concern
 
  def time(time)
    time.strftime("%kh%M")
  end
end
