require 'rails_helper'

describe Todo, "#completed?" do
  it 'returns true if completed_at is set' do
    todo = Todo.new(completed_at: Time.now)
    expect(todo).to be_completed
  end
  
  it 'returns false if completed_at is set' do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed
  end
end

describe Todo, "#complete!" do
  it 'adds a timestamp to the todo completed_at attribute' do
    allow(Time).to receive(:now).and_return(Time.new(2001,1,1))
    todo = Todo.create(completed_at: nil)
    todo.complete!
    todo.reload
    expect(todo.completed_at).to eq Time.new(2001,1,1)
  end
end

describe Todo, "#incomplete!" do
  it 'removes a timestamp from the todo completed_at attribute' do
    todo = Todo.create(completed_at: Time.now)
    todo.incomplete!
    todo.reload
    expect(todo).not_to be_completed
  end
end