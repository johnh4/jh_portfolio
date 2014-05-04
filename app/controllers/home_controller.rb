class HomeController < ApplicationController
  def main
  	@projects = Project.all

  end
end
