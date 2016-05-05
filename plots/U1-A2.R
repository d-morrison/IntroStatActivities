require(lattice)
classes <- gl(3,100, labels=LETTERS[1:3])

grades <- round(rnorm(300,rep(c(77,79,82),each=100), 3))
grades[c(1,101,201)] <- c(84,88,90)
histogram( ~ grades|classes, col="lightBlue",scales=list(x=list(alternating=1)),
          layout=c(3,1))

dev.copy(png, file="plots/3classGradeCompareMn.png",width=900,height=300);dev.off()

 ## different spreads
levels(classes) <- LETTERS[4:6+3]
grades <- pmin(100,round(rnorm(300,75,rep(c(5,3,11),each=100))))
grades[grades>99] <- rnorm(sum(grades>99),80,5)
%xyplot(y~x|classes)
require(ggplot2)
y <- rep(NA,300)
for(i in 1:3){
  z <- as.numeric(table(grades[1:100+(i-1)*100]) )
  z <- z[z>0]
  grades[1:100+(i-1)*100] = sort(grades[1:100+(i-1)*100])
  y[1:100+(i-1)*100] <- unlist(sapply(z,function(x) 1:x))
}

qplot(x=grades,y,facets=~classes,ylab="",size=I(2)) +theme_bw()
%qplot(y= grades, x=classes, geom="boxplot") + theme_bw()
dev.copy(png, file="plots/3classGradeCompareSD.png",width=400,height=150);dev.off()

levels(classes) <- LETTERS[4:6]

%% now skew
grades <- round(rnorm(300,78, 7))
 grades[1:100] = 67 + rchisq(100,5)*2
 grades[101:200] = 92 - 2*rchisq(100,4)
levels(classes) <- LETTERS[4:6+3]
y <- grades
for(i in 1:3){
  z <- as.numeric(table(grades[1:100+(i-1)*100]) )
  z <- z[z>0]
  grades[1:100+(i-1)*100] = sort(grades[1:100+(i-1)*100])
  y[1:100+(i-1)*100] <- unlist(sapply(z,function(x) 1:x))
}

qplot(x=grades,facets=~classes,ylab="",geom="density") +theme_bw()
dev.copy(png, file="plots/3classGradeCompareSkw.png",width=800,height=300);dev.off()


data(Salaries, package = "car")
par(mfrow=c(1,2))
boxplot(Salaries$salary, xlab = "Salary", horizontal = TRUE)
hist(Salaries$salary, xlab = "Salary", main = "")
dev.copy(png,"plots/salaryBoxHist.png", height = 250, width = 600);dev.off()


par(mfrow=c(1,1))
femaleRatings <- seq(1.15,4.15,.2)
  maleRatings <- seq(1.15,4.55,.2)
femalePercent <-  c(0.2,  1.9,  6.3, 10.3, 12.7, 13.2, 12.4, 10.9,  9.2,  7.3,  5.7,  4.2,  2.6,  1.5,  0.6, 0.2)
 malePercent <- c( 0.4, 1.8, 3.5, 6.0, 6.7, 7.2, 7.8, 8.6, 9.0, 9.4, 9.2, 8.6, 7.6, 5.9, 4.0, 1.9, 0.6, 0.3)

 plot(maleRatings,malePercent,type = "l",col=4,xlim = c(1,5), xlab = "Rating", ylab ="Percentage", main = "Attractiveness Rating of Women by Men")
 #symm.y <- (malePercent + rev(malePercent))/2
 #lines(maleRatings,symm.y,type = "l", lty=4)
dev.copy(png,"menRateWomen.png", height = 250, width = 450);dev.off()

 plot(maleRatings,malePercent,type = "l",col="grey",ylim = c(0,13), xlim = c(1,5), xlab = "Rating", ylab ="Percentage", main = "Attractiveness Ratings of Opposite Sex")
 lines(femaleRatings,femalePercent,type = "l",col=1, lty=4)
 legend(3.5,12.5, lty=c(4,1), col = c("black","grey"), c("Women rate men","Men rate women"),bty="n")
dev.copy(png,"RateMenAndWomen.png", height = 300, width = 450);dev.off()
