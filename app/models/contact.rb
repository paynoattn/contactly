class Contact
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :phone, type: Integer
  field :address, type: String
  field :_id, type: String, default: ->{ name.to_s.parameterize }

  def validation
    validates_presence_of :name, :email, :phone, :address
  end
end
