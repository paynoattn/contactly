class Contact
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :phone, type: Integer
  field :address, type: String
  field :_id, type: String, default: ->{ name.to_s.parameterize }

  validates :name, presence: true, uniqueness: true
  validates :phone, presence: true, length: {is: 10}
  
  belongs_to :user

end
