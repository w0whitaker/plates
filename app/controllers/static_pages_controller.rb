class StaticPagesController < ApplicationController
  skip_before_action :require_login
  
  def home
  end

  def cv
  end

  def maintenance
  end

end
