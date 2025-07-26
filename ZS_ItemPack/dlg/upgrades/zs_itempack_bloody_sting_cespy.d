EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("ZSIPBLS0")~ THEN GOTO ZSIPBloodySting_PartyHasAtLeastOneItem
END

APPEND BOTSMITH
  IF ~~ THEN BEGIN ZSIPBloodySting_PartyHasAtLeastOneItem SAY ~What this? Fancy metal stick? You been robbings nobles? Yech, smells like blood.~
    IF ~!PartyHasItem("scrl9n")~ GOTO ZSIPBloodySting_PartyDoesNotHaveAllParts
    IF ~PartyHasItem("scrl9n")~  GOTO ZSIPBloodySting_PartyHasAllParts
  END

  IF ~~ THEN BEGIN ZSIPBloodySting_PartyDoesNotHaveAllParts SAY ~Cespenar can makes it better if you has a demon heart. Very powerful, demon hearts, oh yes.~
    IF ~~ THEN GOTO ZSIPBloodySting_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPBloodySting_PartyHasAllParts SAY ~You been killing demons? Ew, is still beating. Can uses it to make pointy stick into... pointy meat stick? Very strong, very good recipe. Just needs the heart and 12,500 golds.~
    IF ~PartyGoldLT(12500)~ THEN REPLY #66633 GOTO 10
    IF ~PartyGoldGT(12499)~ THEN DO ~SetGlobal("ZSIP_BloodyStingForge","GLOBAL",1)
                                    SetGlobal("ForgeStuff", "GLOBAL",1)
                                    TakePartyGold(12500)
                                    DestroyGold(12500)
                                    TakePartyItemNum("ZSIPBLS0", 1)
                                    DestroyItem("ZSIPBLS0")
                                    TakePartyItemNum("scrl9n", 1)
                                    DestroyItem("scrl9n")~ REPLY #66706 GOTO 11
    IF ~~ THEN REPLY #66650 GOTO ZSIPBloodySting_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPBloodySting_MovingRightAlong SAY ~If you goes demon hunting, I can makes it for you. Er... maybe writes Cespenar a reference first, great one.~
    COPY_TRANS BOTSMITH 4
  END

  IF WEIGHT #-1 ~Global("ZSIP_BloodyStingForge","GLOBAL",1)~ THEN BEGIN ZSIP_ItemForged SAY #70888
    IF ~~ THEN DO ~SetGlobal("ZSIP_BloodyStingForge","GLOBAL", 0)~ EXIT
  END

END
