class ProcessTxtJob < ApplicationJob
  queue_as :default

  def perform(*args)
    post = Post.new(titulo: args[1], body: args[2], tag_ids: args[3], user_id: args[4])
    post.save
    sleep args[0]
  end
end
