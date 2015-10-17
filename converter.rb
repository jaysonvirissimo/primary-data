lines = []

File.open('genes.txt', 'r') do |f|
  f.each_line do |line|
    lines << line
  end
end

formatted_lines = ['rsid, chromosome, position, genotype']

(15...lines.length).each do |index|
  formatted_line = lines[index].gsub(/\s+/m, ' ').split(" ").join(', ')
  formatted_lines << formatted_line
end

File.open('genes.csv', 'w') do |f|
  formatted_lines.each do |line|
    f.puts line
  end
end
