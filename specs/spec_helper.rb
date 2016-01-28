require 'ruby-prof'

RSpec.configure do |c|
  c.before(:suite) do
    RubyProf.start
  end

  c.after(:suite) do
    result = RubyProf.stop
    RubyProf::MultiPrinter.new(result).print(path: "profile", profile: 'profile')
  end
end
