-- declare spawn objects
local KC_135_1 = SPAWN:New("KC_135_1")

-- repeat on landing
KC_135_1:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
KC_135_1:InitCleanUp(180)

-- SPawn the group
KC_135_1:Spawn()


-- declare spawn objects
local KC_135_2 = SPAWN:New("KC_135_2")

-- repeat on landing
KC_135_2:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
KC_135_2:InitCleanUp(180)

-- SPawn the group
KC_135_2:Spawn()


-- declare spawn objects
local KC_130_1 = SPAWN:New("KC_130_1")

-- repeat on landing
KC_130_1:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
KC_130_1:InitCleanUp(180)

-- SPawn the group
KC_130_1:Spawn()


-- declare spawn objects
local KC_130_2 = SPAWN:New("KC_130_2")

-- repeat on landing
KC_130_2:InitRepeatOnEngineShutDown()

-- delete after inactive for 180sec
KC_130_2:InitCleanUp(180)

-- SPawn the group
KC_130_2:Spawn()