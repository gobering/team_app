class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def delete_agenda_mail(team_members)
    @members = team_members
     mail to: @members.map(&:email).join(","), subject: "アジェンダ削除通知メールです。"
  end
end