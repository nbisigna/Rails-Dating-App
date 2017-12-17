class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :current_password

  has_attached_file :image1, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/person_medium.png"
  validates_attachment_content_type :image1, content_type: /\Aimage\/.*\z/

  has_attached_file :image2, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/person_medium.png"
  validates_attachment_content_type :image2, content_type: /\Aimage\/.*\z/
  
  has_attached_file :image3, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/person_medium.png"
  validates_attachment_content_type :image3, content_type: /\Aimage\/.*\z/
  
  has_attached_file :image4, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/person_medium.png"
  validates_attachment_content_type :image4, content_type: /\Aimage\/.*\z/
  
  has_attached_file :image5, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/person_medium.png"
  validates_attachment_content_type :image5, content_type: /\Aimage\/.*\z/
  
  has_attached_file :image6, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/person_medium.png"
  validates_attachment_content_type :image6, content_type: /\Aimage\/.*\z/

  def makeString
    stringString = ""
    stringString += description+" "
    stringString += question1+" "
    stringString += question2+" "
    stringString += question3+" "
    stringString += question4+" "
    stringString += question5+" "
    stringString += question6+" "
    stringString += question7+" "
    stringString += question8+" "
    stringString += question9+" "
    stringString += question10+" "
    stringString += question11+" "
    stringString += question12+" "
    stringString += question13+" "
    stringString += question14+" "
    stringString += question15+" "
    stringString += question16+" "
    stringString += question17+" "
    stringString += question18+" "
    stringString += question19+" "
    stringString += question20+" "
    stringString += question21+" "
    return stringString
  end





  def match


        @user = self
        @array = @user.makeString.scan(/\w+/)
        @common = ["ve","to","a","the","in","an","i","my","for","you","see","s","become","ends","end","name","once","week","man","men","new","get","getting","being","less","more","nice","amazing","awesome","tremendous","right","am","just","our","d","say","says","why","over","both","any","also","ain","put","good","great","however","comes","come","makes","before","after","here","too","most","those","thee","became","where","should","going","think","know","thinks","knows","through","tell","hey","m","well","must","don","m","1","2","3","4","5","6","7","8","9","0","one","two","three","four","five","six","seven","eight","nine","zero","us","only","got","t","else","me","same","s","re","it","you","the","of","and","a","to","in","is","you","that","it","he","was","for","on","are","as","with","his","they","I","at","be","this","have","from","or","one","had","by","word","but","not","what","all","were","we","when","your","can","said","there","use","an","each","which","she","do","how","their","if","will","up","other","about","out","many","then","them","these","so","some","her","would","make","like","him","into","time","has","look","two","more","write","go","see","number","no","way","could","people","my","than","first","water","been","call","who","oil","its","now","find","long","down","day","did","get","come","made","may","part"]
        @c = @array.map(&:downcase) - @common.map(&:downcase)
        
        @d = @user.makeString.scan(/\w+/)
        @e = @d.map(&:downcase) - @common.map(&:downcase)
        frequency = Hash.new(0)
  @e.each { |word| frequency[word.downcase] += 1 }
  

        @users = User.all
        @users.each do |user|

          @counter = 0

          @words = Current.user.makeString.scan(/\w+/)
          @goodwords = @words.map(&:downcase) - @common.map(&:downcase)


            @c.each_with_index do |item, i|
              @goodwords.each_with_index do |thing, j|
                if @c[i] == @goodwords[j]
                  @counter += 1
                end
              end
            end
        end 
      @percent = (@counter)/(@goodwords.length).round(2)*100
      return @percent.round(2)
  end
   
   def distance
    @startlat = Current.user.lat
    @startlng = Current.user.lng
    @endlat = self.lat
    @endlng = self.lng
    @dtor = Math::PI/180
    @r = 3959

    @rlat1 = @startlat * @dtor
    @rlong1 = @startlng * @dtor
    @rlat2 = @endlat * @dtor
    @rlong2 = @endlng * @dtor

    @dlon = @rlong1 - @rlong2
    @dlat = @rlat1 - @rlat2

    a = (Math::sin(@dlat/2)**2) + Math::cos(@rlat1) * Math::cos(@rlat2) * (Math::sin(@dlon/2)**2)
  y = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))
  z = y * @r

  return z.round(2)

   end
  

end
