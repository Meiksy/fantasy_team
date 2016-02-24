require ('minitest/autorun')
require_relative('../bench')


class TestBench < Minitest::Test

  def setup
    @subs_bench = Bench.new("John", "Smithy", "James")
  end
    
    def test_sub1
      assert_equal("John", @subs_bench.subs.first)
    end

    def test_sub2
      assert_equal("Smithy", @subs_bench.subs[1])
    end

    def test_sub3
      assert_equal("James", @subs_bench.subs.last)
    end

  end
