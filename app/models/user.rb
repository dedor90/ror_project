class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :role, type: String

  has_and_belongs_to_many :courses


def after_initialize
  if new_record?
  	role = "student"
  end
end

end
