class Course
  include Mongoid::Document
  field :name, type: String
  field :id, type: Integer
  field :description, type: String

  has_many: Users, Assignments, Lectures
end
