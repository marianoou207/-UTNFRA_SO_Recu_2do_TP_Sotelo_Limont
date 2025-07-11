#!/bin/bash
# Punto C - TP Recuperatorio

mkdir -p ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/docker/web/file
cd ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/docker

cat > index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>TP Docker - Mariano Sotelo</title>
</head>
<body>
    <h1>TP Docker</h1>
    <ul>
        <li>Mariano Nicolas Sotelo Limont</li>
        <li>División: 117</li>
    </ul>
</body>
</html>
EOF

cat > Dockerfile <<EOF
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EOF

echo "marianoou207:1000:\$6\$k.4WuoiSWz2DQQCc\$.WzHb/YaEEZClOdnGlGWcEMklxNc6BDAW1yMeUMLV44uYrJKF2BlvoRuQg.MXPZRIX1MmJH4ndWhEggCSOtg2/" > web/file/info.txt

cat > docker-compose.yml <<EOF
version: "3.8"

services:
  web2sotelo:
    image: marianoou207/web2-sotelo:latest
    container_name: web2sotelo
    ports:
      - "81:80"
    volumes:
      - ./web/file:/usr/share/nginx/html/file
EOF

docker build -t web2-sotelo .
docker tag web2-sotelo marianoou207/web2-sotelo:latest
docker push marianoou207/web2-sotelo:latest

docker-compose up -d

