=begin
Using names.txt (right click and 'Save Link/Target As...'),
a 46K text file containing over five-thousand first names,
begin by sorting it into alphabetical order. Then working out the alphabetical
value for each name, multiply this value by its alphabetical position in the
list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN,
which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list.
So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?
=end

def name_scores
  names = []
  File.foreach('/home/yiti/ruby/names.txt') {|f| names = f.gsub(/\"/,'').split(',').sort } # Bring in names.

  sum = 0

  names.each_with_index do |name,index|
    sum += name.chars.map { |ch| ch.ord % 64 }.reduce(:+) * (index + 1)
  end
  sum
end

puts name_scores.inspect
