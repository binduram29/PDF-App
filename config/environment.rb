# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
MAX_CONTESTS_PER_MONTH = ENV["MAX_CONTESTS_PER_MONTH"] || 3
