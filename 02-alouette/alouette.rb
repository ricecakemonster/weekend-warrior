class Alouette
  def initialize num
    lylics = ["le bec!", "les yeux!", "le cou!", "les ailes!", "les pattes!", "la queue!", "le dos!"]
    @lines = []
    lylics.length.times do |n|
    @lines << "Et #{lylics[n]}"
    end

      def self.lines_for_verse(num)
        print Lines[0...num].reverse
      end
  end




  # end
  # def verse
  # end
  # def sing
  # end
end
