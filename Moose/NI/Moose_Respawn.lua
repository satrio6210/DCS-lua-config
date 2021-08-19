-- declare spawn objects
local RED_TANKER = SPAWN:New("RED_TANKER")

-- repeat on landing
RED_TANKER:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
RED_TANKER:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
RED_TANKER:InitLimit(1,99)

-- SPawn the group
--RED_HIND:Spawn()
RED_TANKER:SpawnScheduled(60,0)

-- declare spawn objects
local RED_HIND = SPAWN:New("RED_HIND")

-- repeat on landing
RED_HIND:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
RED_HIND:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
RED_HIND:InitLimit(2,99)

-- SPawn the group
--RED_HIND:Spawn()
RED_HIND:SpawnScheduled(60,0)

-- declare spawn objects
local RED_BOMBER = SPAWN:New("RED_BOMBER")

-- repeat on landing
RED_BOMBER:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
RED_BOMBER:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
RED_BOMBER:InitLimit(1,99)

-- SPawn the group
--RED_HIND:Spawn()
RED_BOMBER:SpawnScheduled(60,0)

-- declare spawn objects
local RED_KAMOV = SPAWN:New("RED_KAMOV")

-- repeat on landing
RED_KAMOV:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
RED_KAMOV:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
RED_KAMOV:InitLimit(3,99)

-- SPawn the group
--RED_HIND:Spawn()
RED_KAMOV:SpawnScheduled(60,0)

-- declare spawn objects
--local BLUE_CAP = SPAWN:New("BLUE_CAP")

-- repeat on landing
--BLUE_CAP:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
--BLUE_CAP:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
--BLUE_CAP:InitLimit(1,99)

-- SPawn the group
--BLUE_CAP:Spawn()
--BLUE_CAP:SpawnScheduled(60,0)

-- declare spawn objects
--local BLUE_TOMCAT = SPAWN:New("BLUE_TOMCAT")

-- repeat on landing
--BLUE_TOMCAT:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
--BLUE_TOMCAT:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
--BLUE_TOMCAT:InitLimit(4,99)

-- SPawn the group
--BLUE_CAP:Spawn()
--BLUE_TOMCAT:SpawnScheduled(60,0)


-- declare spawn objects
--local BLUE_Striker = SPAWN:New("BLUE_Striker")

-- repeat on landing
--BLUE_Striker:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
--BLUE_Striker:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
--BLUE_Striker:InitLimit(1,99)

-- SPawn the group
--BLUE_Striker:Spawn()
--BLUE_Striker:SpawnScheduled(60,0)


-- declare spawn objects
local BLUE_CAS = SPAWN:New("BLUE_CAS")

-- repeat on landing
BLUE_CAS:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
BLUE_CAS:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
BLUE_CAS:InitLimit(1,99)

-- SPawn the group
--BLUE_Striker:Spawn()
BLUE_CAS:SpawnScheduled(60,0)

-- declare spawn objects
local BLUE_SEAD = SPAWN:New("BLUE_SEAD")

-- repeat on landing
BLUE_SEAD:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
BLUE_SEAD:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
BLUE_SEAD:InitLimit(2,99)

-- SPawn the group
--BLUE_Striker:Spawn()
BLUE_SEAD:SpawnScheduled(60,0)


-- declare spawn objects
local BLUE_HELI = SPAWN:New("BLUE_HELI")

-- repeat on landing
BLUE_HELI:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
BLUE_HELI:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
BLUE_HELI:InitLimit(2,99)

-- SPawn the group
--BLUE_Striker:Spawn()
BLUE_HELI:SpawnScheduled(60,0)


-- declare spawn objects
--local BLUE_BOMBER = SPAWN:New("BLUE_BOMBER")

-- repeat on landing
--BLUE_BOMBER:InitRepeatOnLanding()

-- delete after inactive for 180sec
--BLUE_BOMBER:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
--BLUE_BOMBER:InitLimit(1,99)

-- SPawn the group
--BLUE_Striker:Spawn()
--BLUE_BOMBER:SpawnScheduled(60,0)