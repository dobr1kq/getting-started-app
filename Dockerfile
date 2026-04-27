FROM node:20-alpine
WORKDIR /app
# Копіюємо всі файли проєкту
COPY . .
# Встановлюємо лише необхідні для роботи залежності
RUN npm install --production
# Команда для запуску (index.js знаходиться в папці src)
CMD ["node", "src/index.js"]
EXPOSE 3000