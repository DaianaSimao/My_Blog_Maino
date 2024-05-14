class ProcessPostsWorker
  include Sidekiq::Worker
  queue_as :default
  def perform(post)
    Post.create!(post)
  end
end
