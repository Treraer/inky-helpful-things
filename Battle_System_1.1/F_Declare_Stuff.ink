=== Enemy_Physical_Attack ===

//The items are in the Weapon_Names_List, the more Options have to be declared here

~ temp Enemy_Choice_Attack = LIST_RANDOM(Enemy_Weapon_Names)

//The Enemy here, unlike the player will only use the fists, if he has no weapons, since the enemy should prefer the weapons over the fists. Note: so should the player but where is the choice in that :)

{
    -Enemy_Weapon_Names == ():
        
        {
            -Enemy_Strength > Player_Defense:
                ~ Fist_Icon()
                {Enemy_Name} used his fists to attack you!
                ~ Attack_of_Enemy(Player_Health, Enemy_Strength, Player_Defense, 0)//0 = no bonus attack
                
            -else:
                You you have blocked {Enemy_Name}'s fists!
        }
        
    -Enemy_Choice_Attack == Stick:
        
        {
            -Enemy_Strength > Player_Defense:
                ~ Stick_Icon()
                {Enemy_Name} used a stick to attack you!
                ~ Attack_of_Enemy(Player_Health, Enemy_Strength, Player_Defense, 3)//3 = plus 3 bonus attack
                
            -else:
                You you have blocked {Enemy_Name}'s stick! 
        }
    -else:
    Enemy Choice Attack 01
    ->Error
}

->Battle_Processing

=== Enemy_Magic_Attack ===

~ temp Enemy_Choice_Magic = LIST_RANDOM(Enemy_Magical_Abilities)

{
    -Enemy_Choice_Magic == Wind:
        ~ Wind_Icon()
        ~ set_2(Enemy_Magic_Cooldown)
        ~ lower_5(Player_Health)
        ~ Healthbar(Player_Health_Percent, Player_Health, Player_Health_Max)
        You take 5 damage!
        For the next {Enemy_Magic_Cooldown} turns, {Enemy_Name} cannot cast magic!
        
    -else:
    Enemy Choice Magic 01
    ->Error
}


->Battle_Processing

=== Enemy_Item_Using ===

//Put here more of the items and what they should do. It should always mirror that of the player options

~ temp Enemy_Choice_Item = LIST_RANDOM(Enemy_Item_Names)

{
    -Enemy_Choice_Item == Healing_Potion:
        {
            -Enemy_Health < Enemy_Health_Max:
                ~ Healing_Potion_Icon()
                {Enemy_Name} takes an item: Healing Potion
                ~ raise_30(Enemy_Health)
                ~ Enemy_Item_Names -= Healing_Potion
                {
                    -Enemy_Health > Enemy_Health_Max:
                        Oh no! {Enemy_Name} has overcharged himself!
                        {Enemy_Name} temporarily has more health than he should!
                }
            -Enemy_Health > Enemy_Health_Max && Enemy_Item_Names == 1:
                ->Turn_Enemy.Enemy_Turn_Processing
            -else:
                ->Enemy_Item_Using
        }
  
    -Enemy_Choice_Item == Magic_Cooldown_Elixir:
        {
            -Enemy_Magic_Cooldown > 0:
                ~ Magic_Cooldown_Elixir_Icon()
                {Enemy_Name} takes an item: Magical Cooldown Potion
                ~ set_0(Enemy_Magic_Cooldown)
                ~ Enemy_Item_Names -= Magic_Cooldown_Elixir
                {Enemy_Name}'s Magic Cooldown has been reduced to {Player_Magic_Cooldown}.
            -Enemy_Magic_Cooldown == 0 && Enemy_Item_Names == 1:
                ->Turn_Enemy.Enemy_Turn_Processing
            -else:
                ->Enemy_Item_Using
        }
        
        -Enemy_Choice_Item == Swiftness_Potion:
        {
            -Enemy_Swiftness_Potion_Duration <= 0:
                ~ Swiftness_Potion_Icon()
                {Enemy_Name} takes an item: Swiftness Potion
                ~ set_3(Enemy_Swiftness_Potion_Duration)
                ~ Enemy_Item_Names -= Swiftness_Potion
                {Enemy_Name} feels and moves faster. Therefor he gets {Enemy_Swiftness_Potion_Duration-1} extra turns.
            -Enemy_Swiftness_Potion_Duration > 0 && Enemy_Item_Names == 1:
                ->Turn_Enemy.Enemy_Turn_Processing
            -else:
                ->Enemy_Item_Using
        }
        
    -else:
        Enemy Choice Item 01
        ->Error
}

->Battle_Processing
