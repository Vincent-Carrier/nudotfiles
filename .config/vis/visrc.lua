require('vis')

vis.events.subscribe(vis.events.INIT, function()
  vis:command'map! insert <C-d> <Delete>'
  vis:command'map! insert <C-b> <Left>'
  vis:command'map! insert <C-f> <Right>'
  vis:command'map! insert <C-a> <Home>'
  vis:command'map! insert <C-e> <End>'
  vis:command'map! normal <C-q> ZZ'
  vis:command'map! normal <C-s> :w<Enter>'
  vis:command'map! normal Y yy'
  vis:command'map! normal H ^'
  vis:command'map! normal L $'
  vis:command'map! visual Y :>pbcopy<Enter>'
  vis:command'map! visual P :<pbpaste<Enter>'
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command'set number'
	vis:command'set theme default-256'
	vis:command'set autoindent'
	vis:command'set expandtab'
	vis:command'set tabwidth 2'
	vis:command'set cursorline'
end)

require'plugins/vis-commentary'
require'plugins/vis-surround'
