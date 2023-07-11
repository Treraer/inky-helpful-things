INCLUDE D_Healthbar.ink
INCLUDE H_Functions.ink
INCLUDE B_Funcs_Enemies.ink
INCLUDE C_Player_Battle_Menu.ink
INCLUDE E_Enemy_Battle_Menu.ink
INCLUDE G_Battle_End.ink
INCLUDE F_Declare_Stuff.ink

CONST  EMOTE_WHITE_SQUARE_BUTTON  =  "🔳"
CONST  EMOTE_RED_SQUARE     =                 "🟥"
CONST  EMOTE_GREEN_SQUARE   =                 "🟩"
CONST  EMOTE_GLOWING_STAR   =                 "🌟"

->Battle_Number->

===Error===

This is the error page. Something must have gone wrong. Please contact the author of the story.

->END

===function Error_function()
This is the error page. Something must have gone wrong. Please contact the author of the story.


===function set_0(ref x)
~ x = 0
===function set_2(ref x)
~ x = 2
=== function diceroll_1_10(ref x)
        ~ x = RANDOM(1, 10)
===function lower_5(ref x)
~ x = x - 5
===function raise_30(ref x)
~ x = x + 30
===function lower_1(ref x)
~ x = x - 1
=== function percent_calc(ref x, y, z)
~ x = FLOOR(FLOAT(y) / z * 100) 

//because of an apparent bug where for ever two 0 in a number (specifically 100,10000 etc) it causes something to move over in the calculation so you have to FLOOR said calculation to round down again

=== function minus_calc(x, y, z)
~ x = y - z

////
////// Everything above can be moved into dedicated files.
////

=== Battle_Number === //This is what initiates the battle, within the story flow it should be a stich to which the flow just diverts to. That is done because enemies are predefined through functions which give them the name. There can be as many battles and enemies but this point and its subsequent function should always be changed depending on what battle you are on and what enemy you are fighting.

//These are just for Show and Tell and should be removed once you actually want to use this in a project.

~ Player_Health = 15
~ Player_Health_Max = 20
~ Player_Health_Percent = 0
~ Player_Strength = 5
~ Player_Defense = 5
~ Player_Magical_Abilities += Wind
~ Player_Item_Names += Magic_Cooldown_Elixir
~ Player_Item_Names += Healing_Potion

~ Enemy_Name_Number()      //sets the enemy values with a function that is defined per enemy 

->Turn_Player

//Do not change these Variables here. Change them in the Funcs_Enemy.ink file!

VAR Player_Magic_Cooldown = 0
VAR Enemy_Magic_Cooldown = 0

VAR Player_Health = 10
VAR Player_Health_Max = 10
VAR Player_Health_Percent = 0
VAR Player_Strength = 1
VAR Player_Defense = 1

VAR Enemy_Name = 0
VAR Enemy_Health = 10
VAR Enemy_Health_Max = 10
VAR Enemy_Health_Percent = 0
VAR Enemy_Strength = 0
VAR Enemy_Defense = 0

//Change these for when you want more things in your game

VAR Player_Item_Names = ()
VAR Enemy_Item_Names = ()
LIST Item_Names_List = Healing_Potion, Magic_Cooldown_Elixir


VAR Player_Magical_Abilities = ()
VAR Enemy_Magical_Abilities = ()
LIST Magical_Abilities_List = Wind



VAR Player_Weapon_Names = ()
VAR Enemy_Weapon_Names = ()
LIST Weapon_Names_List = Stick

Special Mentions to smwhr, stephen/laz (ve/vim), IFcoltransG and joningold. They helped when I wanted to scream at walls!
