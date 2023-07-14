

=== function Enemy_Name_Number()

//This is the Dummy enemy. With this enemy you are always assured a vicotry while testing the features. If you want more enemies just copy this blueprint, change the values and the function name and put the function into your story flow after the battle knot

//DO NOT CHANGE THESE VALUES
//They clear out the following values so that there are no accidental items etc remaining after a previous battle

~ Enemy_Item_Names += ()
~ Enemy_Magical_Abilities += ()
~ Enemy_Weapon_Names += ()

//Change these values to set your Enemy

~ Enemy_Name = "Dummy"

~ Enemy_Health = 10
~ Enemy_Health_Max = 10

~ Enemy_Strength = 0
~ Enemy_Defense = 0

~ Enemy_Item_Names += ()
~ Enemy_Magical_Abilities += ()
~ Enemy_Weapon_Names += (Stick)
