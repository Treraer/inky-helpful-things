=== Turn_Enemy ===

{
-Enemy_Swiftness_Potion_Duration > 0: 
    {Enemy_Name}'s Bonus Turns Left {Enemy_Swiftness_Potion_Duration}
-Enemy_Swiftness_Potion_Duration <= 0:
    {Enemy_Name}'s Turns
}



-> Enemy_Turn_Processing

= Enemy_Turn_Processing

~ temp Enemy_Choice = 0 //ALWAYS TAG THIS OUT FIRST BEFORE YOU TAG OUT ~ diceroll_1_10(Enemy_Choice) ETERNAL LOOP CRASH INBOUND OTHERWISE

~ diceroll_1_10(Enemy_Choice) //NEVER TAG THIS OUT BEFORE YOU TAG OUT ~ temp Enemy_Choice = 0 ETERNAL LOOP CRASH INBOUND OTHERWISE

{
    -Enemy_Choice == 1:
        ->Enemy_Physical_Attack 
    -Enemy_Choice == 2:
        ->Enemy_Physical_Attack
    -Enemy_Choice == 3:
        ->Enemy_Physical_Attack
    -Enemy_Choice == 4:
        ->Enemy_Physical_Attack
    -Enemy_Choice == 5:
        ->Enemy_Physical_Attack
    -Enemy_Choice == 6:
        {
            -Enemy_Magic_Cooldown == 0 && LIST_COUNT(Enemy_Magical_Abilities) > 0:
                ->Enemy_Magic_Attack
            -Enemy_Magic_Cooldown == 0 && Enemy_Magical_Abilities == ():
                ->Enemy_Turn_Processing
            -Enemy_Magic_Cooldown > 0:
                ->Enemy_Turn_Processing
            -else:
                Enemy_Turn_Processing 01
                ->Error
        }
    -Enemy_Choice == 7: 
        {
            -Enemy_Magic_Cooldown == 0 && LIST_COUNT(Enemy_Magical_Abilities) > 0:
                ->Enemy_Magic_Attack
            -Enemy_Magic_Cooldown == 0 && Enemy_Magical_Abilities == ():
                ->Enemy_Turn_Processing
            -Enemy_Magic_Cooldown > 0:
                ->Enemy_Turn_Processing
            -else:
                Enemy_Turn_Processing 02
                ->Error
        }
    -Enemy_Choice == 8: 
        {
            -Enemy_Magic_Cooldown == 0 && LIST_COUNT(Enemy_Magical_Abilities) > 0:
                ->Enemy_Magic_Attack
            -Enemy_Magic_Cooldown == 0 && Enemy_Magical_Abilities == ():
                ->Enemy_Turn_Processing
            -Enemy_Magic_Cooldown > 0:
                ->Enemy_Turn_Processing
            -else:
                Enemy_Turn_Processing 03
                ->Error
        }
    -Enemy_Choice == 9:
        {
            -Enemy_Magic_Cooldown == 0 && LIST_COUNT(Enemy_Magical_Abilities) > 0:
                ->Enemy_Magic_Attack
            -Enemy_Magic_Cooldown == 0 && Enemy_Magical_Abilities == ():
                ->Enemy_Turn_Processing
            -Enemy_Magic_Cooldown > 0:
                ->Enemy_Turn_Processing
            -else:
                Enemy_Turn_Processing 04
                ->Error
        }
    -Enemy_Choice == 10:
        {
            -Enemy_Item_Names == ():
                ->Enemy_Turn_Processing
            -LIST_COUNT(Enemy_Item_Names) > 0:
                ->Enemy_Item_Using
            -else:
                Enemy_Turn_Processing 05
                ->Error
        }
    -else:
        Enemy_Turn_Processing 06
        ->Error
}

-> Battle_Processing