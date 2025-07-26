EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("ZSIPRHR2")~ THEN GOTO ZSIPRingHardiness_PartyHasAtLeastOneItem
END

APPEND WSMITH01

  IF ~~ THEN BEGIN ZSIPRingHardiness_PartyHasAtLeastOneItem SAY ~What's this then? A steel ring? Interesting...~
    IF ~!PartyHasItem("scrl1v")
        !PartyHasItem("scrl2b")~ GOTO ZSIPRingHardiness_PartyDoesNotHaveAllParts

    IF ~OR(2)
          PartyHasItem("scrl1v")
          PartyHasItem("scrl2b")~  GOTO ZSIPRingHardiness_PartyHasAllParts
  END

  IF ~~ THEN BEGIN ZSIPRingHardiness_PartyDoesNotHaveAllParts SAY ~Aye, this be a ring of hardiness. If ye find me a scroll of Stoneskin, I can improve it for ye.~
    IF ~~ THEN GOTO ZSIPRingHardiness_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPRingHardiness_PartyHasAllParts SAY ~Aye, this be a ring of hardiness. Since ye have a scroll of Stoneskin already, I can improve it to make it more protective for ye.~
    IF ~~ THEN REPLY #105299 GOTO ZSIPRingHardiness_HowMuch
    IF ~~ THEN REPLY #105300 GOTO ZSIPRingHardiness_MovingRightAlong
  END

   IF ~~ THEN BEGIN ZSIPRingHardiness_HowMuch SAY ~It'll cost ye 5000 gold and without me apprentice, you'll need to stay on a day and help me run the forge.~
    IF ~PartyGoldGT(4999)
        PartyHasItem("scrl1v")~ THEN DO ~SetGlobal("ZSIP_RingHardinessForge","MYAREA",1)
                                     TakePartyGold(5000)
                                     DestroyGold(5000)
                                     TakePartyItemNum("ZSIPRHR2", 1)
                                     DestroyItem("ZSIPRHR2")
                                     TakePartyItemNum("scrl1v", 1)
                                     DestroyItem("scrl1v")~ REPLY ~Yes, let's do it.~ GOTO 56
    IF ~PartyGoldGT(4999)
        !PartyHasItem("scrl1v")~ THEN DO ~SetGlobal("ZSIP_RingHardinessForge","MYAREA",1)
                                      TakePartyGold(5000)
                                      DestroyGold(5000)
                                      TakePartyItemNum("ZSIPRHR2", 1)
                                      DestroyItem("ZSIPRHR2")
                                      TakePartyItemNum("scrl2b", 1) //
                                      DestroyItem("scrl2b")~ REPLY #59775 GOTO 56

    IF ~~ THEN REPLY #59777 GOTO ZSIPRingHardiness_MovingRightAlong
    IF ~~ THEN REPLY #59778 GOTO 12
  END

   IF ~~ THEN BEGIN ZSIPRingHardiness_MovingRightAlong SAY ~Well, let's see what ye've got then.~
    COPY_TRANS WSMITH01 13
  END

  IF WEIGHT #-1 ~Global("ZSIP_RingHardinessForge","GLOBAL",1)~ THEN BEGIN ZSIP_ItemForged SAY #70888
    IF ~~ THEN DO ~SetGlobal("ZSIP_RingHardinessForge","GLOBAL", 0)~ EXIT
  END

END
