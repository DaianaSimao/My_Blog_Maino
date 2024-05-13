class ProcessPostsWorker
  include Sidekiq::Worker
  queue_as :default
  def perform(*args)
    post = Post.create!(titulo: args[0], body: args[1], tag_ids: args[2], user_id: args[3])
  end
end
