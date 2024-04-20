module Upload
  class ProcessTxt 
    def initialize(file)
      @file = file.path
    end

    def execute
      txt_file_path = @file
      txt_file = File.open(txt_file_path, 'r')
      post = { titulo: "", body: "", tag_ids: ""}

      reading_body = false
      txt_file.each_line do |line|
        if line.start_with?("titulo:")
          post[:titulo] = line.sub("titulo:", "").strip
        elsif line.start_with?("tags:")
          post[:tag_ids] = line.sub("tags:", "").strip
        else
          if reading_body
            post[:body] += line
          else
            post[:body] = line
            reading_body = true
          end
        end
      end

      txt_file.close
      post[:tag_ids] = save_tags(post[:tag_ids])
      post
    end

    def save_tags(tags)
      tags_post = []
      tags_names = tags.split(",").map(&:strip)
      tags_names.each do |tag_name|
        tag = Tag.where("nome ILIKE ?", "%#{tag_name}%").first
        if tag.nil?
          tag = Tag.create(nome: tag_name.strip)
          tags_post << tag.id
        else 
          tags_post << tag.id
        end
      end
      tags_post
    end
  end
end
