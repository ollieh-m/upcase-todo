class Todo < ActiveRecord::Base
    
  def completed?
    !!completed_at
  end
    
  def complete!
    self.update(completed_at: Time.now)
  end
    
end
