reddit <- read.csv('reddit.csv')

table(reddit$employment.status)
summary(reddit)

str(reddit)
levels(reddit$age.range)

library(ggplot2)
qplot(data=reddit, x=age.range)
qplot(data=reddit, x=income.range)

reddit$age.range <- ordered(reddit$age.range, levels=c('Under 18','18-24','25-34','45-54','55-64','65 or Above'))