module Upload
  class ProcessTxt
    def perform(params)
      txt_file_path = params[:post][:body]
      txt_file = File.open(txt_file_path, 'r')
      body = ""
      txt_file.each_line do |line|
        puts line
        body += line
      end
      txt_file.close
      ::Upload::CreatePost.new(params[:post][:titulo], body, params[:post][:tag_ids], params[:post][:user_id]).execute
    end
  end
end
