class Project
  attr_accessor :backers
  attr_reader :title

    def initialize(title)
      @title = title
      @backers = []
    end

    def add_backer(backer)
      @backers << backer
      until backer.backed_projects.include?(self)
        backer.back_project(self)
      end  
    end

end
