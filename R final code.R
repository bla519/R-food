#Rcol2021, final presentation R code, Chen-YU HSUAN, R10B44006

#install.packages('dplyr')
library(dplyr)

Q = read.csv(url('https://raw.githubusercontent.com/bla519/R-food/main/R food.csv'))

lunch_choose = function(){
  x = readline('What do u want to choose? A:food type, B:price, C:both')
  x = toupper(x)
  if(x == 'A'){
    y = readline('What do u want to eat? A:rice, B:noodle, C:dessert, D:others')
    y = toupper(y)
    food = Q %>% filter(food.type == y) %>% sample_n(1)
    print(food)
    }else{
    if(x == 'B'){
      z = as.numeric(readline('How much money u want to spend?'))
      if(z > 350){
        print('sorry it is too expensive.')
      }else{
        money = Q %>% filter(price <= z, price >= (z-100)) %>% sample_n(1)
        print(money)
      }
    }else{
      z = as.numeric(readline('How much money u want to spend?'))
      if(z > 350){
        print('Sorry, it is too expensive.')
      }else{
        money = Q %>% filter(price <= z, price >= z1)
        z = readline('What do u want to choose? A:food type, B:price, C:both')
        z = toupper(z)
        both = money %>% filter(food.type == z) %>% sample_n(1)
        print(both)
      }
    }
  }
  q = readline('Choose again? yes or no.')
  if(q == 'yes'){
    replicate(lunch_choose())
  }else{
    print('good. have a great meal.')
  }
}

lunch_choose()