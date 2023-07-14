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
                                                                                                    Healthbar Error 01
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

=== function Healthbar_Right(ref x, y, z)

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
    -y < 0:
        0
    -else:
       {y} 
}
<>
/{z}<>
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
                                                                                                    Healthbar Error 02
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
