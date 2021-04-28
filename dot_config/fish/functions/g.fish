function g
    if test (count $argv) -ne 1;
        echo "Usage: g <location>"
    end
    # XXX should this be set --local?
    set location $argv[1]
    set path ""
    switch $location
        case git
            set path {$G_HOME}/git
        case notes
            set path {$G_HOME}/notes
        case go
            set path {$G_HOME}/go
        case chez
            chezmoi cd
            return 0
        case '*'
            echo "Invalid location \"{$location}\""
            return 1
    end
    cd $path
end