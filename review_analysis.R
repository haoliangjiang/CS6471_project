# Import necessary package
library(devtools)
library(broom)
library(sjPlot)
library(sjmisc)
library(sjlabelled)

# Load data
review1 <- read.csv(file = 'reviews_Amazon_Instant_Video_5_varibales.csv')
review2 <- read.csv(file = 'reviews_Automotive_5_varibales.csv')
review3 <- read.csv(file = 'reviews_Cell_Phones_and_Accessories_5_varibales.csv')
review4 <- read.csv(file = 'reviews_Clothing_Shoes_and_Jewelry_5_varibales.csv')
review5 <- read.csv(file = 'reviews_Digital_Music_5_varibales.csv')
review6 <- read.csv(file = 'reviews_Musical_Instruments_5_varibales.csv')
review7 <- read.csv(file = 'reviews_Office_Products_5_varibales.csv')
review8 <- read.csv(file = 'reviews_Pet_Supplies_5_varibales.csv')
review9 <- read.csv(file = 'reviews_Tools_and_Home_Improvement_5_varibales.csv')
review10 <- read.csv(file = 'reviews_Toys_and_Games_5_varibales.csv')
all_reviews = rbind(review1, review2, review3, review4, review5, review6, review7, review8, review9, review10)
experience_goods = rbind(review1, review5, review10)
search_goods = rbind(review2, review3, review4, review6, review7, review8, review9)

# Run linear regression
review_model_all <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=all_reviews)

review_model_experience <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=experience_goods)

review_model_search <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=search_goods)

review_model1 <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                  number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                  + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                  + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=review1)

review_model2 <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=review2)

review_model3 <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=review3)

review_model4 <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=review4)

review_model5 <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=review5)

review_model6 <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=review6)

review_model7 <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=review7)

review_model8 <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=review8)

review_model9 <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=review9)

review_model10 <- lm(rate ~ review_length + number_of_unique_word + summary_length + 
                      number_of_unique_word_in_summary + no_country + no_nationality + china + chinese + american + us 
                    + china*review_length + china*number_of_unique_word + us*review_length + us*number_of_unique_word
                    + chinese*review_length + chinese*number_of_unique_word + american*review_length + american*number_of_unique_word, data=review10)

# Show result for overall regression
tab_model(review_model_all, show.ci=FALSE, show.se=TRUE)

# Show result by product category
tab_model(review_model1, review_model2, review_model3, review_model4, review_model5, review_model6, 
          review_model7, review_model8, review_model9, review_model10,
          p.style = "stars", show.ci=FALSE, auto.label=FALSE, 
          dv.labels = c("Video", "Automotive", "Phone", "Clothing", "Music", "Instrument", "Office Product", "Pet Supply", "Tool", "Toys"))

# Result by search and experience goods
tab_model(review_model_search, review_model_experience, p.style = "stars", show.ci=FALSE, auto.label=FALSE,
          dv.labels = c("Search Good", "Experience Good"))





# Writing results to csv
tidy_lmfit <- tidy(review_model)
write.csv(tidy_lmfit, "clothe_helpfulness.csv")
