
#!/bin/bash

flag=$(cat "flag.txt")
hash=$(echo -n "$flag" | sha256sum | awk '{print $1}')
ans="e5c3cc4e58eb8a06cdf3c51f5a0bca1f9b0275c46c99c3f343ffd853609bbe18"

if [ "$hash" == "$ans" ]; then
    exit 0
else
    echo $hash
    exit 1
fi
