#package----
#install.packages('dplyr')
library("dplyr")
library("plyr")

#code----
lunch_choose = function(){
  Q = read.csv('Rtest.csv')
  x = readline('which type do u want to choose? A:food type, B:money')
  if(x == 'food type'){
    function(){
      y = readline('which type do u want to eat? rice, noodle or desert') 
      type = Q %>% filter(food.type = y) %>% sample_n(1)
      print(type)}
  }else{
    function(x){
      x = readline ('how much money u want to spend?')
      A = Q %>% filter(money <= x) %>% sample_n(1)
      print(A)}
  }
}



lunch_choose()

#test----


#other----
Q = read.csv('Rtest.csv')
Q %>% group_by(money) %>%sample(length(money),1)

Q = read.csv('Rtest.csv')
Q%>% filter(money<=50) %>% sample_n(1)
