# see citations.txt, reference: http://l4u.github.io/articles/create-a-rails-4-site-with-contact-us-form/#add-contact-us-form

class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "your_email@example.org",
      :from => %("#{name}" <#{email}>)
    }
  end
end