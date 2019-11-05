using JuMP
#using Clp
using GLPK

#m = Model(solver = ClpSolver())
model = Model(with_optimizer(GLPK.Optimizer))
@variable(model, 0 <= x[1:20] <= 1)
@variable(model, 0 <= t[1:20] <= 1/127)
@variable(model, 0 <= z[1:20] <= 127, Int)
@constraint(model, x - z/127 .<= t)
@constraint(model, -t .<= x - z/127)
