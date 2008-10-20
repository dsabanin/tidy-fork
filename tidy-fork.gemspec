require 'rubygems'

version = File.read('VERSION').strip
raise "no version" if version.empty?

spec = Gem::Specification.new do |s|
  s.name = 'tidy-fork'
  s.version = version 
  s.author = 'Kevin Howe'
  s.email = 'kh@newclear.ca'
  s.homepage = 'github.com/railsmonk/tidy-fork'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Forked Ruby interface to HTML Tidy Library Project with important bugfixes'
  s.files = Dir['**/*'].delete_if { |f| f =~ /(cvs|gem|svn)$/i }
  s.require_path = 'lib'
  s.rdoc_options << '--all' << '--inline-source' << '--main' << 'lib/tidy.rb'
  s.has_rdoc = true
#  s.rubyforge_project = 'tidy'
end
