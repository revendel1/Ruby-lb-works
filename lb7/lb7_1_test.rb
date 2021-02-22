# frozen_string_literal: true

require_relative 'lb7_1_main'
require 'minitest/autorun'

class TestFunction < Minitest::Test
  def test_one
    f = File.new('F1.txt', 'w')
    str_1 = 'Go outside'
    str_2 = 'What are you doing'
    str_3 = 'I have to go to the university'
    lines_0 = [str_1, str_2, str_3]
    File.open('F1.txt', 'w') do |file|
      lines_0.each { |line| file.write("#{line}\n") }
    end
    i = 0
    lines = ['ytisrevinu eht ot og ot evah I', 'gniod uoy era tahW', 'edistuo oG']
    f.close
    convert('F1.txt', 'G1.txt', 3)
    g = open 'G1.txt'
    g.each do |line|
      assert_equal(line.to_s.chomp, lines[i], "Test1_#{i + 1} failed. Not Equal.")
      i += 1
    end
    g.close
  end

  def test_two
    f = File.new('F2.txt', 'w')
    str_1 = 'Daddy has arrived'
    str_2 = 'You are having very good time'
    str_3 = 'Mother says'
    str_4 = 'Children are playing'
    lines_0 = [str_1, str_2, str_3, str_4]
    File.open('F2.txt', 'w') do |file|
      lines0.each { |line| file.write("#{line}\n") }
    end
    i = 0
    lines = ['gniyalp era nerdlihC', 'syas rehtoM', 'emit doog yrev gnivah era uoY', 'devirra sah yddaD']
    f.close
    convert('F2.txt', 'G2.txt', 4)
    g = open 'G2.txt'
    g.each do |line|
      assert_equal(line.to_s.chomp, lines[i], "Test2_#{i + 1} failed. Not Equal.")
      i += 1
    end
    g.close
  end

  def test_three
    f = File.new('F3.txt', 'w')
    str_1 = 'The girl is enjoying the sunshine'
    str_2 = 'My mother will come in a minute'
    lines_0 = [str_1, str_2]
    File.open('F3.txt', 'w') do |file|
      lines_0.each { |line| file.write("#{line}\n") }
    end
    i = 0
    lines = ['etunim a ni emoc lliw rehtom yM', 'enihsnus eht gniyojne si lrig ehT']
    f.close
    convert('F3.txt', 'G3.txt', 2)
    g = open 'G3.txt'
    g.each do |line|
      assert_equal(line.to_s.chomp, lines[i], "Test3_#{i + 1} failed. Not Equal.")
      i += 1
    end
    g.close
  end
end
