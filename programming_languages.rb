require 'pry'

def reformat_languages(languages_hash)
  formatted_hash = {}
  languages_hash.each do |style, languages|
    languages.each do |language, type_hash|
      #binding.pry
      formatted_hash[language] = {:style => [style], :type => type_hash[:type]}
    end
  end
  formatted_hash[:javascript][:style] << :oo
  formatted_hash
end
