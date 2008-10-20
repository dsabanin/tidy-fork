spec = Gem::Specification.new do |s|
  s.name = 'tidy-fork'
  s.version = "1.1.3"
  s.author = 'Kevin Howe'
  s.email = 'kh@newclear.ca'
  s.homepage = 'github.com/railsmonk/tidy-fork'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Forked Ruby interface to HTML Tidy Library Project with important bugfixes'
  s.require_path = 'lib'
  s.rdoc_options << '--all' << '--inline-source' << '--main' << 'lib/tidy.rb'
  s.has_rdoc = true
#  s.rubyforge_project = 'tidy'
end
