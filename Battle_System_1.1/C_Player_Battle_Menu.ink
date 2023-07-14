= Turn_Player

{
-Player_Swiftness_Potion_Duration > 0: 
    Your Bonus Turns Left {Player_Swiftness_Potion_Duration}
-Player_Swiftness_Potion_Duration <= 0:
    Your Turn 
}

~ Healthbar(Player_Health_Percent, Player_Health, Player_Health_Max) //Healthbar Player

# CLASS: Text_Right //no idea why this class has to be placed here

~ Healthbar_Right(Enemy_Health_Percent, Enemy_Health, Enemy_Health_Max) //Healthbar Enemy



+ [Attack]
    
    What would you like to use?
    
    ++ [Fists]
        {
            -Player_Strength > Enemy_Defense:
                You used your fists!
                ~ Fist_Icon()
                ~ Attack_of_Player(Enemy_Health, Player_Strength, Enemy_Defense, 0)//0 = no bonus attack
            -else:
                You used your fists!
                You have been blocked!
        }

    ++ {Player_Weapon_Names ? Stick} [Stick] //check if the player has a item called stick

        {
            -Player_Strength > Enemy_Defense:
                You used your stick!
                ~ Stick_Icon()
                ~ Attack_of_Player(Enemy_Health, Player_Strength, Enemy_Defense, 3)//3 = plus 3 bonus attack
            -else:
                You used your stick!
                You have been blocked!
        }

    ++ [Go Back]
        #CLEAR
        ->Turn_Player

+ {Player_Magic_Cooldown == 0} [Magic] 

/*
Magical Abilities need to be declared here with the powers and strengths

Magic_Cooldown CAN NEVER BE 0 and ALWAYS NEEDS to be 1 higher than what you want the turn timer to be
    IE.: Magic shall be blocked for three turns - use set_4
*/

    What would you like to use?
    
    {Player_Magical_Abilities == (): {EMOTE_CROSS_MARK} No Magic {EMOTE_CROSS_MARK}} # CLASS: Text_Center
    //displays if there are no magical abilities

    ++ {Player_Magical_Abilities ? Wind} [Wind] //checks if the player has the wind magical ability
        You used your magical ability Wind!
        ~ Wind_Icon()
        ~ set_2(Player_Magic_Cooldown)
        ~ lower_5(Enemy_Health)
        ~ Enemy_Healthbar_Right()
        {Enemy_Name} takes 5 damage!
        For the next {Player_Magic_Cooldown-1} turn{Player_Magic_Cooldown >1:s}, you cannot cast magic!
    
        
    ++ [Go Back]
        #CLEAR
        ->Turn_Player
    
        
+ {Player_Magic_Cooldown > 0} [Magic] //displays if the player has magic cooldown

    Magic is on cooldown! Wait {Player_Magic_Cooldown} turns. 
    
    ++ [Go Back]
        #CLEAR
        ->Turn_Player

+ [Item]

    What would you like to use?

    {Player_Item_Names == (): {EMOTE_CROSS_MARK} No Items {EMOTE_CROSS_MARK}}

    ++ {Player_Item_Names ? Healing_Potion} [Healing Potion]
        ~ Healing_Potion_Icon()
        ~ Player_Item_Names -= Healing_Potion //removes the item from the players inventory
        You used a Potion! You have gained 30Hp!
        ~ raise_30(Player_Health)
        {-Player_Health > Player_Health_Max:
                Oh no! You have overcharged yourself!
                You temporarily have more health than you should!
        }
        
    ++ {Player_Item_Names ? Magic_Cooldown_Elixir} [Magic Cooldown Elixir]
        ~ Magic_Cooldown_Elixir_Icon()
        ~ Player_Item_Names -= Magic_Cooldown_Elixir
        ~ set_0(Player_Magic_Cooldown)
        You used a Magic Cooldown Elixir!
        Your Magic Cooldown has been reduced to {Player_Magic_Cooldown}.
    
    ++ {Player_Item_Names ? Swiftness_Potion} [Swiftness Potion]
        ~ set_3(Player_Swiftness_Potion_Duration)
        ~ Swiftness_Potion_Icon()
        ~ Player_Item_Names -= Swiftness_Potion
        You used a Swiftness Potion!
        You feel and move faster. Therefor you can take {Player_Swiftness_Potion_Duration-1} extra turns.
        
    ++ [Go Back]
        #CLEAR
        ->Turn_Player
    




-

{Player_Magic_Cooldown > 0: 
    ~lower_1(Player_Magic_Cooldown)
}
{Player_Swiftness_Potion_Duration > 0:
    ~lower_1(Player_Swiftness_Potion_Duration)
}

{
    -Enemy_Health <= 0:
        
        ~ Healthbar(Player_Health_Percent, Player_Health, Player_Health_Max)

        ~ Healthbar(Enemy_Health_Percent, Enemy_Health, Enemy_Health_Max)
        
        ~ Player_Health = Player_Health_Max
        ~ set_0(Player_Magic_Cooldown)
        
        -> Battle_Processing.Victory
    
    -Player_Swiftness_Potion_Duration > 0:
        
        -> Swift_Next_Turn_Player
}



+ [Enemy's Turn]
    #CLEAR
    -> Turn_Enemy
    
= Swift_Next_Turn_Player

+ [Next Turn]
    #CLEAR
    -> Turn_Player