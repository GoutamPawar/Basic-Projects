def menu
    puts "--- Notes App ---"
    puts "1. Add Note"
    puts "2. View Notes"
    puts "3. Delete All Notes"
    puts "4. Re-name the File "
    puts "5. Exit"
    print "Choose an option: "
  end
  def add 
    print "Enter your note: "
    note = gets.chomp
    File.open("notes.txt", "a") do |file|
      file.puts(note)
    end
    puts " Note added!"
  end
# ===============================================
  def view 
    if File.exist?("notes.txt")
      puts "--- Your Notes ---"
      File.foreach("notes.txt").with_index do |line, index|
        puts "#{index + 1}. #{line}"
      end
    else
      puts " No notes found."
    end
  end
#  =============================================
  def delete 
    if File.exist?("notes.txt")
      File.delete("notes.txt")
      puts "  All notes deleted!"
    else
      puts " No notes to delete."
    end
  end
# ===========================================
  def updateFileName
    if File.exist?("notes.txt")
      print "Enter new file name (with .txt extension): "
      newname = gets.chomp
      unless newname.end_with?(".txt")
        puts "File extension needed (.txt)."
        return
      end
      File.rename("notes.txt", newname)
      puts "File name updated!"
    else
      puts "No file to rename."
    end
  end
# ============================================
loop do
    menu
    choice = gets.chomp
    case choice
    when "1"
      add
    when "2"
      view
    when "3"
      delete
    when "4"
      updateFileName
    when "5"
      puts " Exiting..."
      break
    else
      puts " Invalid choice. Try again."
    end
  end
  