##Reading data
NEI<-readRDS("summarySCC_PM25.rds")
SCC<-readRDS("Source_Classification_Code.rds")

mv<-SCC[grep("Vehicles", SCC$SCC.Level.Three, ignore.case = T), ]

data<-merge(NEI, mv, by ="SCC")

Baltimore<-subset(data, fips=="24510")
sumsB<-aggregate(Emissions~year, Baltimore, sum)

##plot 5
png("plot5.png", width=480, height=480)
plot(sumsB, type = "l", xlab = "Year",  ylab = "Emissions of PM2.5 (tons)", 
     main = "Total Emissions of PM2.5 
     from Motor Vehicle Sources in Baltimore, Maryland", 
     xaxt = "n")
axis(1, at = c(1999,2002,2005,2008), labels = c(1999,2002,2005,2008));
dev.off()
##PM2.5 emissions had decreased
