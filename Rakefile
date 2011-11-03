task :default => [:install]
HOMEPATH = File.expand_path("~")
NOWPATH  = FileUtils.pwd
NOW = Time.now.to_i

task :install => :back_up do
  FileUtils.ln_s NOWPATH + '/.vimrc', HOMEPATH + '/.vimrc'
  FileUtils.ln_s NOWPATH + '/.bashrc', HOMEPATH + '/.bashrc'
  FileUtils.ln_s NOWPATH + '/bin/', HOMEPATH + '/bin'
  puts "success"
end

task :back_up do
  begin
    FileUtils.mv "#{HOMEPATH}/.bashrc", "#{HOMEPATH}/.bashrc.#{NOW}.bak"
  rescue
  end 

  begin
  FileUtils.mv "#{HOMEPATH}/.vimrc","#{HOMEPATH}/.vimrc.#{NOW}.bak"
  rescue
  end 

  begin
  FileUtils.mv "#{HOMEPATH}/bin","#{HOMEPATH}/bin.#{NOW}.bak"
  rescue
  end 
end
