class Issue
  attr_reader :id
  attr_accessor :title, :description, :status, :priority

  def initialize(id, title, description, status, priority)
    @id = id
    @title = title
    @description = description
    @status = status
    @priority = priority
  end

  def display
    "##{id} [#{status}] #{title}"
  end

end

