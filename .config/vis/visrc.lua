require'vis'

vis.events.subscribe(vis.events.INIT, function()
	vis:command'set shell /bin/zsh'

  vis:command'map! insert <C-d> <Delete>'
  vis:command'map! insert <C-b> <Left>'
  vis:command'map! insert <C-f> <Right>'
  vis:command'map! insert <C-n> <Down>'
  vis:command'map! insert <C-p> <Up>'
  vis:command'map! insert <C-a> <Home>'
  vis:command'map! insert <C-e> <End>'

  vis:command'map! insert ( <C-v>u0028)<Left>'
  vis:command'map! insert <M-9> <C-v>u0028'
  vis:command'map! insert [ <C-v>u005b]<Left>'
  vis:command'map! insert <M-[> <C-v>u005b'
  vis:command'map! insert { <C-v>u007b}<Left>'
  vis:command'map! insert <M-{> <C-v>u007b'

  vis:command'map! normal <C-q> :wq<Enter>'
  vis:command'map! normal <C-s> :w<Enter>'
  vis:command'map! normal Y yy'
  vis:command'map! normal H ^'
  vis:command'map! normal L $'
  vis:command'map! normal s o<C-c>k'
  vis:command'map! normal S O<C-c>j'
  vis:command'map! normal m \"_d'
  vis:command'map! visual m \"_d'
  vis:command'map! normal M \"_D'
  vis:command'map! normal mm \"_dd'
  vis:command'map! visual Y :>pbcopy<Enter>'
  vis:command'map! visual P :<pbpaste<Enter>'
  vis:command'map! visual <C-e> :>sendk<Enter>'
  vis:command'map! normal <C-e> vap:>sendk<Enter>'
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
  if (win.file.name:match'%g+.janet') then
    vis:command'set syntax lisp'
  end

	vis:command'set number'
	vis:command'set autoindent'
	vis:command'set expandtab'
	vis:command'set tabwidth 2'
	vis:command'set cursorline'
	
	if os.getenv'LUX_THEME' == 'dark' then
  	vis:command'set theme default-256'
  else
  	vis:command'set theme light-16'
  end
end)

require'plugins/vis-commentary'
require'plugins/vis-surround'