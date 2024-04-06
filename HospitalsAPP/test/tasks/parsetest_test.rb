# frozen_string_literal: true

require 'minitest/autorun'
require 'rake'
class ParsetestTest < Minitest::Test # rubocop:todo Style/Documentation
  def setup
    puts 'set'
    Rake.application.rake_require 'HospitalsAPP/lib/tasks/parse.rake'
    Rake.application['parser:parse'].invoke
    puts 'up'
    # useless (?)
    Rake::Task.define_task(:environment)
    # Do nothing
  end

  def teardown
    # Do nothing
  end

  def test
    puts 'start'
    hospitals_count_before = Hospital.count
    hospitals_count_after = Hospital.count
    assert_operator hospitals_count_after, :>, hospitals_count_before, 'Expected that increased'
    puts 'TEST'
    # skip 'Not implemented'
  end
end
