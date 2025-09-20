hop() { 
    base_dir="$1"
    
    # List directory contents
    if [[ $2 == *-l* || $2 == *--list* ]]; then
        ll $base_dir
        
    # Navigate to selected project
    elif [[ $2 == *-c* || $2 == *--cd* ]]; then
        repo=`command ls $base_dir | fzf --height=50% --layout=reverse`
        if [[ "$repo" != "" ]]; then
            cd $base_dir/$repo
        fi
        
    # Open project in editor
    elif [[ $2 == *-o* ||  $2 == *--open* ]]; then
        valid_options="code cursor" 
        option=`echo "code\ncursor" | fzf --height=50% --layout=reverse`
        if [[ "${valid_options}" =~ "${option}" ]]; then
            repo=`command ls $base_dir | fzf --height=50% --layout=reverse` 
            if [[ "$repo" != "" ]]; then
                $option $base_dir/$repo
            fi
        fi
        
    # Default: change to base directory
    else
        cd $base_dir
    fi
}