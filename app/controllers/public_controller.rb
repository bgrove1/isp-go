class PublicController < ApplicationController

  layout 'public'

  #user authentication would go here

  def index
    # intro text
  end

  def show
    @page = Page.visible.where(:permalink => params[:permalink]).first
    if @page.nil?
      redirect_to(root_path)
    else
      #display the page content using show.html.erb
    end
  end

end
