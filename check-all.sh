#!/bin/sh

# Initialize counters
total=0
success=0
interrupted=false

# Function to display the success percentage
display_percentage() {
    if [ $total -gt 0 ]; then
        percentage=$(bc -l <<< "scale=2; ($success / $total) * 100")
    else
        percentage=0
    fi
    
    echo "Total rockspecs: $total"
    echo "Successful installations: $success"
    echo "Success rate: $percentage%"
}

# Trap to catch SIGINT (Ctrl+C) and set a flag
trap 'interrupted=true; display_percentage; exit' SIGINT

# Loop over all .rockspec files in the current directory
for file in *.rockspec; do
    if $interrupted; then
        break
    fi
    
    ((total++))
    
    # Attempt to install the rockspec
    if lx --lua-version 5.1 install-rockspec "$file"; then
        ((success++))
    fi
done

# Display the success percentage after completing all installations
display_percentage
