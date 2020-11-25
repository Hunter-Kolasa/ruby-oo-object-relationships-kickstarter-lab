class Project
    attr_accessor :title
    @@all = []
    def initialize(title)
        @title = title
        save
    end
    def save
        @@all << self
    end
    def self.all
        @@all
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backed
        ProjectBacker.all.select {|proback| proback.project == self}
    end
    def backers
        backed.map {|backed| backed.backer}
    end

end