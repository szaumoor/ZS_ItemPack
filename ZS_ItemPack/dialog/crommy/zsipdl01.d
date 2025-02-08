EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("ZSIPDGAA")~ THEN GOTO ZSIPDGAA_BloodthirstPlusFour
END

APPEND WSMITH01
IF ~~ THEN BEGIN ZSIPDGAA_BloodthirstPlusFour SAY ~Aye, that'd be a mighty dangerous little blade. I can make it into an even more powerful dagger for ye.~
 IF ~~ THEN REPLY ~What's would that take?~ GOTO ZSIPDGAA_HowMuch
 IF ~~ THEN REPLY ~No, I'm not interested. Is there anything else you can use?~ GOTO ZSIPDGAA_MovingRightAlong
END

IF ~~ THEN BEGIN ZSIPDGAA_HowMuch SAY ~It'll cost ye 10,000 gold and without me apprentice, you'll need to stay on a day and help me run the forge.~
 IF ~PartyGoldGT(10000)~ THEN DO ~SetGlobal("ZSIPItems","GLOBAL",1)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(10000)
                                 DestroyGold(10000)~ REPLY ~Yes, let's do it.~ GOTO 56
 IF ~~ THEN REPLY ~No, I'm not interested. Is there anything else you can use?~ GOTO ZSIPDGAA_MovingRightAlong
END


IF ~~ THEN BEGIN ZSIPDGAA_MovingRightAlong SAY ~Well, let's see what ye've got then.~
     COPY_TRANS WSMITH01 13
     END
END


IF WEIGHT #-1 ~OR(2) GlobalGT("XO#Craft","ar0334",0) GlobalGT("XO#ItemUp","ar0334",0)~ THEN BEGIN XO#CRAFT SAY #59797
     IF ~~ THEN DO ~SetGlobal("XO#Craft","ar0334",0) SetGlobal("XO#ItemUp","ar0334",0)~ EXIT
END
