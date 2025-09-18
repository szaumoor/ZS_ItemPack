EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("ZSIPSL01")~ THEN GOTO ZSIPShiningLight_PartyHasAtLeastOneItem
END

APPEND WSMITH01

  IF ~~ THEN BEGIN ZSIPShiningLight_PartyHasAtLeastOneItem SAY ~What's this then? A holy sword? Aye, I see the Morninglord's symbol... Interesting...~
    IF ~!PartyHasItem("misc5k")~ GOTO ZSIPShiningLight_PartyDoesNotHaveAllParts
    IF ~PartyHasItem("misc5k")~  GOTO ZSIPShiningLight_PartyHasAllParts
  END

  IF ~~ THEN BEGIN ZSIPShiningLight_PartyDoesNotHaveAllParts SAY ~Aye, that be a mighty sword against the undead, but if ye find me some illithium, I can improve it for ye. Very rare metal, though.~
    IF ~~ THEN GOTO ZSIPShiningLight_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPShiningLight_PartyHasAllParts SAY ~Aye, that be a mighty sword against the undead. And ye also have illithium, so I could improve it for ye.~
    IF ~~ THEN REPLY #59712 GOTO ZSIPShiningLight_HowMuch
    IF ~~ THEN REPLY #59713 GOTO ZSIPShiningLight_MovingRightAlong
  END

   IF ~~ THEN BEGIN ZSIPShiningLight_HowMuch SAY ~It'll cost ye 5000 gold and without me apprentice, you'll need to stay on a day and help me run the forge.~
    IF ~PartyGoldGT(4999)
        PartyHasItem("misc5k")~ THEN DO ~SetGlobal("ZSIP_ShiningLightForge","MYAREA",1)
                                     TakePartyGold(5000)
                                     DestroyGold(5000)
                                     TakePartyItemNum("ZSIPSL01", 1)
                                     DestroyItem("ZSIPSL01")
                                     TakePartyItemNum("misc5k", 1)
                                     DestroyItem("misc5k")~ REPLY #59775 GOTO 56

    IF ~~ THEN REPLY #59777 GOTO ZSIPShiningLight_MovingRightAlong
    IF ~~ THEN REPLY #59778 GOTO 12
  END

   IF ~~ THEN BEGIN ZSIPShiningLight_MovingRightAlong SAY ~Well, let's see what ye've got then.~
    COPY_TRANS WSMITH01 13
  END

  IF WEIGHT #-1 ~Global("ZSIP_ShiningLightForge","MYAREA",1)~ THEN BEGIN ZSIP_ItemForged SAY #59797
    IF ~~ THEN DO ~SetGlobal("ZSIP_ShiningLightForge","MYAREA", 0)~ EXIT
  END

END
