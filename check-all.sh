#!/bin/sh

total=0
success=0
interrupted=false
processed=0

display_percentage() {
    if [ $total -gt 0 ]; then
        percentage=$(bc -l <<< "scale=2; ($success / $processed) * 100")
    else
        percentage=0
    fi
    
    echo "Total rockspecs: $total"
    echo "Processed rockspecs: $processed"
    echo "Successful installations: $success"
    echo "Success rate: $percentage%"
}

# Trap to catch SIGINT (Ctrl+C) and set a flag
trap 'interrupted=true; display_percentage; rm results.txt; exit' SIGINT

install_rockspec() {
    local file="$1"
    if lx --lua-version 5.1 install-rockspec "$file"; then
        echo "s" >> results.txt
    else
        echo "f" >> results.txt
    fi
}

export -f install_rockspec

total=$(ls *.rockspec 2>/dev/null | wc -l)

monitor_results() {
    while [ $processed -lt $total ] && [ "$interrupted" = false ]; do
        processed=$(cat results.txt 2>/dev/null | wc -l || echo 0)
        success=$(grep -c "s" results.txt 2>/dev/null || echo 0)
        
        display_percentage
        
        sleep 10
    done
}

monitor_results &

ls *.rockspec | parallel --keep-order install_rockspec {}

wait

display_percentage

rm results.txt
