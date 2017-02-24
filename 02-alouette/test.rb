class Alouette
  attr_accessor :lines
    def initialize
      @lylics = ["le bec!", "les yeux!", "le cou!", "les ailes!", "les pattes!", "la queue!", "le dos!"]
      @lines = []
      @lylics.length.times do |n|
      @lines << "Et #{@lylics[n]}"
      end
    end

  def self.what
    puts @lines
    puts "hello"
  end
  # def self.lines_for_verse
  #   print @lines[0...2].reverse
  # end
#[0...2].reverse
end


Alouette.what
