setwd("G:\\DATA SCIENCE\\DAta for me")

library(syuzhet)
library(scales)
library(reshape2)
library(tidyverse)

imdb = read.csv("Imdb reviews.csv",header = T,sep =",")

reviews = iconv(imdb$SentimentText, to = "utf-8")

#sentiment scores

r = get_nrc_sentiment(reviews)

head(r)

reviews[3]

#Bar Plot

barplot(colSums(r),
        las = 2,
        col = rainbow(50),
        ylab = "Count",
        main = "Sentiment Analysis of IMDB reviews")
