local pointScore = 0
local missingFunctions = {}
print("---- Feather Benchmark ----")
if isfolder and makefolder and writefile and isfile then
    print("Filesystem API : VALID")
    pointScore = pointScore + 1
else
    table.insert(missingFunctions, "Filesystem API")
    print("Filesystem API : NOT FOUND")
end
if pointScore >= 1 then
    print("All Functions Found! You can use Feather Admin without any issues.")
else
    print("Functions Missing! Feather Admin will not function properly on your Exploit. Total Points: " .. pointScore .. ". Total Required: 1. Missing Functions:\n")
    for i,v in pairs(missingFunctions) do
        print(v .. "\n")
    end
end
print("---- Feather Benchmark ----")
