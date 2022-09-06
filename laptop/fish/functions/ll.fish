function ll --wraps=ls --wraps='exa -l'
    exa --long --all --group --header --git --icons
end
