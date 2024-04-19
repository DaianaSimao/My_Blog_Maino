module Upload
  class ProcessTxt 
    def initialize(file)
      @file = file.path
    end

    def execute
      txt_file_path = @file
      txt_file = File.open(txt_file_path, 'r')
      body = ""
      txt_file.each_line do |line|
        body += line
      end
      txt_file.close
      body
    end
  end
end
