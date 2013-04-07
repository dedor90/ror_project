class Lecture
  include Mongoid::Document
  field :number, type: Integer
  field :description, type: String

  belongs_to: Course
end
