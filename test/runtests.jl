using DTKTest
using Test

using JET
@testset "static analysis with JET.jl" begin
    @test isempty(JET.get_reports(report_package(DTKTest, target_modules=(DTKTest,))))
end

@testset "QA with Aqua" begin
    import Aqua
    Aqua.test_all(DTKTest)
end

# write tests here


