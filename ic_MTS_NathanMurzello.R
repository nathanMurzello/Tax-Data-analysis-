StartHere("Nathan Murzello","Workshop",date())
x2b=sqldf("SELECT state,zipcode,n1 FROM g15")
head(x2b)
tail(x2b)

x2c=sqldf("SELECT state,zipcode,n1, numdep, A00100, SCHF FROM g15")
head(x2c)
tail(x2c)

x2d=sqldf("SELECT state,zipcode,n1, numdep,A00100,SCHF, A06500,A10300,A19700 FROM g15")
tail(x2d)
write.csv(x2d, file="x2d.csv")

StartHere("Nathan Murzello","IC",date())

ica=sqldf("SELECT state,zipcode,n1, numdep,A00100,SCHF, A06500,A10300,A19700 FROM g15 WHERE zipcode >'30320' AND zipcode<'99999'")

icb=sqldf("SELECT state,zipcode,n1, numdep,A00100,SCHF, A06500,A10300,A19700 FROM g15 WHERE zipcode >'0' AND zipcode<'99999'")

icc=sqldf("SELECT state,zipcode,n1, numdep,A00100,SCHF, A06500,A10300,A19700,ELDERLY FROM g15 WHERE zipcode >'0' AND zipcode<'99999'")
write.csv(icc,file="icc.csv")
