
require 'fileutils'
# ファイルがなくても例外とか発生しない
FileUtils.rm_f('noexits file')

FileUtils.rm_f('exist')
