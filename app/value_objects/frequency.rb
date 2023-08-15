class Frequency
  FREQUENCY = %w(always every_two_weeks even_weeks odd_weeks once_per_month six_times flexible
  ).freeze

  def initialize(frequency)
    @frequency = frequency
  end

  # what you need here
end
