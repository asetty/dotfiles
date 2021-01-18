function notes
    # use vscode workspace if file exists
    set -l workspaces "$HOME"/notes/*.code-workspace
    set -l num_spaces (count $workspaces)
    switch $num_spaces
        case 0
            echo "no vscode workspace found. opening folder..."
            code "$HOME"/notes
        case 1
            echo "opening workspace $workspaces"
            code $workspaces
        case "*"
            echo "more than one workspace found: $workspaces"
            echo "move or delete one of them."
            return 1
    end
end
