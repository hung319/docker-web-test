# Sử dụng image Node.js chính thức
FROM node:20

# Tạo thư mục app trong container
WORKDIR /app

# Copy file cần thiết vào container
COPY . .

# Cài đặt Express
RUN npm install express

# Tạo file server
RUN echo "const express = require('express');\n\
const app = express();\n\
const PORT = 3000;\n\
app.get('/', (req, res) => res.send('Hello World 🌏'));\n\
app.listen(PORT, () => console.log('Server running on port ' + PORT));" > index.js

# Mở port 3000
EXPOSE 3000

# Lệnh khởi động server
CMD ["node", "index.js"]
