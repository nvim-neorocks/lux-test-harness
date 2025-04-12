#!/bin/sh

CHUNK_SIZE=1000

success=0
interrupted=false
processed=0
chunk_offset=$(($1 * $CHUNK_SIZE))

display_percentage() {
    percentage=$(bc -l <<< "scale=2; ($success / $processed) * 100")
    
    echo "Total rockspecs: $CHUNK_SIZE"
    echo "Processed rockspecs: $processed"
    echo "Successful installations: $success"
    echo "Success rate: $percentage%"
}

# Trap to catch SIGINT (Ctrl+C) and set a flag
trap 'interrupted=true; rm results.txt; exit' SIGINT

install_rockspec() {
    local file="$1"

    if luarocks --lua-version 5.1 --local install $file; then
        echo "s" >> results.txt
    else
        echo "f" >> results.txt
    fi
}

export -f install_rockspec

monitor_results() {
    while [ $processed -lt $CHUNK_SIZE ] && [ "$interrupted" = false ]; do
        processed=$(cat results.txt 2>/dev/null | wc -l || echo 0)
        success=$(grep -c "s" results.txt 2>/dev/null || echo 0)
        
        display_percentage
        
        sleep 10
    done

    # Display percentage at end of execution
    display_percentage
}

monitor_results &

for file in $(ls *.rockspec | tail -n +$chunk_offset | head -n $CHUNK_SIZE); do
    install_rockspec "$file"
done

wait

rm results.txt
