class IssueTracker

  def initialize
    @issues = []
  end

  def add(issue)
    @issues.append(issue)
  end

  def find(issue_search)
    @issues.find do |issue|
      issue.id == issue_search
    end
  end

  def all
    @issues.dup
  end

  def update(issue_search, new_status)
    result = find(issue_search)

    if result
      result.status = new_status
    end

    return result
  end

  def delete(issue_search)
    result = find(issue_search)
    @issues.delete(result)
  end

end
