Names = c("Praise Paul","Grace Paul","Sharath","Akshitha Gopu","Angel M Stanly","S Siddarth","Lavanya","Srajana","Fathima")
CAT_1 = c(49,42,44,48,46,42,40,49,50)
CAT_2 = c(50,49,40,42,47,48,44,42,49)
print(list(c(Names,CAT_2)))
print(max(CAT_1))
print(min(CAT_1))

#DataFrame

df = data.frame(Names,CAT_1,CAT_2)
print(df)

#Extracting vectors from Dataframe
a = df[3]
b = df$CAT_1
print(c(a,b))

#Functions
c = mean(CAT_1)
d = mean(CAT_2)
print(c(c,d))

#importing CSV files
p = read.csv('https://d.docs.live.net/50fe3e7bcabb40cd/Book.xlsx')
q = p$Concentration(C)
r = p$Absorbance(A)

sum = q+r
print(sum)