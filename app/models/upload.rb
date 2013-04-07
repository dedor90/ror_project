class Upload
  include Mongoid::Document
  field :submit_on_time, type: Boolean

  belongs_to: User
  has_one: Assignment
end
