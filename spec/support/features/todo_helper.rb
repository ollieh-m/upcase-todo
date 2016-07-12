module Features

  def create_todo(task)
    click_on 'Add a new todo'
    fill_in('Title', with: task)
    click_on 'Submit'
  end
  
  def have_todo(task)
    have_css('.todos li', text: task)
  end
  
  def have_completed_todo(task)
    have_css('.todos li.completed', text: task)
  end
  
end