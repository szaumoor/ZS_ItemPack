BEGIN ZSIPAKAC

/* greeting */
CHAIN IF ~NumTimesTalkedTo(0)~ THEN ZSIPAKAC ZS.UndeadPlague
@30010 /* Ilmater's mercy upon you. */
END
++ @30011 /* I'm a friend of Bernard. He mentioned you might need help. */ EXTERN ZSIPAKAC ZS.Quest1

CHAIN ZSIPAKAC ZS.Quest1
@30012 /* You would act as one of the Maimed God's crusaders? The Temple has been sorely tested of late. */
= @30013 /* The sick have doubled in number this past tenday. Fevered bodies, sunken skin, and always the same racking cough. We offer what aid we can, but the infection spreads faster than prayer or healing can keep pace. We must track down and curb its source. */
END
++ @30014 /* Do you know what's causing this sickness? */ EXTERN ZSIPAKAC ZS.Quest2
++ @30015 /* I don't want to risk catching it myself. I'm afraid I must decline your request. */ EXTERN ZSIPAKAC ZS.QuestDeclined

CHAIN ZSIPAKAC ZS.Quest2
@30016 /* I've no certainty. Some among our flock suspect a divine curse. Others poisoned water. But I believe the infection spreads from the Graveyard District. Many of the afflicted visited kin interred there, yet my daytime visit offered no answers. */
END
++ @30017 /* I'll see what I can find. If there's something foul afoot, then I will uncover it. */ EXTERN ZSIPAKAC ZS.Quest3
++ @30018 /* I'll take up this task but don't expect charity. I want to be well rewarded for my efforts. */ EXTERN ZSIPAKAC ZS.Quest3
++ @30019 /* Now that I've heard the particulars of your task, I've little interest in accepting it. */ EXTERN ZSIPAKAC ZS.QuestDeclined

CHAIN ZSIPAKAC ZS.Quest3
@30020 /* I find, in these matters, it's best to be prepared. The graveyard holds many dangers. Take this dagger with Ilmater's blessing. I will pray for your success. */ DO ~AddJournalEntry(@30002, QUEST) SetGlobal("ZSIlmaterQuest","GLOBAL",2) GiveItemCreate("ZSIPBCQT",Player1,1,0,0)~ EXIT

CHAIN ZSIPAKAC ZS.QuestDeclined
@30021 /* Then may Ilmater grant you the strength to carry your burdens. */
DO ~AddJournalEntry(@30003, QUEST_DONE)~ EXIT

/* returns with dagger */
CHAIN IF ~Global("ZSLacksDaggerUpgrade","GLOBAL",1) HasItem("ZSIPBCQT",Myself)~ THEN ZSIPAKAC ZS.DaggerBlessing
@30029 /* I sense the dagger upon your person. Allow me to upgrade it further. */
DO ~AddJournalEntry(@30005, QUEST_DONE) TakePartyItemNum("ZSIPBCQT",1) GiveItemCreate("ZSIPBCL0",Player1,1,0,0) AddexperienceParty(9000)~
= @30026 /* May the Maimed God's grace shelter you. */
DO ~EscapeAreaNoSee()~ EXIT

/* upon return, has dagger */
CHAIN IF ~Global("ZSIlmaterQuest","GLOBAL",3) PartyHasItem("ZSIPBCQT")~ THEN ZSIPAKAC ZS.SourceUncovered
@30022 /* Ilmater's mercy upon you. Have you uncovered the cause of this affliction? */
END
++ @30023 /* The dead rose from their tombs by night, spreading the plague across the Graveyard District. I've dealt with the one who lead them. */ EXTERN ZSIPAKAC ZS.SourceUncovered1

CHAIN ZSIPAKAC ZS.SourceUncovered1
@30024 /* You have brought peace to the deceased, and spared the living from further suffering. */
= @30025 /* Your service will not be forgotten. Allow me to further empower the dagger I gave you. */
DO ~AddJournalEntry(@30005, QUEST_DONE) TakePartyItemNum("ZSIPBCQT",1) GiveItemCreate("ZSIPBCL0",Player1,1,0,0) AddexperienceParty(9000)~
= @30026 /* May the Maimed God's grace shelter you. */
DO ~EscapeAreaNoSee()~ EXIT

/* upon return, no dagger */
CHAIN IF ~Global("ZSIlmaterQuest","GLOBAL",3) !PartyHasItem("ZSIPBCQT") !Global("ZSLacksDaggerUpgrade","GLOBAL",1)~ THEN ZSIPAKAC ZS.SourceUncovered2
@30022 /* Ilmater's mercy upon you. Have you uncovered the cause of this affliction? */
END
++ @30023 /* The dead rose from their tombs by night, spreading the plague across the Graveyard District. I've dealt with the one who lead them. */ EXTERN ZSIPAKAC ZS.SourceUncovered3

CHAIN ZSIPAKAC ZS.SourceUncovered3
@30024 /* You have brought peace to the deceased, and spared the living from further suffering. */
= @30028 /* I see you do not carry the dagger I gifted you upon your person. A pity. If you were to find it, Ilmater bids that I empower it further. */
DO ~SetGlobal("ZSLacksDaggerUpgrade","GLOBAL",1)~ EXIT

/* second chance at accepting quest */
CHAIN IF ~!GlobalGT("ZSIlmaterQuest","GLOBAL",1)~ THEN ZSIPAKAC ZS.NoticeBoard
@30027 /* Have you reconsidered my request? */
END
++ @30017 /* I'll see what I can find. If there's something foul afoot, then I will uncover it. */ EXTERN ZSIPAKAC ZS.Quest3
++ @30018 /* I'll take up this task but don't expect charity. I want to be well rewarded for my efforts. */ EXTERN ZSIPAKAC ZS.Quest3
++ @30019 /* Now that I've heard the particulars of your task, I've little interest in accepting it. */ EXTERN ZSIPAKAC ZS.QuestDeclined


