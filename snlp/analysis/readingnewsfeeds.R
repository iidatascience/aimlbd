library("feedeR")
library("extrafont")
font_import()
Sys.setlocale("LC_ALL")

df1<-iconv(feed.extract("http://www.zehabesha.com/amharic/feed", "UTF-8")$items, "Latin1", "UTF-8")
