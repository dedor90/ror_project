class Course
  include Mongoid::Document
  field :call_number, type: Integer
  field :title, type: String
  field :start_time, type: String
  field :end_time, type: String
  field :meets_on, type: String
  field :building, type: String
  field :room, type: String
  field :instructor, type: String

  has_and_belongs_to_many :users
  has_many :assignments
  has_many :lectures
end
