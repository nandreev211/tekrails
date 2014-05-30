class HomeController < ApplicationController
  inherit_resources

  layout 'application'

  def index
    @works = Work.works_to_show
    @members = Member.all
    @banners = Banner.where("page = ?", "Home")
    @message = Message.new
  end
end