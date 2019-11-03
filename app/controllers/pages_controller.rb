class PagesController < ApplicationController
  def landing
  end

  def about_us
  end

  def about_coffee
  end

  def about_bcr
  end

  def contact
    @contact = ContactForm.new(params[:contact_form])
  end

  def create
    @contact = ContactForm.new(params[:contact_form])
    @contact.request = request

    respond_to do |format|
      if @contact.deliver
        format.html { redirect_to :root, notice: "Thank you for your message, we shall get back to shortly!" }
      else
        format.html { render 'contact', alert: "Message did not send, please try again." }
      end
    end
  end
end
