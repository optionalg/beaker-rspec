require "rspec/expectations"
require "dsl_bridge"

RSpec.configure do |config|
  # System specific config
  config.add_setting :beaker_config

  config.beaker_config = 'sample.cfg'

  config.include DSLBridge

  config.before(:all) do
    setup(RSpec.configuration.beaker_config)
  end

  config.after(:all) do
    cleanup
  end

end
