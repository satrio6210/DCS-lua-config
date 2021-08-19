-- declare spawn objects
local E_3 = SPAWN:New("E-3")

-- repeat on landing
E_3:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
E_3:InitCleanUp(180)

-- SPawn the group
E_3:Spawn()


