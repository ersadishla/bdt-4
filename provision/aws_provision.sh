#!/bin/bash

# Update repository
yum -y update

# Install wget
yum install -y wget

# Install MariaDB to get MySQL client
yum install -y mariadb

# Install Git
yum install -y git

# Install nano text editor
yum install -y nano

# Install sysbench
curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.rpm.sh | sudo bash
sudo yum -y install sysbench

# Enable max open file
sudo sysctl -w fs.file-max=1000000

# Copy atau download TiDB binary dari http://download.pingcap.org/tidb-v3.0-linux-amd64.tar.gz
wget http://download.pingcap.org/tidb-v3.0-linux-amd64.tar.gz

# Extract TiDB binary
tar -xzf tidb-v3.0-linux-amd64.tar.gz