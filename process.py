log_file = open("um-server-01.txt") #This line defines log_file as being the referenced opened file


def sales_reports(log_file): #This line is creating a function called sales_reports that is taking our previously defined variable as a parameter
    for line in log_file: #This line starts a For In loop through our file
        line = line.rstrip() #This line defines that our new variable line should be returned without any additional white spaces or trailing chars after our string
        day = line[0:3] #This line creates another variable day that is setting a range on our line variable for any item in position 0 to 3
        if day == "Mon": #This line sets our restrictions on our search only wanting to return each line from Tue.... and now Monday lol
            print(line) #This requests that if our search passes our restriction, we would like that line presented on the screen


sales_reports(log_file) #This line invokes our new function to go through our parameter