# Menggunakan image webserver ringan sebagai dasar
FROM node:14

WORKDIR /app

# Menyalin file HTML ke dalam direktori default NGINX
COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g http-server

# Port yang akan digunakan oleh container
EXPOSE 8080

# Perintah yang akan dijalankan ketika container dijalankan
CMD ["http-server", "-p", "8080"]

