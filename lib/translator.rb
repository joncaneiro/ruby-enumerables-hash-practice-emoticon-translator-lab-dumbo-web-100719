require 'pry'
require 'yaml'

def load_library(file_path)
  
 emoticons = YAML.load_file(file_path)
  
  new_hash = {
   :get_meaning => {},
   :get_emoticon => {}
 }
  
  emoticons.each do |keyvalue, emo|
    
    english = emo[0]
   japanese = emo[1]
    
   new_hash[:get_meaning][japanese] = keyvalue
   new_hash[:get_emoticon][english] = japanese
   
  end
  
  new_hash
end




def get_japanese_emoticon(file_path, emoticon)
  
  emoticons = YAML.load_file(file_path)
  
  library = load_library(file_path)
  
  translation = library[:get_meaning]
  
  translation.each do |key, value|
    
    if key == emoticon
      
       value
       
  end     
 end
end



def get_english_meaning
  # code goes here
end


