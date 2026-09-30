require_relative 'issue'

def show_issues(issues) 
  puts "\n---Issues---"
  issues.each do |issue|
    puts issue.display
  end
  puts "------------"
end

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

puts "\n---CREATE---\n"
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

show_issues(issues)

puts "\n---UPDATE && READ---\n"
print "Search for ID: "
id_search = gets.strip.to_i

result = issues.find do |issue|
  issue.id == id_search
end

if result
  puts "\nFound: "
  puts result.display

  print "\nNew status: "
  result.status = gets.strip
else
  puts "\nIssue not found"
end

show_issues(issues)

puts "\n---DELETE---\n"
print "Delete ID: "
id_search = gets.strip.to_i

result = issues.find do |issue|
  issue.id == id_search
end

if result
  deleted = issues.delete(result)
  puts "\nDeleted: #{deleted.display}"
else
  puts "\nIssue not found"
end

show_issues(issues)
