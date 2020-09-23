require_relative 'helper.rb'

After do |cenário|
  @helper = Helper.new

  @nome = cenário.name.gsub(%r{([_@#!%()\-=;><,{}\~\[\]\./\?\"\*\^\$\+\-]+)}, '')

  @helper.take_screenshot(@nome, 'screenshots/test_failed') if cenário.failed?

  unless @helper.take_screenshot(@nome, 'screenshots/test_passed')

  end
end
