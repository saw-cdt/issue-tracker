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

print "Title: "
title = gets.strip

print "Description: "
description = gets.strip

print "Status: "
status = gets.strip

print "Priority: "
priority = gets.strip

user_issue = Issue.new(
  4,
  title,
  description,
  status,
  priority
)

issues.append(user_issue)

issues.each do |issue|
  puts issue.display
end
