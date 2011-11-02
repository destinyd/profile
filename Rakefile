task :default => [:install]

task :install do
  require 'fileutils'
  homepath = File.expand_path("~")
  nowpath  = FileUtils.pwd
  begin
    FileUtils.mv homepath + '/.bashrc', homepath + '/.bashrc.bak'
    FileUtils.mv homepath + '/.vimrc',homepath +  '/.vimrc.bak'
    FileUtils.mv homepath + '/bin',homepath +  '/bin.bak'
  end 
  FileUtils.ln_s nowpath + '/.vimrc', homepath + '/.vimrc'
  FileUtils.ln_s nowpath + '/.bashrc', homepath + '/.bashrc'
  FileUtils.ln_s nowpath + '/bin/', homepath + '/bin'
end
