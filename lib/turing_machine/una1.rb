# frozen_string_literal: true

module TuringMachine
  class UNA1
    INSTRUCTIONS = [].freeze

    def self.validate_tape_sequence(tape_sequence)
      if tape_sequence.nil? || tape_sequence.empty?
        raise ArgumentError, "'tape_sequence' argument cannot be nil or empty."
      end

      clean_seq = tape_sequence.map!(&:to_i)
      raise ArgumentError, "'tape_sequence' argument is too short (length = #{clean_seq.size})." if clean_seq.size < 3
      raise ArgumentError, "Invalid 'tape_sequence' argument!" unless clean_seq.join.match?(/^0{1,}1{1,}0{1,}$/)

      @tape_sequence = clean_seq
    end

    def initialize(tape_sequence = nil)
      @tape_sequence = UNA1.validate_tape_sequence(tape_sequence)
    end
  end
end
