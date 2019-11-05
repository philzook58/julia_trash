module HomoPoly

using HomotopyContinuation

myfun(x) = 3x

# declare variables x and y
@polyvar x y

# define the polynomials
function testp()
    f₁ = (x^4 + y^4 - 1) * (x^2 + y^2 - 2) + x^5 * y
    f₂ = x^2+2x*y^2 - 2y^2 - 1/2
    result = solve([f₁, f₂]) 
    print(result)
end


end