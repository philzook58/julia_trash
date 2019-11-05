
using JuMP
using Clp
println("Hey friend")

m = Model(solver = ClpSolver())
 

@variable(m, 0 <= x <= 2 )
@variable(m, 0 <= y <= 30 )

@objective(m, Min, x+ y )
@constraint(m, x + y >= 1 )

print(m)

status = solve(m)

println("Objective value: ", getobjectivevalue(m))
println("x = ", getvalue(x))
println("y = ", getvalue(y))