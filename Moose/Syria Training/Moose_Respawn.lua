-- declare spawn objects
local RED_TANKER = SPAWN:New("RED_TANKER")

-- repeat on landing
RED_TANKER:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
RED_TANKER:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
RED_TANKER:InitLimit(1,99)

-- SPawn the group
RED_TANKER:SpawnScheduled(60,0)

-- declare spawn objects
local RED_AWACS = SPAWN:New("RED_AWACS")

-- repeat on landing
RED_AWACS:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
RED_AWACS:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
RED_AWACS:InitLimit(1,99)

-- SPawn the group
RED_AWACS:SpawnScheduled(60,0)

-- declare spawn objects
local RED_BVR = SPAWN:New("RED_BVR")

-- repeat on landing
RED_BVR:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
RED_BVR:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
RED_BVR:InitLimit(1,99)

-- SPawn the group
RED_BVR:SpawnScheduled(60,0)

-- declare spawn objects
local RED_FOX_2 = SPAWN:New("RED_FOX_2")

-- repeat on landing
RED_FOX_2:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
RED_FOX_2:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
RED_FOX_2:InitLimit(2,99)

-- SPawn the group
RED_FOX_2:SpawnScheduled(60,0)

-- declare spawn objects
local RED_FOX2 = SPAWN:New("RED_FOX2")

-- repeat on landing
RED_FOX2:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
RED_FOX2:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
RED_FOX2:InitLimit(2,99)

-- SPawn the group
--RED_HIND:Spawn()
RED_FOX2:SpawnScheduled(60,0)

-- declare spawn objects
local BLUE_TANK1 = SPAWN:New("Shell")

-- repeat on landing
BLUE_TANK1:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
BLUE_TANK1:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
BLUE_TANK1:InitLimit(1,99)

-- SPawn the group
BLUE_TANK1:SpawnScheduled(60,0)

-- declare spawn objects
local BLUE_TANK2 = SPAWN:New("Texaco")

-- repeat on landing
BLUE_TANK2:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
BLUE_TANK2:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
BLUE_TANK2:InitLimit(1,99)

-- SPawn the group
BLUE_TANK2:SpawnScheduled(60,0)

-- declare spawn objects
local Texaco_21 = SPAWN:New("Texaco 130")

-- repeat on landing
Texaco_21:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
Texaco_21:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
Texaco_21:InitLimit(1,99)

-- SPawn the group
Texaco_21:SpawnScheduled(60,0)


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