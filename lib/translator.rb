require 'pry'
require 'yaml'

def load_library(file_path)
  
 emoticons = YAML.load_file(file_path)
  
  new_hash = {
   'get_meaning' => {},
   'get_emoticon' => {}
 }
  
  emoticons.each do |keyvalue, emo|
    
    english = emo[0]
   japanese = emo[1]
    
   new_hash['get_meaning'][japanese] = keyvalue
   new_hash['get_emoticon'][english] = japanese
   
  end
  
  new_hash
end




def get_japanese_emoticon(file_path, emoticon)
  
  emoticons = load_library(file_path)
  
  message = "Sorry, that emoticon was not found"
  
  translation = emoticons["get_emoticon"]

  
  translation.each do |key, value|
    
    if key == emoticon
       return value
 
  end     
 end
 message
end



def get_english_meaning(file_path, emoticon)
  
  emoticons = load_library(file_path)
  
  message = "Sorry, that emoticon was not found"
  
  translation = emoticons['get_meaning']
  
  
  translation.each do |key, value|
    
    if key == emoticon
       return value
 
  end     
 end
 message
end


