-- ATIS at Anapa Airport on 143.00 MHz AM.
atisAnapa=ATIS:New(AIRBASE.Caucasus.Anapa_Vityazevo, 153.00)
atisAnapa:SetRadioRelayUnitName("ATIS_ANAPA")
atisAnapa:SetTowerFrequencies({38.4, 121.00, 250.00, 0.075})
atisAnapa:Start()

-- ATIS Batumi Airport on 143.00 MHz AM.
atisBatumi=ATIS:New(AIRBASE.Caucasus.Batumi, 143.00)
atisBatumi:SetRadioRelayUnitName("Radio Relay Batumi")
atisBatumi:SetTowerFrequencies({40.40, 131.00, 260.00, 4.25})
atisBatumi:Start()