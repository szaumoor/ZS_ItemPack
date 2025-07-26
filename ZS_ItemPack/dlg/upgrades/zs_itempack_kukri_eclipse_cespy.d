EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("ZSIPKRE0")~ THEN GOTO ZSIPKukriEclipse_PartyHasAtLeastOneItem
END

APPEND BOTSMITH
  IF ~~ THEN BEGIN ZSIPKukriEclipse_PartyHasAtLeastOneItem SAY ~Heh, you use katana? You is some kind of ninja or somethings? Eww, smells like rotten eggs, you gets this from Styx?~
    IF ~!PartyHasItem("scrl9n")~ GOTO ZSIPKukriEclipse_PartyDoesNotHaveAllParts
    IF ~PartyHasItem("scrl9n")~  GOTO ZSIPKukriEclipse_PartyHasAllParts
  END

  IF ~~ THEN BEGIN ZSIPKukriEclipse_PartyDoesNotHaveAllParts SAY ~Coulds make this better if you has scroll of Gate. Come back when you finds one, okay?~
    IF ~~ THEN GOTO ZSIPKukriEclipse_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPKukriEclipse_PartyHasAllParts SAY ~And you has scroll of Gate! Gives it here and 12,5000 gold and Cespenar makes it better, okays?~
    IF ~PartyGoldLT(12500)~ THEN REPLY #66633 GOTO 10
    IF ~PartyGoldGT(12499)~ THEN DO ~SetGlobal("ZSIP_KukriEclipseForge","GLOBAL",1)
                                    SetGlobal("ForgeStuff", "GLOBAL",1)
                                    TakePartyGold(12500)
                                    DestroyGold(12500)
                                    TakePartyItemNum("ZSIPKRE0", 1)
                                    DestroyItem("ZSIPKRE0")
                                    TakePartyItemNum("scrl9n", 1)
                                    DestroyItem("scrl9n")~ REPLY #66706 GOTO 11
    IF ~~ THEN REPLY #66650 GOTO ZSIPKukriEclipse_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPKukriEclipse_MovingRightAlong SAY ~Okays, moving right along!~
    COPY_TRANS BOTSMITH 4
  END

  IF WEIGHT #-1 ~Global("ZSIP_KukriEclipseForge","GLOBAL",1)~ THEN BEGIN ZSIP_ItemForged SAY #70888
    IF ~~ THEN DO ~SetGlobal("ZSIP_KukriEclipseForge","GLOBAL", 0)~ EXIT
  END

END
