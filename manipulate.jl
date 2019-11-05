using Interact
using Gadfly

@manipulate for ϕ = 0:π/16:4π, f = [sin, cos], both = false
    if both
        plot([θ -> sin(θ + ϕ), θ -> cos(θ + ϕ)], 0, 8)
    else
        plot(θ -> f(θ + ϕ), 0, 8)
    end
end
