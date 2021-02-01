# frozen_string_literal: true

require 'rubocop'

require_relative 'rubocop/replaypoker'
require_relative 'rubocop/replaypoker/version'
require_relative 'rubocop/replaypoker/inject'

RuboCop::Replaypoker::Inject.defaults!

require_relative 'rubocop/cop/replaypoker_cops'
