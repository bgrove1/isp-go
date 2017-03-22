class DemoController < ApplicationController

  layout 'application'

  def index
  end

  def hello
  end

  def other_hello
    redirect_to(:action => 'hello')
  end

  def escape_output
  end

end
