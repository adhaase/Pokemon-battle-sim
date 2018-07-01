# main.rb
# stdout.sync = true is required, otherwise MINGW seems to wait for input. The default Windows terminal seems to be fine. TODO: look into this
$stdout.sync = true # set STDOUT to flush to the terminal after every write, rather than buffering it.

require_relative 'initialize_simulation.rb'
require_relative 'pokemon_character.rb'
require_relative 'pokemon_battle.rb'
require_relative 'simulate.rb'

# main()

simulate # runs the entire simulation