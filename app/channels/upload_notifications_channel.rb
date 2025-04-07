class UploadNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "upload_notifications_#{connection.current_user.id}"
  end

  def unsubscribed
    stop_all_streams
  end
end 