task :default => [:install]
HOMEPATH = File.expand_path("~")
NOWPATH  = FileUtils.pwd
NOW = Time.now.to_i
FILES = %w(/.vimrc /.profile /.gitconfig /bin)#/.bashrc

task :install => :back_up do
  FILES.each do |file|
    FileUtils.ln_s NOWPATH + file, HOMEPATH + file
#    FileUtils.ln_s NOWPATH + '/.vimrc', HOMEPATH + '/.vimrc'
#    FileUtils.ln_s NOWPATH + '/.bashrc', HOMEPATH + '/.bashrc'
#    FileUtils.ln_s NOWPATH + '/bin/', HOMEPATH + '/bin'
  end
  puts "success"
end

task :back_up do
  FILES.each do |file|
    begin
      FileUtils.mv "#{HOMEPATH}#{file}", "#{HOMEPATH}#{file}.#{NOW}.bak"
    rescue
    end 
  end
#  begin
#    FileUtils.mv "#{HOMEPATH}/.bashrc", "#{HOMEPATH}/.bashrc.#{NOW}.bak"
#  rescue
#  end 
#
#  begin
#  FileUtils.mv "#{HOMEPATH}/.vimrc","#{HOMEPATH}/.vimrc.#{NOW}.bak"
#  rescue
#  end 
#
#  begin
#  FileUtils.mv "#{HOMEPATH}/bin","#{HOMEPATH}/bin.#{NOW}.bak"
#  rescue
#  end 
end

task :snippets do
  begin
  FileUtils.mv "#{HOMEPATH}/.vim/bundle/snipMate/snippets","#{HOMEPATH}/.vim/bundle/snipMate/snippets.#{NOW}.bak"
  rescue
  end 
  FileUtils.ln_s NOWPATH + '/snippets', HOMEPATH + '/.vim/bundle/snipMate/snippets'
  puts "success"
end
