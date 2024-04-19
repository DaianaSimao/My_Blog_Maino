module Upload
  class CreatePost
    def initialize(titulo, body, tag_ids, user_id)
      @titulo = titulo
      @body = body
      @tag_ids = tag_ids
      @user_id = user_id
    end

    def execute
      Post.create!(body: @body, titulo: @titulo, user_id: @user_id, tag_ids: @tag_ids)
    end
  end
end
