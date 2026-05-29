#PA3
#Julio Colon
#05/29/2026
#Create employee data frame, then add new employee

install.packages("tidyverse")
library(tidyverse)

#Create vectors for the employee data
EmployeeID <- c(1001, 1002, 1003, 1004, 1005)
LastName <- c("Smith", "Norris", "Johnson", "Hart", "Owens")
Salary <- c(45000, 51000, 36000, 39000, 42000)

#Create data frame using employee vectors
employees <- data.frame(EmployeeID, LastName, Salary, stringsAsFactors = FALSE)

#Display summary
summary(employees)

#Create possible exemption values
ExemptValues <- c("N", "Y")
#Assign exemption status based on salary
Exempt <- ExemptValues [(Salary > 50000) + 1]
#Add Exempt column to the data frame
employees <- cbind(employees, Exempt)

#Display the updated data frame
employees

#Display first two rows of the data frame
employees[1:2, ]
#Display the structure of the data frame
str(employees)

#Create new employee row
newEmployee <- data.frame(
  EmployeeID = 1006,
  LastName = "Rogers",
  Salary = 55000,
  Exempt = "Y",
  stringsAsFactors = FALSE
)

#Add the new employee to the data frame
employees <- rbind(employees, newEmployee)

#Display the updated data frame
employees