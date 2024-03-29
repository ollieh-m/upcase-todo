class User
  
  attr_reader :email
  
  def initialize(email)
    @email = email
  end
  
  def todos
    Todo.where(email: email)
  end
  
  def signed_in?
    !!email
  end
  
end