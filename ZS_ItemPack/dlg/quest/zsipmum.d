BEGIN ZSIPMUM

CHAIN IF ~NumTimesTalkedTo(0)~ THEN ZSIPMUM ZS.UndeadAttack
~The living rarely tread here after dark. You are no kin to the others - those who feast on mortal blood - nor do you carry the plague. Why have you come? Do you want to join us in undeath?~ 
END
++ ~I'm searching for the source of a sickness that's stricken the slums. Are you behind it?~ EXTERN ZSIPMUM ZS.UndeadAttack1
++ ~My reasons are of no concern to you. But you have no right to linger here.~ EXTERN ZSIPMUM ZS.UndeadAttack1
++ ~Undeath is no gift. I’ve come to end your corruption.~ EXTERN ZSIPMUM ZS.UndeadAttack1

CHAIN ZSIPMUM ZS.UndeadAttack1
~The sickness is a gift we offer freely. It takes away the pain of living. No more hunger. No more suffering. Only stillness. Only mercy.~
END
++ ~You call this mercy? Speak to the dying in Ilmater's temple and see what comfort they've found.~ EXTERN ZSIPMUM ZS.UndeadAttack2
++ ~I've heard enough. Go back to your graves, or be forced back into them.~ EXTERN ZSIPMUM ZS.UndeadAttack2

CHAIN ZSIPMUM ZS.UndeadAttack2
~We will not be turned from our cause. Death claims all in time.~ 
= ~...Some sooner than others. Strike, my kin, let the dust claim this intruder.~
DO ~Enemy() AddJournalEntry(@3004, QUEST) SetGlobal("ZSIlmaterQuest","GLOBAL",3)~ EXIT
