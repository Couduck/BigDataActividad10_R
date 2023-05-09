print("Las variables a utilizar fueron las siguientes:\n")
print("NA_Sales: Ventas de un videojuego dentro del mercado estadounidense (Numérica)\n")
print("EU_Sales: Ventas de un videojuego dentro del mercado europeo (Numérica)\n")
print("JP_Sales: Ventas de un videojuego dentro del mercado japonés (Numérica)\n")
print("Other_Sales: Ventas de un videojuego en los demás mercados (Numérica)\n")
print("Global_Sales: Ventas de un videojuego en los demás mercados (Numérica)\n")


datosConjuntos <- read.csv("C:\\Users\\patoe\\Desktop\\Proyectos en R\\BigDataActividad10_R\\vgsales.csv")
datosFiltrados <- datosConjuntos[datosConjuntos$Rank <= 100,]
datosFiltrados <- datosFiltrados[c("NA_Sales", "EU_Sales", "JP_Sales", "Other_Sales", "Global_Sales")]
color<-c("red", "blue", "green", "yellow","purple","orange","pink","cyan","black","white","brown","gray")

pairs(datosFiltrados, pch=21, main="Ganancias de los 100 juegos mas vendidos por mercado", bg=color[(datosFiltrados$NA_Sales)])


