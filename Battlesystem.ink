~add(Healing_Potion)
~add(Healing_Potion)

->Battle->

=== function Healthbar(ref x, y, z)

/*

Requires the use of the emote files!

x   the percent variable
y   current health
z   maximum health

To use just drop the following into the story flow

~ Healthbar(VAR_Health_Percent, VAR_Health, VAR_Health_Max)

*/

~ percent_calc(x, y, z)

// DEBUG Health_Percent {x} / Health {y} / Health_Max {z}

{
    -x <= 0:
        
        {EMOTE_WHITE_SQUARE_BUTTON}{EMOTE_WHITE_SQUARE_BUTTON}{EMOTE_WHITE_SQUARE_BUTTON}{EMOTE_WHITE_SQUARE_BUTTON}{EMOTE_WHITE_SQUARE_BUTTON}{EMOTE_WHITE_SQUARE_BUTTON}{EMOTE_WHITE_SQUARE_BUTTON}{EMOTE_WHITE_SQUARE_BUTTON}{EMOTE_WHITE_SQUARE_BUTTON}{EMOTE_WHITE_SQUARE_BUTTON}
    -else:
        {
            -x <= 10:
                
                {EMOTE_GREEN_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}
            -else:
                {
                    -x <= 20:
                        
                        {EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}
                    -else:
                        {
                            -x <= 30:
                                
                                {EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}
                            -else:
                                {
                                    -x <= 40:
                                    
                                        {EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}
                                    -else:
                                        {
                                            -x <= 50:
                                            
                                                {EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}
                                            -else:
                                                {
                                                    -x <= 60:

                                                        {EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}
                                                    -else:
                                                        {
                                                            -x <= 70:
                                                                    
                                                                {EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}
                                                            -else:
                                                                {
                                                                    -x <= 80:

                                                                        {EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_RED_SQUARE}{EMOTE_RED_SQUARE}
                                                                    -else:
                                                                        {
                                                                            -x <= 90:

                                                                                {EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_RED_SQUARE}
                                                                            -else:
                                                                                {
                                                                                    -x <= 100:
                                                                                                        
                                                                                        {EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}
                                                                                    -else:
                                                                                        {
                                                                                                -x >= 101:
                                                                                                    {EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GREEN_SQUARE}{EMOTE_GLOWING_STAR}
                                                                                                -else:
                                                                                                    ~Error_function()
                                                                                        }
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
}
<>
{
    -y < 0:
        0
    -else:
       {y} 
}
<>
/{z}

=== function Attack(ref EH, PS, ED, AB)

~ EH = EH - (PS + AB - ED)

/*

EH - Enemy Health       Variable
PS - Player Strength    Variable
AB - Attack Bonus       Type Value in function when used
ED - Enemy Defense      Variable

*/

=== function Enemy_Name_Number()

//DO NOT CHANGE THESE VALUES
//They clear out the following values so that there are no accidental items etc remaining after a previous battle

~ Enemy_Item_Names += ()
~ Enemy_Magical_Abilities += ()
~ Enemy_Weapon_Names += ()

//Change these values to set your Enemy

~ Enemy_Health = 10
~ Enemy_Health_Max = 10

~ Enemy_Strength = 0
~ Enemy_Defense = 0

~ Enemy_Item_Names += ()
~ Enemy_Magical_Abilities += ()
~ Enemy_Weapon_Names += ()

//If these values remain with empty

=== Battle === //This is what initiates the battle, within the story flow it should be a stich to which the flow just diverts to. That is done because enemies are predefined through functions which give them the name. There can be as many battles and enemies but this point and its subsequent function should always be changed depending on what battle you are on and what enemy you are fighting.

~ Enemy_Name_Number()      //sets the enemy values with a function that is defined per enemy 

->battle_player

= battle_player

~ Healthbar(Player_Health_Percent, Player_Health, Player_Health_Max)

~ Healthbar(Enemy_Health_Percent, Enemy_Health, Enemy_Health_Max)

+ [Attack]
    
    What would you like to use?
    
    ++ [Fists]
        {
            -Player_Strength > Enemy_Defense:
                ~ Attack(Enemy_Health, Player_Strength, Enemy_Defense, 0)//0 = no bonus attack
            -else:
                You have been blocked!
        }

    ++ {Player_Weapon_Names ? Stick} [Stick]

        {
            -Player_Strength > Enemy_Defense:
                ~ Attack(Enemy_Health, Player_Strength, Enemy_Defense, 3)//3 = plus 3 bonus attack
            -else:
                You have been blocked!
        }

    ++ [Go Back]
        ->battle_player

+ {Player_Magic_Cooldown == 0} [Magic] 

/*
Magical Abilities need to be declared here with the powers and strengths

Magic_Cooldown CAN NEVER BE 0 and ALWAYS NEEDS to be 1 higher than what you want the turn timer to be
    IE.: Magic shall be blocked for three turns - use set_4
*/

    What would you like to use?
    
    {Player_Magical_Abilities == (): No Magic} 

    ++ {Player_Magical_Abilities ? Wind} [Wind]
        ~ set_2(Player_Magic_Cooldown)
        ~ lower_5(Enemy_Health)
        
    ++ [Go Back]
        ->battle_player
        
+ {Player_Magic_Cooldown > 0} [Magic]

    Magic is on cooldown! Wait {Player_Magic_Cooldown} turns.

+ [Item]

    What would you like to use?

    {Player_Item_Names == (): No Items}

    ++ {Player_Item_Names ? Healing_Potion} [Healing Potion]
        ~ Player_Item_Names -= Healing_Potion
        You used a Potion! You have gained 30Hp!
        ~ raise_30(Player_Health)
    
    ++ {Player_Item_Names ? Magic_Cooldown_Elixir} [Magic Cooldown Elixir]
        ~ Player_Item_Names -= Magic_Cooldown_Elixir
        You used a Magic Cooldown Elixir! Your Magic Cooldown has been reduced to {Player_Magic_Cooldown}.
        ~ set_0(Player_Magic_Cooldown)
        
    ++ [Go Back]
        ->battle_player
    




-

{Player_Magic_Cooldown > 0: 
    ~lower_1(Player_Magic_Cooldown)
}

{
    -Enemy_Health <= 0:
        
        ~ Healthbar(Player_Health_Percent, Player_Health, Player_Health_Max)

        ~ Healthbar(Enemy_Health_Percent, Enemy_Health, Enemy_Health_Max)
        
        ~ Player_Health = Player_Health_Max
        ~ set_0(Player_Magic_Cooldown)
        -> Victory
        
    -Player_Health <= 0:
        
        ~ Healthbar(Player_Health_Percent, Player_Health, Player_Health_Max)

        ~ Healthbar(Enemy_Health_Percent, Enemy_Health, Enemy_Health_Max)
        
        ~ set_0(Player_Magic_Cooldown)
        ~ Player_Health = Player_Health_Max
        -> Game_Over
        
    -else:
        ->battle_player
}

= Victory

Victory

->->

= Game_Over

Game_Over

->->

VAR Player_Magic_Cooldown = 0
VAR Enemy_Magic_Cooldown = 0


VAR Player_Health = 10
VAR Player_Health_Max = 20
VAR Player_Health_Percent = 0
VAR Player_Strength = 10
VAR Player_Defense = 0



VAR Enemy_Health = 10
VAR Enemy_Health_Max = 20
VAR Enemy_Health_Percent = 0
VAR Enemy_Strength = 0
VAR Enemy_Defense = 0



VAR Player_Item_Names = ()
VAR Enemy_Item_Names = ()
LIST Item_Names_List = Healing_Potion, Magic_Cooldown_Elixir



VAR Player_Magical_Abilities = ()
VAR Enemy_Magical_Abilities = ()
LIST Magical_Abilities_List = Wind



VAR Player_Weapon_Names = ()
VAR Enemy_Weapon_Names = ()
LIST Weapon_Names_List = Stick

VAR HealingPotionCount = 0
VAR MagicElixirCount = 0

CONST  EMOTE_VS_BUTTON    =                   "🆚"
CONST  EMOTE_RED_SQUARE     =                 "🟥"
CONST  EMOTE_GREEN_SQUARE   =                 "🟩"
CONST  EMOTE_BLACK_LARGE_SQUARE   =           "⬛"
CONST  EMOTE_GLOWING_STAR   =                 "🌟"
CONST  EMOTE_BLACK_SQUARE_BUTTON  =  "🔲"
CONST  EMOTE_WHITE_SQUARE_BUTTON  =  "🔳"

=== function Error_function()

Error

=== function add(ref x)
{x:
    - Healing_Potion: 
        ~HealingPotionCount ++
    - Magic_Cooldown_Elixir:
        ~MagicElixirCount++
}
You add 1 {x} to your bag

===function howMany(ref x)
{x:
  - Healing_Potion: 
    ~return HealingPotionCount
 - Magic_Cooldown_Elixir:
    ~return MagicElixirCount
}

=== function consume(ref x)
{howMany(x) <= 0:
  - You do not have enough {x}
     ~ return
}
{x:
  - Healing_Potion: 
    ~HealingPotionCount--
 - Magic_Cooldown_Elixir:
    ~MagicElixirCount--
}
You consume 1 {x} from your bag



//////// General Functions \\\\\\\\

// Operation Functions \\

=== function percent_calc(ref x, y, z)
~ x = FLOAT(y) / z * 100

=== function minus_calc(x, y, z)
~ x = y - z

// Set Functions \\

===function set_0(ref x)
~ x = 0
===function set_1(ref x)
~ x = 1
===function set_2(ref x)
~ x = 2
===function set_3(ref x)
~ x = 3
===function set_4(ref x)
~ x = 4
===function set_5(ref x)
~ x = 5
===function set_6(ref x)
~ x = 6
===function set_7(ref x)
~ x = 7
===function set_8(ref x)
~ x = 8
===function set_9(ref x)
~ x = 9
===function set_10(ref x)
~ x = 10
===function set_11(ref x)
~ x = 11
===function set_12(ref x)
~ x = 12
===function set_13(ref x)
~ x = 13
===function set_14(ref x)
~ x = 14
===function set_15(ref x)
~ x = 15
===function set_16(ref x)
~ x = 16
===function set_17(ref x)
~ x = 17
===function set_18(ref x)
~ x = 18
===function set_19(ref x)
~ x = 19
===function set_20(ref x)
~ x = 20
===function set_21(ref x)
~ x = 21
===function set_22(ref x)
~ x = 22
===function set_23(ref x)
~ x = 23
===function set_24(ref x)
~ x = 24
===function set_25(ref x)
~ x = 25
===function set_26(ref x)
~ x = 26
===function set_27(ref x)
~ x = 27
===function set_28(ref x)
~ x = 28
===function set_29(ref x)
~ x = 29
===function set_30(ref x)
~ x = 30
===function set_31(ref x)
~ x = 31
===function set_32(ref x)
~ x = 32
===function set_33(ref x)
~ x = 33
===function set_34(ref x)
~ x = 34
===function set_35(ref x)
~ x = 35
===function set_36(ref x)
~ x = 36
===function set_37(ref x)
~ x = 37
===function set_38(ref x)
~ x = 38
===function set_39(ref x)
~ x = 39
===function set_40(ref x)
~ x = 40
===function set_41(ref x)
~ x = 41
===function set_42(ref x)
~ x = 42
===function set_43(ref x)
~ x = 43
===function set_44(ref x)
~ x = 44
===function set_45(ref x)
~ x = 45
===function set_46(ref x)
~ x = 46
===function set_47(ref x)
~ x = 47
===function set_48(ref x)
~ x = 48
===function set_49(ref x)
~ x = 49
===function set_50(ref x)
~ x = 50
===function set_51(ref x)
~ x = 51
===function set_52(ref x)
~ x = 52
===function set_53(ref x)
~ x = 53
===function set_54(ref x)
~ x = 54
===function set_55(ref x)
~ x = 55
===function set_56(ref x)
~ x = 56
===function set_57(ref x)
~ x = 57
===function set_58(ref x)
~ x = 58
===function set_59(ref x)
~ x = 59
===function set_60(ref x)
~ x = 60
===function set_61(ref x)
~ x = 61
===function set_62(ref x)
~ x = 62
===function set_63(ref x)
~ x = 63
===function set_64(ref x)
~ x = 64
===function set_65(ref x)
~ x = 65
===function set_66(ref x)
~ x = 66
===function set_67(ref x)
~ x = 67
===function set_68(ref x)
~ x = 68
===function set_69(ref x)
~ x = 69
===function set_70(ref x)
~ x = 70
===function set_71(ref x)
~ x = 71
===function set_72(ref x)
~ x = 72
===function set_73(ref x)
~ x = 73
===function set_74(ref x)
~ x = 74
===function set_75(ref x)
~ x = 75
===function set_76(ref x)
~ x = 76
===function set_77(ref x)
~ x = 77
===function set_78(ref x)
~ x = 78
===function set_79(ref x)
~ x = 79
===function set_80(ref x)
~ x = 80
===function set_81(ref x)
~ x = 81
===function set_82(ref x)
~ x = 82
===function set_83(ref x)
~ x = 83
===function set_84(ref x)
~ x = 84
===function set_85(ref x)
~ x = 85
===function set_86(ref x)
~ x = 86
===function set_87(ref x)
~ x = 87
===function set_88(ref x)
~ x = 88
===function set_89(ref x)
~ x = 89
===function set_90(ref x)
~ x = 90
===function set_91(ref x)
~ x = 91
===function set_92(ref x)
~ x = 92
===function set_93(ref x)
~ x = 93
===function set_94(ref x)
~ x = 94
===function set_95(ref x)
~ x = 95
===function set_96(ref x)
~ x = 96
===function set_97(ref x)
~ x = 97
===function set_98(ref x)
~ x = 98
===function set_99(ref x)
~ x = 99
===function set_100(ref x)
~ x = 100


// Raise Functions \\

===function raise_1(ref x)
~ x = x + 1
===function raise_2(ref x)
~ x = x + 2
===function raise_3(ref x)
~ x = x + 3
===function raise_4(ref x)
~ x = x + 4
===function raise_5(ref x)
~ x = x + 5
===function raise_6(ref x)
~ x = x + 6
===function raise_7(ref x)
~ x = x + 7
===function raise_8(ref x)
~ x = x + 8
===function raise_9(ref x)
~ x = x + 9
===function raise_10(ref x)
~ x = x + 10
===function raise_11(ref x)
~ x = x + 11
===function raise_12(ref x)
~ x = x + 12
===function raise_13(ref x)
~ x = x + 13
===function raise_14(ref x)
~ x = x + 14
===function raise_15(ref x)
~ x = x + 15
===function raise_16(ref x)
~ x = x + 16
===function raise_17(ref x)
~ x = x + 17
===function raise_18(ref x)
~ x = x + 18
===function raise_19(ref x)
~ x = x + 19
===function raise_20(ref x)
~ x = x + 20
===function raise_21(ref x)
~ x = x + 21
===function raise_22(ref x)
~ x = x + 22
===function raise_23(ref x)
~ x = x + 23
===function raise_24(ref x)
~ x = x + 24
===function raise_25(ref x)
~ x = x + 25
===function raise_26(ref x)
~ x = x + 26
===function raise_27(ref x)
~ x = x + 27
===function raise_28(ref x)
~ x = x + 28
===function raise_29(ref x)
~ x = x + 29
===function raise_30(ref x)
~ x = x + 30
===function raise_31(ref x)
~ x = x + 31
===function raise_32(ref x)
~ x = x + 32
===function raise_33(ref x)
~ x = x + 33
===function raise_34(ref x)
~ x = x + 34
===function raise_35(ref x)
~ x = x + 35
===function raise_36(ref x)
~ x = x + 36
===function raise_37(ref x)
~ x = x + 37
===function raise_38(ref x)
~ x = x + 38
===function raise_39(ref x)
~ x = x + 39
===function raise_40(ref x)
~ x = x + 40
===function raise_41(ref x)
~ x = x + 41
===function raise_42(ref x)
~ x = x + 42
===function raise_43(ref x)
~ x = x + 43
===function raise_44(ref x)
~ x = x + 44
===function raise_45(ref x)
~ x = x + 45
===function raise_46(ref x)
~ x = x + 46
===function raise_47(ref x)
~ x = x + 47
===function raise_48(ref x)
~ x = x + 48
===function raise_49(ref x)
~ x = x + 49
===function raise_50(ref x)
~ x = x + 50
===function raise_51(ref x)
~ x = x + 51
===function raise_52(ref x)
~ x = x + 52
===function raise_53(ref x)
~ x = x + 53
===function raise_54(ref x)
~ x = x + 54
===function raise_55(ref x)
~ x = x + 55
===function raise_56(ref x)
~ x = x + 56
===function raise_57(ref x)
~ x = x + 57
===function raise_58(ref x)
~ x = x + 58
===function raise_59(ref x)
~ x = x + 59
===function raise_60(ref x)
~ x = x + 60
===function raise_61(ref x)
~ x = x + 61
===function raise_62(ref x)
~ x = x + 62
===function raise_63(ref x)
~ x = x + 63
===function raise_64(ref x)
~ x = x + 64
===function raise_65(ref x)
~ x = x + 65
===function raise_66(ref x)
~ x = x + 66
===function raise_67(ref x)
~ x = x + 67
===function raise_68(ref x)
~ x = x + 68
===function raise_69(ref x)
~ x = x + 69
===function raise_70(ref x)
~ x = x + 70
===function raise_71(ref x)
~ x = x + 71
===function raise_72(ref x)
~ x = x + 72
===function raise_73(ref x)
~ x = x + 73
===function raise_74(ref x)
~ x = x + 74
===function raise_75(ref x)
~ x = x + 75
===function raise_76(ref x)
~ x = x + 76
===function raise_77(ref x)
~ x = x + 77
===function raise_78(ref x)
~ x = x + 78
===function raise_79(ref x)
~ x = x + 79
===function raise_80(ref x)
~ x = x + 80
===function raise_81(ref x)
~ x = x + 81
===function raise_82(ref x)
~ x = x + 82
===function raise_83(ref x)
~ x = x + 83
===function raise_84(ref x)
~ x = x + 84
===function raise_85(ref x)
~ x = x + 85
===function raise_86(ref x)
~ x = x + 86
===function raise_87(ref x)
~ x = x + 87
===function raise_88(ref x)
~ x = x + 88
===function raise_89(ref x)
~ x = x + 89
===function raise_90(ref x)
~ x = x + 90
===function raise_91(ref x)
~ x = x + 91
===function raise_92(ref x)
~ x = x + 92
===function raise_93(ref x)
~ x = x + 93
===function raise_94(ref x)
~ x = x + 94
===function raise_95(ref x)
~ x = x + 95
===function raise_96(ref x)
~ x = x + 96
===function raise_97(ref x)
~ x = x + 97
===function raise_98(ref x)
~ x = x + 98
===function raise_99(ref x)
~ x = x + 99
===function raise_100(ref x)
~ x = x + 100


// Lower Functions \\

===function lower_1(ref x)
~ x = x - 1
===function lower_2(ref x)
~ x = x - 2
===function lower_3(ref x)
~ x = x - 3
===function lower_4(ref x)
~ x = x - 4
===function lower_5(ref x)
~ x = x - 5
===function lower_6(ref x)
~ x = x - 6
===function lower_7(ref x)
~ x = x - 7
===function lower_8(ref x)
~ x = x - 8
===function lower_9(ref x)
~ x = x - 9
===function lower_10(ref x)
~ x = x - 10
===function lower_11(ref x)
~ x = x - 11
===function lower_12(ref x)
~ x = x - 12
===function lower_13(ref x)
~ x = x - 13
===function lower_14(ref x)
~ x = x - 14
===function lower_15(ref x)
~ x = x - 15
===function lower_16(ref x)
~ x = x - 16
===function lower_17(ref x)
~ x = x - 17
===function lower_18(ref x)
~ x = x - 18
===function lower_19(ref x)
~ x = x - 19
===function lower_20(ref x)
~ x = x - 20
===function lower_21(ref x)
~ x = x - 21
===function lower_22(ref x)
~ x = x - 22
===function lower_23(ref x)
~ x = x - 23
===function lower_24(ref x)
~ x = x - 24
===function lower_25(ref x)
~ x = x - 25
===function lower_26(ref x)
~ x = x - 26
===function lower_27(ref x)
~ x = x - 27
===function lower_28(ref x)
~ x = x - 28
===function lower_29(ref x)
~ x = x - 29
===function lower_30(ref x)
~ x = x - 30
===function lower_31(ref x)
~ x = x - 31
===function lower_32(ref x)
~ x = x - 32
===function lower_33(ref x)
~ x = x - 33
===function lower_34(ref x)
~ x = x - 34
===function lower_35(ref x)
~ x = x - 35
===function lower_36(ref x)
~ x = x - 36
===function lower_37(ref x)
~ x = x - 37
===function lower_38(ref x)
~ x = x - 38
===function lower_39(ref x)
~ x = x - 39
===function lower_40(ref x)
~ x = x - 40
===function lower_41(ref x)
~ x = x - 41
===function lower_42(ref x)
~ x = x - 42
===function lower_43(ref x)
~ x = x - 43
===function lower_44(ref x)
~ x = x - 44
===function lower_45(ref x)
~ x = x - 45
===function lower_46(ref x)
~ x = x - 46
===function lower_47(ref x)
~ x = x - 47
===function lower_48(ref x)
~ x = x - 48
===function lower_49(ref x)
~ x = x - 49
===function lower_50(ref x)
~ x = x - 50
===function lower_51(ref x)
~ x = x - 51
===function lower_52(ref x)
~ x = x - 52
===function lower_53(ref x)
~ x = x - 53
===function lower_54(ref x)
~ x = x - 54
===function lower_55(ref x)
~ x = x - 55
===function lower_56(ref x)
~ x = x - 56
===function lower_57(ref x)
~ x = x - 57
===function lower_58(ref x)
~ x = x - 58
===function lower_59(ref x)
~ x = x - 59
===function lower_60(ref x)
~ x = x - 60
===function lower_61(ref x)
~ x = x - 61
===function lower_62(ref x)
~ x = x - 62
===function lower_63(ref x)
~ x = x - 63
===function lower_64(ref x)
~ x = x - 64
===function lower_65(ref x)
~ x = x - 65
===function lower_66(ref x)
~ x = x - 66
===function lower_67(ref x)
~ x = x - 67
===function lower_68(ref x)
~ x = x - 68
===function lower_69(ref x)
~ x = x - 69
===function lower_70(ref x)
~ x = x - 70
===function lower_71(ref x)
~ x = x - 71
===function lower_72(ref x)
~ x = x - 72
===function lower_73(ref x)
~ x = x - 73
===function lower_74(ref x)
~ x = x - 74
===function lower_75(ref x)
~ x = x - 75
===function lower_76(ref x)
~ x = x - 76
===function lower_77(ref x)
~ x = x - 77
===function lower_78(ref x)
~ x = x - 78
===function lower_79(ref x)
~ x = x - 79
===function lower_80(ref x)
~ x = x - 80
===function lower_81(ref x)
~ x = x - 81
===function lower_82(ref x)
~ x = x - 82
===function lower_83(ref x)
~ x = x - 83
===function lower_84(ref x)
~ x = x - 84
===function lower_85(ref x)
~ x = x - 85
===function lower_86(ref x)
~ x = x - 86
===function lower_87(ref x)
~ x = x - 87
===function lower_88(ref x)
~ x = x - 88
===function lower_89(ref x)
~ x = x - 89
===function lower_90(ref x)
~ x = x - 90
===function lower_91(ref x)
~ x = x - 91
===function lower_92(ref x)
~ x = x - 92
===function lower_93(ref x)
~ x = x - 93
===function lower_94(ref x)
~ x = x - 94
===function lower_95(ref x)
~ x = x - 95
===function lower_96(ref x)
~ x = x - 96
===function lower_97(ref x)
~ x = x - 97
===function lower_98(ref x)
~ x = x - 98
===function lower_99(ref x)
~ x = x - 99
===function lower_100(ref x)
~ x = x - 100


// Functions for randomized raises \\

===function raise_randomized_1_2(ref x)
~ x = x + RANDOM(1, 2)

===function raise_randomized_1_3(ref x)
~ x = x + RANDOM(1, 3)

===function raise_randomized_2_4(ref x)
~ x = x + RANDOM(2, 4)

===function raise_randomized_5_15(ref x)
~ x = x + RANDOM(5, 15)

===function raise_randomized_20_50(ref x)
~ x = x + RANDOM(20, 50)

===function raise_randomized_50_100(ref x)
~ x = x + RANDOM(50, 100)

===function raise_randomized_100_500(ref x)
~ x = x + RANDOM(100, 500)

===function raise_randomized_500_1000(ref x)
~ x = x + RANDOM(500, 1000)

===function raise_randomized_1000_2500(ref x)
~ x = x + RANDOM(1000, 2500)

===function raise_randomized_2500_5000(ref x)
~ x = x + RANDOM(2500, 5000)

===function raise_randomized_5000_10000(ref x)
~ x = x + RANDOM(5000, 10000)

//Functions for dicerolls \\

=== function diceroll_1_25(ref x)
        ~ x = RANDOM(1, 25)

=== function diceroll_1_100(ref x)
        ~ x = RANDOM(1, 100)

=== function diceroll_1_90(ref x)
        ~ x = RANDOM(1, 90)
        
=== function diceroll_1_80(ref x)
        ~ x = RANDOM(1, 80)
        
=== function diceroll_1_70(ref x)
        ~ x = RANDOM(1, 70)
        
=== function diceroll_1_60(ref x)
        ~ x = RANDOM(1, 60)
        
=== function diceroll_1_50(ref x)
        ~ x = RANDOM(1, 50)
        
=== function diceroll_1_40(ref x)
        ~ x = RANDOM(1, 40)
        
=== function diceroll_1_30(ref x)
        ~ x = RANDOM(1, 30)
        
=== function diceroll_1_20(ref x)
        ~ x = RANDOM(1, 20)
        
=== function diceroll_1_10(ref x)
        ~ x = RANDOM(1, 10)

=== function diceroll_1_6(ref x)
        ~ x = RANDOM(1, 6)

=== function diceroll_1_3(ref x)
        ~ x = RANDOM(1, 3)
        
=== function diceroll_5_15(ref x)
        ~ x = RANDOM(1, 15)
 
=== function diceroll_1_2(ref x)
        ~ x = RANDOM(1, 2)
        
=== function diceroll_1_4(ref x)
        ~ x = RANDOM(1, 4) 
        
=== function diceroll_10_20(ref x)
        ~ x = RANDOM(10, 20)
 
=== function diceroll_3_6(ref x)
        ~ x = RANDOM(3, 6)
        
=== function diceroll_20_30(ref x)
        ~ x = RANDOM(20, 30)
        
=== function diceroll_5_10(ref x)
        ~ x = RANDOM(5, 10)
        
=== function diceroll_4_8(ref x)
        ~ x = RANDOM(4, 8)
        
=== function diceroll_30_50(ref x)
        ~ x = RANDOM(30, 50)
        
=== function diceroll_8_18(ref x)
        ~ x = RANDOM(8, 18)
        
=== function diceroll_0_2(ref x)
        ~ x = RANDOM(0, 2)

=== function diceroll_50_75(ref x)
        ~ x = RANDOM(50, 75)

=== function diceroll_20_35(ref x)
        ~ x = RANDOM(20, 35)

=== function diceroll_15_30(ref x)
        ~ x = RANDOM(15, 30)

=== function diceroll_75_100(ref x)
        ~ x = RANDOM(75, 100)

=== function diceroll_35_40(ref x)
        ~ x = RANDOM(35, 40)

=== function diceroll_35_50(ref x)
        ~ x = RANDOM(35, 50)

=== function diceroll_30_45(ref x)
        ~ x = RANDOM(30, 45)

=== function diceroll_100_150(ref x)
        ~ x = RANDOM(100, 150)

=== function diceroll_45_65(ref x)
        ~ x = RANDOM(45, 65)

// Functions for the Map Moevement \\

=== function move_left(ref x)
        ~ x = x - 1
        
=== function move_right(ref x)
        ~ x = x + 1
        
=== function move_up(ref x)
        ~ x = x - 5
        
=== function move_down(ref x)
        ~ x = x + 5
        





