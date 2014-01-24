task :default => [:profile]
HOMEPATH = File.expand_path("~")
PROFILE_PATH  = FileUtils.pwd
NOW = Time.now.to_i
FILES = %w(/.vimrc /.bash_aliases /.gitconfig /.railsrc /bin /.zshrc)#/.bashrc

task :profile => [:back_up,:install,:bash_alias,:install_vundle,:snippets] do
  puts "all success"
end

task :back_up do
  FILES.each do |file|
    begin
      FileUtils.mv "#{HOMEPATH}#{file}", "#{HOMEPATH}#{file}.#{NOW}.bak"
    rescue
    end 
  end
  puts "backup success"
end

task :install do
  FILES.each do |file|
    FileUtils.ln_s PROFILE_PATH + file, HOMEPATH + file
  end
  puts "ln profile success"
end

task :bash_alias do
  filename = HOMEPATH + '/.bashrc'
  if File.exist?(filename) and
    File.new(filename).read.scan /\. ~\/\.bash_aliases/
    system "echo 'if [ -f ~/.bash_aliases ]; then \n . ~/.bash_aliases \nfi' >> ~/.bashrc"
#    system "source ~/.bashrc"
  end
  puts "add bash aliases success"
end


task :install_vundle do
  if File.exist?(HOMEPATH + '/.vim/bundle/vundle')
    puts "vundle exist"
  else
    system "git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
    system "vim +BundleInstall +qall"
    puts "install vundle success"
  end
end


task :snippets do
  begin
    FileUtils.mv "#{HOMEPATH}/.vim/bundle/snipMate/snippets","#{HOMEPATH}/.vim/bundle/snipMate/snippets.#{NOW}.bak"
  rescue
  end 
  FileUtils.ln_s PROFILE_PATH + '/snippets', HOMEPATH + '/.vim/bundle/snipMate/snippets'
  puts "cp snippets success"
end

task :conkycolors do
  begin
    FileUtils.mv "#{HOMEPATH}/.conkycolors","#{HOMEPATH}/.conkycolors.#{NOW}.bak"
  rescue
  end 
  FileUtils.ln_s PROFILE_PATH + '/.conkycolors', HOMEPATH + '/.conkycolors'
  puts "cp conkycolors success"
end

task :gitignore do
  system "git config --global core.excludesfile ~/.global_ignore" if File.exist?(HOMEPATH + '/.gitignore') or system "git clone git://github.com/github/gitignore.git ~/.gitignore"
  puts "clone github gitignore"
end
