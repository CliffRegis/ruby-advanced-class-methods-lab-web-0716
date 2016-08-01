class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  # def self.create #ehy is this a class method since it is being created for individual
  # 	new_song = self.new
  # 	self.all << new_song
  # 	 new_song
  #end
  def self.destroy_all
 	@@all.clear
 end

  def save
    self.class.all << self
  end

  def self.create
    gor = self.new
    gor.save
    gor

  end


def self.new_by_name(str)
  	 hoad =self.new
     hoad.name= str	
     hoad
      
 end

def self.create_by_name(str)
  	   new_song = self.new
  	   new_song.name = str
  	   self.all << new_song
  	 new_song

  end
  

  def self.find_by_name(str)
    @@all.detect do |x|
     if x.name == str
        return x
      end
    end
  end

  def self.find_or_create_by_name(str)
    @@all.each do |x|
      if x.name == str
        return x
      end
    end 
     new_song = self.new
     new_song.name = str
     self.all << new_song
     return new_song
    
  end

  def self.find_or_by_name(str)
  	self.all.detect {|song| song.name == str}
  
 end

 def self.alphabetical

  vox = @@all.sort_by {|x| x.name }
  vox.uniq
  
  end
 
 def self.create_from_filename(str)
    new_song = self.new
       one = str.split('-')
       two = one[1].to_s
       thre = two.split('.')
       song_name= thre[0].to_s
       singer_name = one[0].to_s
       new_song.name = song_name.strip
       new_song.artist_name = singer_name.strip
      
        self.all << new_song
     
 end
 def self.new_from_filename(str)
    new_song = self.new
       one = str.split('-')
       two = one[1].to_s
       thre = two.split('.')
       song_name= thre[0].to_s
       singer_name = one[0].to_s
       new_song.name = song_name.strip
       new_song.artist_name = singer_name.strip

       
     new_song
 end

 
end
