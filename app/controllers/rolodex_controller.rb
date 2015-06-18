class RolodexController < ApplicationController
  def index
    set_contacts
    @message = Message.new
  end

  def destroy
    @contact = Contact.find params[:id]
    @contact.destroy
    set_contacts
    # redirect_to root_path, notice: '💔 Deleted 💔'
  end

  def set_contacts
    @contacts = Contact.all
                       .order('last_name')
                       .page(params[:page])

  end
end
