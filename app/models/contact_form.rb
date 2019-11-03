class ContactForm < MailForm::Base
  attribute :first_name, :validate => true
  attribute :last_name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :message
  attribute :nickname, :captcha  => true

  def headers
    {
      :subject => "BCR.com",
      :to => "duvalwcash@gmail.com",
      :from => %("#{first_name + " " + last_name}" <#{email}>)
    }
  end
end
