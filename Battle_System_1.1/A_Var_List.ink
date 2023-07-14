
//->Battle_Number->

=== Battle_Number === //This is what initiates the battle, within the story flow it should be a stich to which the flow just diverts to. That is done because enemies are predefined through functions which give them the name. There can be as many battles and enemies but this point and its subsequent function should always be changed depending on what battle you are on and what enemy you are fighting.

//These are just for Show and Tell and should be removed once you actually want to use this in a project.

~ Enemy_Name_Number()      //sets the enemy values with a function that is defined per enemy 

->Turn_Player

//Do not change these Variables here. Change them in the Funcs_Enemy.ink file!

VAR Player_Magic_Cooldown = 0
VAR Enemy_Magic_Cooldown = 0
VAR Player_Swiftness_Potion_Duration = 0
VAR Enemy_Swiftness_Potion_Duration = 0

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
LIST Item_Names_List = Healing_Potion, Magic_Cooldown_Elixir, Swiftness_Potion


VAR Player_Magical_Abilities = ()
VAR Enemy_Magical_Abilities = ()
LIST Magical_Abilities_List = Wind


VAR Player_Weapon_Names = ()
VAR Enemy_Weapon_Names = ()
LIST Weapon_Names_List = Stick
