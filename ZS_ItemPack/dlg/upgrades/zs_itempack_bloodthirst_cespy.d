EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("ZSIPBLT3")~ THEN GOTO ZSIPBloodthirst_PartyHasAtLeastOneItem
END

APPEND BOTSMITH
  IF ~~ THEN BEGIN ZSIPBloodthirst_PartyHasAtLeastOneItem SAY ~Ew, bloody dagger. You wants tetanus? Oh, it Bhaal's. Can fix for you, maybe polishes it up too.~
    IF ~!PartyHasItem("misc45")~ GOTO ZSIPBloodthirst_PartyDoesNotHaveAllParts
    IF ~PartyHasItem("misc45")~  GOTO ZSIPBloodthirst_PartyHasAllParts
  END

  IF ~~ THEN BEGIN ZSIPBloodthirst_PartyDoesNotHaveAllParts SAY ~Needs shiny rogue stone to make rusty dagger better at stabbing things! But, you don't has it.~
    IF ~~ THEN GOTO ZSIPBloodthirst_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPBloodthirst_PartyHasAllParts SAY ~And you gots a rogue stone! I needs 10,000 gold and I makes it for you, great one. You likes?~
    IF ~PartyGoldLT(10000)~ THEN REPLY #66633 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("ZSIP_BloodthirstForge","GLOBAL",1)
                                    SetGlobal("ForgeStuff", "GLOBAL",1)
                                    TakePartyGold(10000)
                                    DestroyGold(10000)
                                    TakePartyItemNum("ZSIPBLT3", 1)
                                    DestroyItem("ZSIPBLT3")
                                    TakePartyItemNum("misc45", 1)
                                    DestroyItem("misc45")~ REPLY #66706 GOTO 11
    IF ~~ THEN REPLY #66650 GOTO ZSIPBloodthirst_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSIPBloodthirst_MovingRightAlong SAY ~Oh well, if you finds a rogue stone, come back and I makes it for you.~
    COPY_TRANS BOTSMITH 4
  END

  IF WEIGHT #-1 ~Global("ZSIP_BloodthirstForge","GLOBAL",1)~ THEN BEGIN ItemForged SAY #70888
    IF ~~ THEN DO ~SetGlobal("ZSIP_BloodthirstForge","GLOBAL", 0)~ EXIT
  END

END
