module Features
  def sign_in
    sign_in_as "person@example.com"
  end
  
  def sign_in_as(email)
    visit root_path
    fill_in("Email", with: email)
    click_on "Sign in"
  end
  
  def create_todo(task)
    click_on 'Add a new todo'
    fill_in('Title', with: task)
    click_on 'Submit'
  end
end