# base image yang digunakan
FROM node:14.21-alpine as builder

# membuat dan menggunakan directory baru bernama app
WORKDIR /app

# copy file configurasi package ke workdir
COPY package*.json ./

# jalankan perintah install 
RUN npm install

# copy semua berkas dari local ke workdir
COPY . .

# membuka port pada container
EXPOSE 3001

# menjalankan aplikasi
CMD [ "npm", "run", "start" ]