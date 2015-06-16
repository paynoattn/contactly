class User
  include Mongoid::Document
  field :id, type: Integer
  field :u_name, type: String
  field :password, type: String
  
  has_many :contacts
end
