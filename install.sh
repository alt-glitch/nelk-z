wget -q https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.15.2-linux-x86_64.tar.gz
DIR="/opt/filebeat-7.15.2-linux-x86_64"
fb="filebeat-7.15.2-linux-x86_64.tar.gz"
if [ -d "$DIR" ]; then
  echo "[!] Filebeats has already been installed!"
  echo "[!] Aborting"
  exit 0
fi

tar -xvzf "$fb"
rm filebeat-7.15.2-linux-x86_64.tar.gz
mv "filebeat-7.15.2-linux-x86_64" /opt
mv filebeat.yml /opt/filebeat-7.15.2-linux-x86_64/
