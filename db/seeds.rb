%w(C C++ Java Perl PHP Python Ruby Other N/A).each do |lang|
  unless l = Language.where(:name=>'lang').first
    Language.create(:name => lang)
  end
end