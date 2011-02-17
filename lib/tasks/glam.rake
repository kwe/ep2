desc "Make PDF"
task :make_pdf => :environment do
	file = Tempfile.new('propectus.pdf')
#  `pdftk 1.pdf output #{file.path.to_s}`
	system("pdftk /Users/kwe/Desktop/intro.pdf /Users/kwe/Desktop/1.pdf output #{file.path.to_s}")
	puts file.path.to_s
	ProspectusMailer.prospectus_email('kwevans@gmail.com',"#{file.pathto_s}").deliver
end

desc "Populate Subject Areas"
task :populate_subject_areas => :environment do
	basedir = '/Users/kwe/Desktop/p/c/'
	c = Dir.new(basedir).entries
	c.each do |f|
  		if f[-4..-1] == '.pdf'
    		puts f
    		s = SubjectArea.new
    		s.filename = f
    		ff = f.gsub('.pdf','')
    		s.title = ff
    		s.save 
  		end
  	end
end