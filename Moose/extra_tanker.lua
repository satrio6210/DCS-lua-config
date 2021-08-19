-- declare spawn objects
local TANKER1 = SPAWN:New("Shell 2-1")

-- repeat on landing
TANKER1:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
TANKER1:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
TANKER1:InitLimit(1,99)

-- Spawn the group
TANKER1:SpawnScheduled(60,0)

-- declare spawn objects
local TANKER2 = SPAWN:New("Shell 3-1")

-- repeat on landing
TANKER2:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
TANKER2:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
TANKER2:InitLimit(1,99)

-- Spawn the group
TANKER2:SpawnScheduled(60,0)

-- declare spawn objects
local TANKER3 = SPAWN:New("Shell 4-1")

-- repeat on landing
TANKER3:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
TANKER3:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
TANKER3:InitLimit(1,99)

-- Spawn the group
TANKER3:SpawnScheduled(60,0)

-- declare spawn objects
local TANKER4 = SPAWN:New("Texaco 2-1")

-- repeat on landing
TANKER4:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
TANKER4:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
TANKER4:InitLimit(1,99)

-- Spawn the group
TANKER4:SpawnScheduled(60,0)

-- declare spawn objects
local TANKER5 = SPAWN:New("Texaco 3-1")

-- repeat on landing
TANKER5:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
TANKER5:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
TANKER5:InitLimit(1,99)

-- Spawn the group
TANKER5:SpawnScheduled(60,0)

-- declare spawn objects
local TANKER6 = SPAWN:New("Texaco 4-1")

-- repeat on landing
TANKER6:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
TANKER6:InitCleanUp(180)

-- number of aircraft per flight and respawn limir
TANKER6:InitLimit(1,99)

-- Spawn the group
TANKER6:SpawnScheduled(60,0)