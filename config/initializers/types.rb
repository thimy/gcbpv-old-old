ActiveSupport.on_load(:active_record) do
  ActiveRecord::Type.register :day_of_week, DayOfWeekType
  ActiveRecord::Type.register :frequency, FrequencyType
end
