class Bottles

  def song
    verses(99,0)
  end

  def verse(arg)
     
   lyric  = arg.to_s + " bottles of beer on the wall, " +
      arg.to_s + " bottles of beer.\n" +
      "Take one down and pass it around, " +
      (arg.to_i-1).to_s + " bottles of beer on the wall.\n"  


   if arg == 2

      lyric  = arg.to_s + " bottles of beer on the wall, " +
      arg.to_s + " bottles of beer.\n" +
      "Take one down and pass it around, " +
      (arg.to_i-1).to_s + " bottle of beer on the wall.\n"

   end

   if arg == 1

      lyric  = arg.to_s + " bottle of beer on the wall, " +
      arg.to_s + " bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    end

    if arg == 0

      lyric = "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    end

    return lyric

  end

  def verses(arg1, arg2)
 
    song = String.new()

    x = arg1.downto(arg2)    

    x.each do |line|
      song << verse(line)
      
      unless line == arg2
        song << "\n"      
      end
    end
    
    return song

  end

end
