# test_setup.jl - Test complet setup Julia + env local

println("✅ Julia setup OK !")

# Test 1: Base Julia
println("1. Version: ", VERSION)
println("2. Projet actif: ", pwd())
println("3. Env actif: ", Base.active_project())

# Test 2: Packages standards (toujours dispo)
using LinearAlgebra
A = rand(3,3)
println("4. Valeurs propres OK: ", eigvals(A))

# Test 3: Plots (si installé)
try
    using Plots
    plot(rand(10), label="Random", title="Julia + Plots OK !")
    savefig("./output/test_plot.png")
    println("5. Plots OK (test_plot.png créé)")
catch e
    println("5. Plots non installé (normal premier test)")
end

# Test 4: DataFrames (si installé)
try
    using DataFrames
    df = DataFrame(a=1:5, b=rand(5))
    println("6. DataFrames OK: ", first(df, 2))
catch e
    println("6. DataFrames non installé")
end

println("🎉 Setup prêt pour data science !")
