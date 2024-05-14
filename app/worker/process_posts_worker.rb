class ProcessPostsWorker
  include Sidekiq::Worker
  queue_as :default
  def perform(posts)
    posts.each do |post|
      Post.create!(post)
    end
  end
end
