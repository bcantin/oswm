module PostingsHelper
  
  def language_list(language_array)
    language_array.map {|l| l.name}.join(', ')
  end
  
end
