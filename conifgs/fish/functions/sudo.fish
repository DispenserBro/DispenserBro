#function sudo -d "sudo wrapper to work with fish"
#  if functions -q -- $argv[1]
#      set -l new_args (string join ' ' -- (string escape -- $argv))
#      set argv fish -c "$new_args"
#  end
#
#  command sudo $agrv
#end
