#
# This file is a part of graphmol.jl
# Licensed under the MIT License http://opensource.org/licenses/MIT
#

@testset "graph.generator" begin

@testset "pathgraph" begin
    nullg = pathgraph(0)
    @test nodecount(nullg) == 0
    pg100 = pathgraph(100)
    @test edgecount(pg100) == 99
    @test length(shortestpath(pg100, 1, 100)) == 100
end

@testset "completegraph" begin
    @test_throws ValueError completegraph(-1)
    cg0 = completegraph(0)
    @test nodecount(cg0) == 0
    @test edgecount(cg0) == 0
    cg1 = completegraph(1)
    @test nodecount(cg1) == 1
    @test edgecount(cg1) == 0
    cg2 = completegraph(2)
    @test nodecount(cg2) == 2
    @test edgecount(cg2) == 1
    cg3 = completegraph(3)
    @test nodecount(cg3) == 3
    @test edgecount(cg3) == 3
    cg5 = completegraph(5)
    @test nodecount(cg5) == 5
    @test edgecount(cg5) == 10
    cg20 = completegraph(20)
    @test nodecount(cg20) == 20
    @test edgecount(cg20) == 190
end

end # graph.generator
