class NoteMailer < ApplicationMailer


  def new_note_permission note, user
    @note = note
    @user = user

    mail(to: @user.email, subject: 'Você recebeu um convite para editar uma nota')
  end

  def permission_revoked note, user
    @note = note
    @user = user

    mail(to: @user.email, subject: 'Permissão de edição de nota revogada')
  end
end
