EXTEND_BOTTOM BERNARD 31
+ ~Global("TalkedToSethle","GLOBAL",1) Global("ZSIlmaterQuest","GLOBAL",0)~ + @30030 /* Is there anywhere one can listen to harpsong here? */ DO ~SetGlobal("ZSIlmaterQuest","GLOBAL",1)~ + ZS.Harpsong
END

CHAIN BERNARD ZS.Harpsong
@30031 /* I wouldn't know, <PRO_SIRMAAM>. But friends might seek out a priest, Akachi, in the temple above. They say he hears more than prayers. */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @30032 /* A delicate touch that. Shall I stomp about like an ogre while you're at it? */
END
IF ~~ DO ~AddJournalEntry(@30001, QUEST)~ EXIT
