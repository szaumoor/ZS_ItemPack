EXTEND_BOTTOM BERNARD 31
+ ~Global("TalkedToSethle","GLOBAL",1) Global("ZSIlmaterQuest","GLOBAL",0)~ + ~Is there anywhere one can listen to harpsong here?~ DO ~SetGlobal("ZSIlmaterQuest","GLOBAL",1)~ + ZS.Harpsong
END

CHAIN BERNARD ZS.Harpsong
~I wouldn't know, <PRO_SIRMAAM>. But friends might seek out a priest, Akachi, in the temple above. They say he hears more than prayers.~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~A delicate touch that. Shall I stomp about like an ogre while you're at it?~
END
IF ~~ DO ~AddJournalEntry(@3001, QUEST)~ EXIT
