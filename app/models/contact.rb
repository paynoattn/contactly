class Contact
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :phone, type: Integer
  field :address, type: String
end
