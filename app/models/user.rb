class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :role, type: String

  has_and_belongs_to_many :courses
  validates :email, :presence => true
  after_initialize :init

def init
  if new_record?
  	self.role ||= "student"
  end
end

end
