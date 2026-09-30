require_relative 'issue'

login_issue = Issue.new(
  1,
  "Fix login bug",
  "Users cannot login",
  "open",
  "high"
)

auth_issue = Issue.new(
  2,
  "Fix auth bug",
  "Users cannot authenticate",
  "open",
  "medium"
)

ui_issue = Issue.new(
  3,
  "Fix ui bug",
  "Logo of the page looks weird",
  "closed",
  "low"
)

issues = [login_issue, auth_issue, ui_issue]

print "Search for ID: "
id_search = gets.strip.to_i

result = issues.find do |issue|
  issue.id == id_search
end

if result
  puts "\nFound: "
  puts result.display
else
  puts "\nIssue not found"
end
