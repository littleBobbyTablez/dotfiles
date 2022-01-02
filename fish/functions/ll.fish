function ll --wraps=ls --wraps==exa --wraps=exa --description 'alias ll=exa -l -g --icons'
  exa -l -g --icons $argv; 
end
