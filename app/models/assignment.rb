class Assignment
  include Mongoid::Document
  field :number, type: Integer
  field :grade, type: Integer
  field :description, type: String
  
  belongs_to :course
  has_many :uploads
end
