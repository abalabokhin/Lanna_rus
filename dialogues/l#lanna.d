 BEGIN L#LANNA

//JOINING

CHAIN IF ~Global("L#LannaJoined","GLOBAL",0) NumTimesTalkedTo(0)~ THEN L#LANNA JOIN.00
@0
==L#LANNA @1
END
IF~~THEN REPLY @2 EXTERN L#LANNA JOIN.01
IF~~THEN REPLY @3 EXTERN L#LANNA JOIN.02

CHAIN L#LANNA JOIN.01
@4
==L#LANNA IF ~Race(Player1,ELF)~ THEN @5
==L#LANNA IF ~!Race(Player1,ELF)~ THEN @6
==L#LANNA @7
==L#LANNA @8
END
IF~~THEN REPLY @9 EXTERN L#LANNA JOIN.03
IF~~THEN REPLY @10 EXIT

CHAIN L#LANNA JOIN.02
@11
==L#LANNA @12
==L#LANNA IF ~Race(Player1,ELF)~ THEN @13
==L#LANNA IF ~!Race(Player1,ELF)~ THEN @14
==L#LANNA @15
END
IF~~THEN REPLY @16 EXTERN L#LANNA JOIN.03
IF~~THEN REPLY @17 EXIT

CHAIN L#LANNA JOIN.03
@18
==L#LANNA @19
==L#LANNA @20
==L#LANNA @21
==L#LANNA @22
END
IF~~THEN REPLY @23 EXTERN L#LANNA JOIN.04
IF~~THEN REPLY @24 EXTERN L#LANNA JOIN.05
IF~~THEN REPLY @25 EXIT

CHAIN L#LANNA JOIN.04
@26
END
IF~~THEN REPLY @27 EXTERN L#LANNA JOIN.06
IF~~THEN REPLY @28 EXIT

CHAIN L#LANNA JOIN.05
@29
END
IF~~THEN REPLY @30 EXTERN L#LANNA JOIN.06
IF~~THEN REPLY @31 EXIT

CHAIN L#LANNA JOIN.06
@32
==L#LANNA @33
DO ~SetGlobal("L#LannaJoined","GLOBAL",1) JoinParty()~ EXIT

CHAIN IF ~Global("L#LannaJoined","GLOBAL",0) NumTimesTalkedToGT(0)~ THEN L#LANNA JOIN.0R
@34
END
IF~~THEN REPLY @35 EXTERN L#LANNA JOIN.03
IF~~THEN REPLY @36 EXIT

BEGIN L#LANNAP

CHAIN IF ~Global("L#LannaJoined","GLOBAL",1)~ THEN L#LANNAP LEAVE.00
@37
END
IF~~THEN REPLY @38 DO ~SetGlobal("L#LannaJoined","GLOBAL",0)~ EXIT
IF~~THEN REPLY @39 DO ~JoinParty()~ EXIT

CHAIN IF ~Global("L#LannaJoined","GLOBAL",0)~ THEN L#LANNAP REJOIN.00
@40
END
IF~~THEN REPLY @41 DO ~SetGlobal("L#LannaJoined","GLOBAL",1) JoinParty()~ EXIT
IF~~THEN REPLY @42 EXIT


