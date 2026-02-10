
---

## File: `deploy.sh`
```bash
#!/bin/bash

set -e

echo "Membuat monitoring server..."

lxc launch ubuntu:22.04 monitor
lxc exec monitor -- bash -c "apt update && apt install -y netdata"

echo "Membuat node target..."

for i in {1..3}; do
    lxc launch ubuntu:22.04 node$i
done

echo "Monitoring environment siap."
lxc list

