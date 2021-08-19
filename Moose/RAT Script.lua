local AN=RAT:New("RAT_AN_30M")
--AN:SetSpawnDelay(30)
--AN:SetSpawnInterval(0.5)
--AN:Uncontrolled()
--AN:ActivatUncontrolled(8, 120, 120, 0.5)
AN:ContinueJourney()
AN:Spawn(16)

local IL=RAT:New("RAT_AN_26")
IL:ContinueJourney()
IL:Spawn(10)

local YAK=RAT:New("RAT_YAK_40")
YAK:ContinueJourney()
YAK:Spawn(16)

local C130=RAT:New("RAT_C_130")
C130:ContinueJourney()
C130:Spawn(4)