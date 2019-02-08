require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |styles, value_hash|
    value_hash.each do |language_name, attributes_hash|
      attributes_hash.each do |type, type_value|
        
        if new_hash[language_name].nil?
          new_hash[language_name] = {}
        end
        
        new_hash[language_name][:style] ||= []
        new_hash[language_name][:style] << styles

        
        if new_hash[language_name][type].nil?
          new_hash[language_name][type] = type_value
        end
        
      end
    end
  end
  
  return new_hash
end



