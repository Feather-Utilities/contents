local requestfunc = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request
local getasset = getsynasset or getcustomasset
print("---- Feather Benchmark ----")
if requestfunc then
    print("Request : VALID")
else
    print("Request : NOT FOUND")
end
if getasset then
    print("getsynasset / getcustomasset : VALID")
else
    print("getsynasset / getcustomasset : NOT FOUND")
end
if isfolder or makefolder or writefile or isfile then
    print("Filesystem API : VALID")
else
    print("Filesystem API : NOT FOUND")
end
print("If everything is VALID, you can use Feather Admin")
print("---- Feather Benchmark ----")
