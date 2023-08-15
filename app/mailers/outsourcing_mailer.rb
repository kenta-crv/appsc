class OutsourcingMailer < ActionMailer::Base
  default from: "appsc@factoru.jp"
  #default to: "appsc@factoru.jp"

  def received_email(outsourcing)
    @outsourcing = outsourcing
    mail to: "appsc@factoru.jp"
    mail(subject: '株式会社Ri-Plusの業務委託事務の応募がありました') do |format|
      format.text
    end
  end

  def send_email(outsourcing)
    @outsourcing = outsourcing
    mail to: outsourcing.mail
    mail(subject: '株式会社Ri-Plusに求人応募頂きありがとうございます。') do |format|
      format.text
    end
  end

end
