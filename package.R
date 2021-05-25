flights
head(flights,10)
tail(flights,10)
tail(flights,5)
head(flights,5)
library(dplyr)
select(flights,dep_time,arr_time,arr_delay)
filter(flights,month==1,day==1,origin=="EWR") #filter method
filter(flights,carrier=="AA"|carrier=="UA")
filter(flights,carrier=="AA" & carrier=="UA")
flights %>%
  select(carrier,dep_delay)%>% #chaining method
  filter(dep_delay>100)
flights%>%
  select(dep_time,arr_time,arr_delay)%>%
  arrange(arr_delay)
student
select(student,eid,name,place)
filter(student,branch=="cse")
filter(student,place=="hyderabad")
filter(student,place=="kadapa" | branch=="cse")
filter(student,place=="hyderabad" & branch=="cse")
student%>%
  select(eid,name,percentage) %>%
  arrange(desc(percentage))

          