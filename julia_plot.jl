print("hello")
a = 1+2
print(3a)

#α = λ x =

map(x -> x^2 + 2x - 1, [1,3,-1])

#Pkg.add("PyPlot")
using PyPlot
x = linspace(0,2pi,1000); y = sin(3x + 4cos(2x))
plot(x, y, color="red", linewidth=2.0, linestyle="--")
