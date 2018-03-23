class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer if backer.is_a?(Backer)
    backer.backed_projects << self unless backer.backed_projects.include?(self)
  end

end
