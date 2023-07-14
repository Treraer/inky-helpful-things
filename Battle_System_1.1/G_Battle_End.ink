=== Battle_Processing ===

{Enemy_Magic_Cooldown > 0: 
    ~lower_1(Enemy_Magic_Cooldown)
}

{Enemy_Swiftness_Potion_Duration > 0:
    ~lower_1(Enemy_Swiftness_Potion_Duration)
}

{
        
    -Player_Health <= 0:
        
        ~ Healthbar(Player_Health_Percent, Player_Health, Player_Health_Max)

        ~ Healthbar(Enemy_Health_Percent, Enemy_Health, Enemy_Health_Max)
        
        ~ set_0(Player_Magic_Cooldown)
        ~ Player_Health = Player_Health_Max
        
        -> Game_Over
    
    -Enemy_Swiftness_Potion_Duration > 0:

        -> Swift_Next_Turn_Enemy
        
    -else:
        -> New_Turn  
}

= New_Turn

+[New Turn]
#CLEAR
->Turn_Player 

= Swift_Next_Turn_Enemy

+[New Turn]
#CLEAR
->Turn_Enemy 

= Victory

+ [Fight Over]

Victory

->->

= Game_Over

+ [Fight Over]

Fight Lost

->->