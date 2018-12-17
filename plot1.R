## read in emissions data and classification code
emissions_data <- readRDS("C:/Users/DELL/Documents/internet_data/Coursera_Exploratory_Data_Analysis_Week-4_Project/summarySCC_PM25.rds")
class_code <- readRDS("Source_Classification_Code.rds")

## creating a copy of the data

copy_emissions_data<-emission_data

## working on a copy of that data

## add up the total emissions for each year
sum_by_year <- aggregate(copy_emissions_data$Emissions, by=list(year=copy_emissions_data$year), FUN=sum)

## create the plot
png(filename = "plot1.png")
plot(sum_by_year$year, sum_by_year$x, type = "l", 
     main = "Total Emissions of PM2.5 in Baltimore City",
     ylab = "Total emissions of PM2.5 (tons)",
     xlab = "Year")
dev.off()
