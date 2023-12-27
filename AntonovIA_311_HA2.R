# Создание списка с данными
foods <- c("пельмени", "сосиски", "оливье", "гусь", "холодец", "мандарины", "водка")
prices <- c(500, 300, 800, 2000, 400, 150, 500)
ratings <- c(4.5, 3.8, 4.2, 4.9, 3.5, 4.7, 4.1)
purchases <- c(1000, 500, 700, 200, 300, 10000, 2000)

# Создание датафрейма
food_df <- data.frame(foods = foods, prices = prices, ratings = ratings, purchases = purchases)

# Сохранение датафрейма в формате csv
write.csv(food_df, file = "food_data.csv")

# Построение графиков
# Гистограмма цен на продукты
hist(food_df$prices, main = "Food Prices", xlab = "Price", col = "lightblue")

# Диаграмма со столбцами количества покупок разных продуктов
barplot(table(food_df$foods), main = "Food Purchases", xlab = "Food", ylab = "Count", col = "lightgreen")

# График зависимости рейтинга продуктов от цены
plot(food_df$prices, food_df$ratings, main = "Food Ratings vs Prices", xlab = "Price", ylab = "Rating", col = "red")

# Пример использования lapply для вывода всех продуктов
lapply(food_df$foods, function(x) {
  print(paste("Food:", x))
)

# Пример использования sapply для вывода среднего числа покупок продуктов
average_purchases <- sapply(food_df$purchases, mean)
print(paste("Среднее число покупок:", average_purchases))

# Улучшенный код для подсчета количества слов в тексте
text <- "Это пример текста.Тут я напишу белиберду. Бла бла бла"
word_count <- length(strsplit(text, "
s")[[1]])
print(paste("Количество слов:", word_count))
