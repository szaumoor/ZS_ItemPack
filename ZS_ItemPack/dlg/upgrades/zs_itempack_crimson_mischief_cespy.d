EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("ZSIPCM00")~ THEN GOTO ZSIPCrimsonMischief_PartyHasAtLeastOneItem
END

APPEND BOTSMITH
  IF ~~ THEN BEGIN ZSIPCrimsonMischief_PartyHasAtLeastOneItem SAY ~Nasty bloody sword you gots there. Cespenar goings to has to mop before somebody steps in it... Ewww.~
    IF ~!PartyHasItem("misc45")~ GOTO ZSIPCrimsonMischief_PartyDoesNotHaveAllParts
    IF ~PartyHasItem("misc45")~  GOTO ZSIPCrimsonMischief_PartyHasAllParts
  END

  IF ~~ THEN BEGIN ZSIPCrimsonMischief_PartyDoesNotHaveAllParts SAY ~Can make drippy red sword better if you brings a rogue stone! But, you don't has it.~
    IF ~~ THEN GOTO ZSIPCrimsonMischief_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPCrimsonMischief_PartyHasAllParts SAY ~You gots a rogue stone, so I can makes it stronger. Maybe does something about all the blood. No? Okays then! I needs 12,500 gold and I makes it for you, boss. You likes?~
    IF ~PartyGoldLT(12500)~ THEN REPLY #66633 GOTO 10
    IF ~PartyGoldGT(12499)~ THEN DO ~SetGlobal("ZSIP_CrimsonMischiefForge","GLOBAL",1)
                                    SetGlobal("ForgeStuff", "GLOBAL",1)
                                    TakePartyGold(12500)
                                    DestroyGold(12500)
                                    TakePartyItemNum("ZSIPCM00", 1)
                                    DestroyItem("ZSIPCM00")
                                    TakePartyItemNum("misc45", 1)
                                    DestroyItem("misc45")~ REPLY #66706 GOTO 11
    IF ~~ THEN REPLY #66650 GOTO ZSIPCrimsonMischief_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPCrimsonMischief_MovingRightAlong SAY ~Oh well, if you finds a rogue stone, come back and I makes it for you.~
    COPY_TRANS BOTSMITH 4
  END

  IF WEIGHT #-1 ~Global("ZSIP_CrimsonMischiefForge","GLOBAL",1)~ THEN BEGIN ZSIP_ItemForged SAY #70888
    IF ~~ THEN DO ~SetGlobal("ZSIP_CrimsonMischiefForge","GLOBAL", 0)~ EXIT
  END

END
