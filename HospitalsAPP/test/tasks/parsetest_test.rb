# frozen_string_literal: true

require 'minitest/autorun'
require 'rake'
class ParsetestTest < Minitest::Test
  def setup
    #Rake.application.rake_require "lib/tasks/parse.rake.rb"
    #useless (?)
    #Rake::Task.define_task(:environment)
    # Do nothing
  end

  def teardown
    # Do nothing
  end

  def test
    hospitals_count_before = Hospital.count
    Rake.application["parser:parse"].invoke
    hospitals_count_after = Hospital.count
    assert_operator hospitals_count_after, :>, hospitals_count_before, "Expected that increased"
    puts "TEST"
    #skip 'Not implemented'
  end
end
