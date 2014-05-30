class WorksController < ApplicationController
  inherit_resources

  layout 'garden'

  def index
    @works = Work.all
    @banners = Banner.where("page = ?", "Work")
    @page = 'work'
  end

  def services
    @page = 'services'
    @message = Message.new
    @banners = Banner.where("page = ?", "Service")
  end

  def proces
    @page = 'process'
    @banners = Banner.where("page = ?", "Process")
  end

  def team
    @members = Member.all
    @page = 'team'
    @banners = Banner.where("page = ?", "Team")
  end

  def open_source
    @page = 'open-src'
    @banners = Banner.where("page = ?", "Open Source")
  end

  def contact
    @page = 'contact'
    @message = Message.new
    @banners = Banner.where("page = ?", "Contact")
  end

end