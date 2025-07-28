BEGIN ZSIPAKAC

/* greeting */ 
CHAIN IF ~NumTimesTalkedTo(0)~ THEN ZSIPAKAC ZS.UndeadPlague
@0 /* Ilmater's mercy upon you. */
END
++ @1 /* I'm a friend of Bernard. He mentioned you might need help. */ EXTERN ZSIPAKAC ZS.Quest1

CHAIN ZSIPAKAC ZS.Quest1
@2 /* You would act as one of the Maimed God's crusaders? The Temple has been sorely tested of late. */
= @3 /* The sick have doubled in number this past tenday. Fevered bodies, sunken skin, and always the same racking cough. We offer what aid we can, but the infection spreads faster than prayer or healing can keep pace. We must track down and curb its source. */
END
++ @4 /* Do you know what's causing this sickness? */ EXTERN ZSIPAKAC ZS.Quest2
++ @5 /* I don't want to risk catching it myself. I'm afraid I must decline your request. */ EXTERN ZSIPAKAC ZS.QuestDeclined

CHAIN ZSIPAKAC ZS.Quest2
@6 /* I've no certainty. Some among our flock suspect a divine curse. Others poisoned water. But I believe the infection spreads from the Graveyard District. Many of the afflicted visited kin interred there, yet my daytime visit offered no answers. */
END
++ @7 /* I'll see what I can find. If there's something foul afoot, then I will uncover it. */ EXTERN ZSIPAKAC ZS.Quest3
++ @8 /* I'll take up this task but don't expect charity. I want to be well rewarded for my efforts. */ EXTERN ZSIPAKAC ZS.Quest3
++ @9 /* Now that I've heard the particulars of your task, I've little interest in accepting it. */ EXTERN ZSIPAKAC ZS.QuestDeclined

CHAIN ZSIPAKAC ZS.Quest3 
@10 /* I find, in these matters, it's best to be prepared. The graveyard holds many dangers. Take this dagger with Ilmater's blessing. I will pray for your success. */ DO ~AddJournalEntry(@3002, QUEST) SetGlobal("ZSIlmaterQuest","GLOBAL",2) GiveItemCreate("ZSIPBCLQ",Player1,1,0,0)~ EXIT

CHAIN ZSIPAKAC ZS.QuestDeclined
@11 /* Then may Ilmater grant you the strength to carry your burdens. */
DO ~AddJournalEntry(@3003, QUEST_DONE) DestroySelf()~ EXIT

/* upon return */ 
CHAIN IF ~Global("ZSIlmaterQuest","GLOBAL",3)~ THEN ZSIPAKAC ZS.SourceUncovered
@12 /* Ilmater's mercy upon you. Have you uncovered the cause of this affliction? */
END
++ @13 /* The dead rose from their tombs by night, spreading the plague across the Graveyard District. I've dealt with the one who lead them. */ EXTERN ZSIPAKAC ZS.SourceUncovered1

CHAIN ZSIPAKAC ZS.SourceUncovered1
@14 /* You have brought peace to the deceased, and spared the living from further suffering. */
= @15 /* Your service will not be forgotten. Allow me to further empower the dagger I gave you. */
= @16 /* May the Maimed God's grace shelter you. */
DO ~AddJournalEntry(@3005, QUEST_DONE) TakeItemListParty("ZSIPBCLQ") GiveItemCreate("ZSIPBCL0",Player1,1,0,0) DestroySelf()~ EXIT
