class Upload
  include Mongoid::Document
  field :submit_on_time, type: Boolean

  belongs_to :user
  belongs_to :assignment
end
