class Course
  include Mongoid::Document
  field :name, type: String
  field :id, type: Integer
  field :description, type: String

  has_and_belongs_to_many :users
  has_many :assignments
  has_many :lectures
end
