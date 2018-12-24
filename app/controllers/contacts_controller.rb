class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      ContactsMailer.send_message(@contact).deliver_now
      redirect_to tests_path, notice: 'Your message has been sent successfully!'
    else
      flash[:alert] = "Something something's gone wrong"
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :body)
  end

end
