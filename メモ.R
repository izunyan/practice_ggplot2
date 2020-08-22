# ネタ

## 軸の数字の表示を%に
scale_y_continuous(scale::percent)




## 複数グラフを1枚に
## 論文に出せるクオリティ
## library(see)
## color_brewer
## 日付の軸表示

R for Data Science 
[24 Model building > 24.3 What affects the number of daily flights?]
(https://bookdown.org/roy_schumacher/r4ds/model-building.html#what-affects-the-number-of-daily-flights)

  
  
# 日別の便数  
library(lubridate)
    daily <- flights %>% 
    mutate(date = make_date(year, month, day)) %>% 
    group_by(date) %>% 
    summarise(n = n())
  daily  

# 曜日変数追加  
  daily <- daily %>% 
    mutate(wday = wday(date, label = TRUE))    
  
  daily %>% 
    filter(wday == "土") %>% 
 ggplot(aes(date, n)) +
    geom_line()
  
date

ggplot2: Elegant Graphics for Data Analysis
[13 Guides: legends and axes > 13.2.3 Dates: A special case](https://ggplot2-book.org/guides.html#date-scales)  
    