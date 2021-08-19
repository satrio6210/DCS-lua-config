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
local RED_FOX_2 = SPAWN:New("RED_FOX_2")

-- repeat on landing
RED_FOX_2:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
RED_FOX_2:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
RED_FOX_2:InitLimit(2,99)

-- SPawn the group
--RED_HIND:Spawn()
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
local TRAINING_AI = SPAWN:New("TRAINING_AI")

-- repeat on landing
TRAINING_AI:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
TRAINING_AI:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
TRAINING_AI:InitLimit(1,99)

-- SPawn the group
TRAINING_AI:SpawnScheduled(60,0)

-- declare spawn objects
local Hornet_AI = SPAWN:New("Hornet_AI")

-- repeat on landing
Hornet_AI:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
Hornet_AI:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
Hornet_AI:InitLimit(1,99)

-- SPawn the group
--BLUE_CAP:Spawn()
Hornet_AI:SpawnScheduled(60,0)

-- declare spawn objects
local Su_33_Kuznetsov_1 = SPAWN:New("Su_33_Kuznetsov_1")

-- repeat on landing
Su_33_Kuznetsov_1:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
Su_33_Kuznetsov_1:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
Su_33_Kuznetsov_1:InitLimit(2,99)

-- SPawn the group
--BLUE_CAP:Spawn()
Su_33_Kuznetsov_1:SpawnScheduled(60,0)

-- declare spawn objects
local F_15E = SPAWN:New("F-15E")

-- repeat on landing
F_15E:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
F_15E:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
F_15E:InitLimit(4,99)

-- SPawn the group
--BLUE_Striker:Spawn()
F_15E:SpawnScheduled(60,0)

-- declare spawn objects
local BLUE_Striker = SPAWN:New("GALAXY")

-- repeat on landing
BLUE_Striker:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
BLUE_Striker:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
BLUE_Striker:InitLimit(1,99)

-- SPawn the group
--BLUE_Striker:Spawn()
BLUE_Striker:SpawnScheduled(60,0)


-- declare spawn objects
local BLUE_CAS = SPAWN:New("CAP16")

-- repeat on landing
BLUE_CAS:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
BLUE_CAS:InitCleanUp(300)

-- number of aircraft per flight and respawn limir
BLUE_CAS:InitLimit(3,99)

-- SPawn the group
--BLUE_Striker:Spawn()
BLUE_CAS:SpawnScheduled(60,0)

-- declare spawn objects
local BLUE_SEAD = SPAWN:New("Apache_AI")

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
local BLUE_HELI = SPAWN:New("ATLAS")

-- repeat on landing
BLUE_HELI:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
BLUE_HELI:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
BLUE_HELI:InitLimit(1,99)

-- SPawn the group
--BLUE_Striker:Spawn()
BLUE_HELI:SpawnScheduled(60,0)

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
local Texaco_21 = SPAWN:New("Texaco_21")

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