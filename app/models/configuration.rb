class Configuration < ApplicationRecord
  before_create :check_for_existing
  before_destroy :check_for_existing

  belongs_to :season

  def self.load
    config = Configuration.first

    if config.nil?
      config = Configuration.create
    end

    config
  end

  private

  def check_for_existing
    raise ActiveRecord::RecordInvalid if Configuration.count >= 1
  end
end
