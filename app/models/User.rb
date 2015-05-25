class User
  attr_accessor :name, :surname, :email

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @surname=attributes[:surname]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end