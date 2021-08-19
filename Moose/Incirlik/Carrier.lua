-- Set carrier strike groups to patrol waypoints indefinitely. Once the last waypoint is reached, group will go back to first waypoint and start over.
--UNIT:FindByName("George Washington"):PatrolRoute()

-- E-2D @ USS Stennis spawning in air.
local awacsStennis=RECOVERYTANKER:New("Roosevelt", "E2D Group")

-- Custom settings:
awacsStennis:SetAWACS()
awacsStennis:SetCallsign(CALLSIGN.AWACS.Wizard)
--awacsStennis:SetTakeoffAir()
awacsStennis:SetAltitude(20000)
awacsStennis:SetSpeed(300)
awacsStennis:SetRadio(262)
awacsStennis:SetTACAN(2, "WIZ")
awacsStennis:SetRacetrackDistances(40, 20)
awacsStennis:SetModex(666)

-- Start AWACS.
awacsStennis:Start()

-- S-3B at USS Stennis spawning on deck.
local tankerStennis=RECOVERYTANKER:New("Roosevelt", "Texaco Group")

-- Custom settings:
tankerStennis:SetRadio(273)
tankerStennis:SetTACAN(45, "ARC")
tankerStennis:SetCallsign(CALLSIGN.Tanker.Shell)
tankerStennis:SetModex(0)  -- "Triple nuts"

-- Start recovery tanker.
-- NOTE: If you spawn on deck, it seems prudent to delay the spawn a bit after the mission starts.
tankerStennis:__Start(1)

--------------------------------
-- Rescue Helo Example Script --
--------------------------------

-- Rescue Helo @ USS John C. Stennis.
rescueheloStennis=RESCUEHELO:New("Roosevelt", "Rescue Helo")
rescueheloStennis:SetTakeoffAir()   -- Helo will be spawned and respawn in air.
rescueheloStennis:Start()
