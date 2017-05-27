# see citations.txt, reference: http://l4u.github.io/articles/create-a-rails-4-site-with-contact-us-form/#add-contact-us-form

class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    # @contact.request = request
  end
end