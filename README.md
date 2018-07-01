# Pokémon Battle Simulation 
A classic Pokémon battle simulation! Created to aid me in the learning purposes of Ruby!

## Game Mechanics
The program starts out by initializing a player (you!) and a party of 6 Pokémon of your choice (from a pre-determined selection). Your goal is to determine the most appropriate combination of Pokémon in order to effectively defeat the enemy (an AI trainer with another set of 6 Pokémon)! Overall, your trainer AI will effectively determine when you should be switching Pokémon and utilizing items. 

As of now, the basic battle system for a 1v1 scenario is in place, as well as Pokémon and Player/Trainer constructs. Item usage (potions, status condition removers, etc.) will be implemented at a later time. Specific typing and additional damage based on that typing will also be implemented later. As of now, a battle is conducted primary based on HP (health points) and attack power attributes. The simulation is also turn based, just like the classic Pokémon games!

### Future Implementation
I plan to add the following features: 
* Pokémon counters based on type
* Items 
* A "speed" trait, rather than always having the user's party attack first. 
* A more *intelligent* automated decision making process based on the above two features. 
