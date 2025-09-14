EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("ZSIPSF00")~ THEN GOTO ZSIPStygianFury_PartyHasAtLeastOneItem
END

APPEND BOTSMITH
  IF ~~ THEN BEGIN ZSIPStygianFury_PartyHasAtLeastOneItem SAY ~Heh, you use katana? You is some kind of ninja or somethings? Eww, smells like rotten eggs, you gets this from Styx?~
    IF ~!PartyHasItem("scrl9n")~ GOTO ZSIPStygianFury_PartyDoesNotHaveAllParts
    IF ~PartyHasItem("scrl9n")~  GOTO ZSIPStygianFury_PartyHasAllParts
  END

  IF ~~ THEN BEGIN ZSIPStygianFury_PartyDoesNotHaveAllParts SAY ~Coulds make this better if you has scroll of Gate. Come back when you finds one, okay?~
    IF ~~ THEN GOTO ZSIPStygianFury_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPStygianFury_PartyHasAllParts SAY ~And you has scroll of Gate! Gives it here and 12,500 gold and Cespenar makes it better, okays?~
    IF ~PartyGoldLT(12500)~ THEN REPLY #66633 GOTO 10
    IF ~PartyGoldGT(12499)~ THEN DO ~SetGlobal("ZSIP_StygianFuryForge","GLOBAL",1)
                                    SetGlobal("ForgeStuff", "GLOBAL",1)
                                    TakePartyGold(12500)
                                    DestroyGold(12500)
                                    TakePartyItemNum("ZSIPSF00", 1)
                                    DestroyItem("ZSIPSF00")
                                    TakePartyItemNum("scrl9n", 1)
                                    DestroyItem("scrl9n")~ REPLY #66706 GOTO 11
    IF ~~ THEN REPLY #66650 GOTO ZSIPStygianFury_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPStygianFury_MovingRightAlong SAY ~Oh well, if you finds the scroll of Gate, come back and I makes it for you.~
    COPY_TRANS BOTSMITH 4
  END

  IF WEIGHT #-1 ~Global("ZSIP_StygianFuryForge","GLOBAL",1)~ THEN BEGIN ZSIP_ItemForged SAY #70888
    IF ~~ THEN DO ~SetGlobal("ZSIP_StygianFuryForge","GLOBAL", 0)~ EXIT
  END

END
