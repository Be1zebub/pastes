for uid, listener in pairs(hook.GetTable().PlayerInitialSpawn or {}) do
    if listener(Entity(1), false) ~= nil then
        print("bad PlayerInitialSpawn hook: ".. uid)
        PrintTable(debug.getinfo(listener))
    end
end

for uid, listener in pairs(hook.GetTable().SetupMove or {}) do
    if listener(Entity(1), FindMetaTable("CMoveData"), FindMetaTable("CUserCmd")) ~= nil then
        print("bad SetupMove hook: ".. uid)
        PrintTable(debug.getinfo(listener))
    end
end
