class ContactsController < ApplicationController
  skip_before_action :require_login

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash[:notice] = 'Message sent successfully.'
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
