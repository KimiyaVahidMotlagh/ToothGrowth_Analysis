Tg <- ToothGrowth
library(haven)
write_sav(Tg, "ToothGrowth.sav")

library(ggplot2)
ggplot(Tg, aes(x=factor(dose), y=len, fill=supp))+
  geom_boxplot() + 
  labs(title="Boxplot Tooth Growth", x="Dose", y="Tooth Length")+
  theme_minimal()

vcTg <- ToothGrowth[1:30, "len"]
OjTg <- ToothGrowth[31:60, "len"]

library(car)
leveneTest(vcTg, ojTg)

anova_testresult <- aov(len ~ dose * supp, data = Tg)
summary(anova_testresult)

tukey_testresult <- TukeyHSD(anova_testresult)
print(tukey_testresult)

cel_to_F <- function() {
  celcius = as.numeric(readline("Enter temp in Celcius: "))
  faranheit = ((celcius * 9/5) + 32)
  cat("Temp in Fahrenheit: ", faranheit, "\n")
}

cel_to_F()

func <- function(){
  x = as.numeric(readline("Enter X: "))
  y = sqrt((2*x) + (3*(x^2)) + (4*(x/3)))
  cat("result: ", y)
}

func()
