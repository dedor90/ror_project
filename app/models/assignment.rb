class Assignment
  include Mongoid::Document
  field :number, type: Integer
  field :grade, type: Integer
  field :description, type: String
  
  belongs_to: Course
  has_many: Uploads
end
