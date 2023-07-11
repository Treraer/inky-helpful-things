=== function Attack_of_Player(ref EH, PS, ED, AB)

{
    -(PS + AB - ED) < 0: //Prevents the character from healing from negativ damage
    
        {Enemy_Name} takes 0 damage!
        
    -(PS + AB - ED) >= 0:
    
        ~ EH = EH - (PS + AB - ED)
        
        {Enemy_Name} takes {PS + AB - ED} damage!
        
    -else:
    
        Fehlercode: Attack_of_Player
        
        ~Error_function()
}



# CLASS: Text_Right //no idea why this class has to be placed here

~ Healthbar_Right(Enemy_Health_Percent, Enemy_Health, Enemy_Health_Max)

/*

EH - Enemy Health       Variable
PS - Player Strength    Variable
AB - Attack Bonus       Type Value in function when used
ED - Enemy Defense      Variable

*/

=== function Attack_of_Enemy(ref PH, ES, PD, AB)



{
    -(ES + AB - PD) < 0: //Prevents the character from healing from negativ damage

        You take 0 damage!

    -(ES + AB - PD) >= 0:

        ~ PH = PH - (ES + AB - PD)

        You take {ES + AB - PD} damage!
        
    -else:
    
        Fehlercode: Attack_of_Enemy
        
        ~Error_function()

}



~ Healthbar(Player_Health_Percent, Player_Health, Player_Health_Max)

/*

PH - Player Health      Variable
ES - Enemy Strength     Variable
AB - Attack Bonus       Type Value in function when used
PD - Player Defense     Variable

*/

=== function Enemy_Healthbar_Right()

# CLASS: Text_Right //no idea why this class has to be placed here
~ Healthbar_Right(Enemy_Health_Percent, Enemy_Health, Enemy_Health_Max)
