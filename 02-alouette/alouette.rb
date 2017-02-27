class Alouette

  def initialize

  end
  @@words = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
  @@lines = []

  def self.lines_for_verse(num)
    @@lines = []
    (num + 1).times do |i|
      @@lines << "Et #{@@words[i]}!"
    end
    return @@lines.reverse
  end

  def self.verse(num)
    self.lines_for_verse(num)
    @@lylics_block = "Je te plumerai #{@@words[num]}.\nJe te plumerai #{@@words[num]}.\n"
    (num + 1).times do |i|
      @@lylics_block += @@lines.reverse[i]
      @@lylics_block += "\n"
      @@lylics_block += @@lines.reverse[i]
      @@lylics_block += "\n"
    end
    @@lylics_block += "Alouette!\nAlouette!\nA-a-a-ah"
    return @@lylics_block
  end

  def self.sing
    song = ""
    @@words.length.times do |num|
      self.verse(num)
      refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n"
      song += refrain + @@lylics_block + "\n\n"
    end
    song += "Alouette, gentille alouette,\nAlouette, je te plumerai."
    return song

  end
    # verse_block = "Je te plumerai #{@@lines[0]}\n
    # Je te plumerai #{@@lines[0]}\n
    # "



  # def self.lines_for_verse(num)
  #   print Lines[0...num].reverse
  # end
end


# print Alouette.lines_for_verse(2)
print Alouette.sing
  # end
  # def verse
  # end
  # def sing
  # end
