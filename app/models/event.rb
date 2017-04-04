class Event < ApplicationRecord
  has_many :event_students
  has_many :students, through: :event_students

  accepts_nested_attributes_for :students, reject_if: lambda {|attributes| attributes['name'].blank? || attributes['sku'].blank?}

  # def fabric_attributes=(attributes)
  #   # Process the attributes hash
  #   self.build_fabric(attributes)
  # end
end
