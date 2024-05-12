module ApplicationHelper
  def exibir_avatar(*args)
    #binding.pry
    user = User.find(args[0]) if args[0].present?
    if user.present? and user.perfil.avatar.attached?
      if args[2].present?
        image_tag(user.perfil.avatar, width: args[1], height: args[2], class: "rounded-circle img-fluid")
      else
        image_tag(user.perfil.avatar, width: args[1], class: "rounded-circle img-fluid")
      end
    else
      if args[2].present?
        image_tag("perfil.png", width: args[1], height: args[2], class: "rounded-circle img-fluid")
      else
        image_tag("perfil.png", width: args[1], class: "rounded-circle img-fluid")
      end
    end
  end
end
