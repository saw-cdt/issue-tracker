class IssueTracker

  def initialize
    @issues = []
  end

  def add(issue)
    @issues.append(issue)
  end

  def all
    return @issues.dup
  end
end
