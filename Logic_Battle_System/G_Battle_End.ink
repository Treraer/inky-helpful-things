=== Battle_Processing ===

{
        
    -Player_Health <= 0:
        
        ~ Healthbar(Player_Health_Percent, Player_Health, Player_Health_Max)

        ~ Healthbar(Enemy_Health_Percent, Enemy_Health, Enemy_Health_Max)
        
        ~ set_0(Player_Magic_Cooldown)
        ~ Player_Health = Player_Health_Max
        
        -> Game_Over
        
    -else:
        -> New_Turn  
}

= New_Turn

+[New Turn]
#CLEAR
->Turn_Player 

= Victory

+ [Fight Over]

Victory

->->

= Game_Over

+ [Fight Over]

Fight Lost

->->