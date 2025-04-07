class ProcessPostsWorker
  include Sidekiq::Worker
  queue_as :default

  def perform(post)
    begin
      post_record = Post.create!(post)
      ActionCable.server.broadcast(
        "upload_notifications_#{post['user_id']}",
        {
          message: "Post '#{post_record.titulo}' foi criado com sucesso!",
          post_id: post_record.id,
          status: 'success'
        }
      )
    rescue => e
      ActionCable.server.broadcast(
        "upload_notifications_#{post['user_id']}",
        {
          message: "Erro ao criar post: #{e.message}",
          status: 'error'
        }
      )
    end
  end
end
