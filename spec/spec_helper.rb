require_relative "../lib/decode.rb"
require_relative "../lib/decode_refactored.rb"

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.order = :random
end
