# frozen_string_literal: true

require_relative "test_helper"

module Prism
  class MethodArgsTest < TestCase
    def test_args_with_hash_rocket
      puts "raises: SyntaxError(<<compiled>: argument stack underflow (-1480559951)>)"
      
      assert_raise(SyntaxError) { 
        RubyVM::InstructionSequence.compile_prism('a("a" => 0)')
      }

      # Prism.parse(
      #   'a("a" => 0)'
      # )
    end
  end
end
