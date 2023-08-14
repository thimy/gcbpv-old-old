class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.array_to_enum_hash(array)
    array.map { |el| [el, el] }.to_h
  end
end
