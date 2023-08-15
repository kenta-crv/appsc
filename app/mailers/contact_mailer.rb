class ContactMailer < ActionMailer::Base
  default from: "appsc@factoru.jp"
  def received_email(contact)
    @contact = contact
    mail to: "appsc@factoru.jp"
    mail(subject: 'Ri-Novasよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contact)
    @contact = contact
    mail to: contact.email
    mail(subject: 'Ri-Novasにお問い合わせ頂きありがとうございます｜Ri-Novas') do |format|
      format.text
    end
  end

end
