#!/bin/bash

ergo ops wget https://github.com/containerd/nerdctl/releases/download/v1.1.0/nerdctl-1.1.0-linux-amd64.tar.gz

tar Cxzvvf /usr/local/bin /root/.ergo/cache/nerdctl-1.1.0-linux-amd64.tar.gz

cat > /usr/local/bin/docker <<EOF
#!/bin/bash
/usr/local/bin/nerdctl \$@
EOF

chmod +x /usr/local/bin/docker
