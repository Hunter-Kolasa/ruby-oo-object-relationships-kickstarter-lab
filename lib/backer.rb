class Backer
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end
    def save
        @@all << self
    end
    def self.all
        @@all
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed
        ProjectBacker.all.select {|proback| proback.backer == self}
    end
    def backed_projects
        backed.map {|backed| backed.project}
    end
end