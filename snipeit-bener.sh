docker run \
-d \
--name=snipe-it \
--link snipe-mysql:db \
-e PUID=1000 \
-e PGID=1000 \
-e DB_CONNECTION=mysql \
-e DB_HOST=snipe-mysql \
-e DB_DATABASE=snipe \
-e DB_USERNAME=snipe \
-e DB_PASSWORD="dbjaya" \
-e APP_KEY=base64:5U/KPKw1GN/Rz0fWYO/4FsSOqjmjvDAQzMCqwcAqstc= \
-e APP_URL=http://192.168.100.131 \
-p 80:80 \
-v /srv/config/snipeit/snipe-conf:/config \
--restart unless-stopped \
snipe/snipe-it
