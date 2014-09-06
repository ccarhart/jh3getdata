' Get the file'
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml",destfile="rest.xml", method="curl" )

#Read it in as XML
doc<-xmlTreeParse("rest.xml")

#Get the root
r<-xmlRoot(doc)

#Pull it in as a string of values
listing <- xmlSApply(r[[1]], function(x) xmlSApply(x, xmlValue))

#Transpose it into a dataframe of rows and columns
list_df < data.frame(t(listing))

# get the answer to the quiz questions...
sum(list_df$zipcode=='21231')