require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

 if memo_type == 1
    
  puts "拡張子を除いたファイルを入力してください"
  
  file_1 = gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "終了後、Ctrl + D　を押します。"
  
  input = STDIN.read
  
  CSV.open("#{file_1}.csv", "w") do |csv|
      
    csv << [input]
    puts "入力内容　#{input}"
  end
  
  
 elsif memo_type == 2
    
  puts "拡張子を除いた既存ファイルを入力してください"
  
  file_2 = gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "終了後、Ctrl + D　を押します。"
  
  input = STDIN.read
  
  CSV.open("#{file_2}.csv", "a") do |csv|
　    
    csv << [input]
    puts "入力内容　#{input}"
  end
 
 else
  puts "エラーです。1or2を入力してください"
 
 end