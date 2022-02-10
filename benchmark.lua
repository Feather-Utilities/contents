local requestfunc = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request
local getasset = getsynasset or getcustomasset
local pointScore = 0
local missingFunctions = {}

print("---- Feather Benchmark ----")
if requestfunc then
    print("Request : VALID")
    pointScore = pointScore + 1
else
    table.insert(missingFunctions, "Request")
    print("Request : NOT FOUND")
end
if getasset then
    print("getsynasset / getcustomasset : VALID")
    pointScore = pointScore + 1
else
    table.insert(missingFunctions, "getsynasset / getcustomasset")
    print("getsynasset / getcustomasset : NOT FOUND")
end
if isfolder and makefolder and writefile and isfile then
    print("Filesystem API : VALID")
    pointScore = pointScore + 1
else
    table.insert(missingFunctions, "Filesystem API")
    print("Filesystem API : NOT FOUND")
end

if pointScore >= 3 then
    print("ALL Functions Found! You can use Feather-Admin without any issues.")
else
    print("Functions Missing! Feather-Admin will not function properly on your Exploit. Total Points: " .. pointScore .. ". Total Required: 3. Missing Functions:\n")
    for i,v in pairs(missingFunctions) do
        print(v .. "\n")
    end
end
print("---- Feather Benchmark ----")
