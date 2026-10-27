class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
  end
end
