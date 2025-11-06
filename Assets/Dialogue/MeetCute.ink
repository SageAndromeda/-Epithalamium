-> storyBeginning
=== storyBeginning ===
Narrator: Spring Break is rapidly approaching; it’s only two weeks away! 
Narrator: But before that, you have to get through your robotics lab. 
Narrator: Today’s issue: someone stole your seat.
Player: Um, excuse me, that’s my seat.
Yumi: ...
Player: Excuse me.
Yumi: What?
Player: That’s my seat.
Yumi: No it’s not.
Player: It is.
Yumi: No. It’s my seat. I got here first. Right, Cordie?
Cordie: Yumi, just give them the seat. You know you don’t sit there.
Yumi: Absolutely not! I sat here, so it’s my seat. 
Cordie: Yumi. 
Yumi: I don’t care what they think! My seat. My computer. Mine.
Cordie: Yumi quit being such a—
Narrator: This clearly isn’t an argument you want to be involved in. 
-> seatChoice
= seatChoice
Narrator: Where do you want to sit?

 + The front of the room. 
Narrator: This seat is next to a person in a crazy outfit who walks with a cane. 
Narrator: You’ve noticed that xe is always the first to raise xir hand to ask questions and correct the professor.
Narrator: Is this where you want to sit?
     ++ Yes
        -> frontOfRoom
     ++ No
    	-> seatChoice
    	
 + The middle of the room. 
Narrator: This open spot is close to your stolen seat. 
Narrator: The person next to it appears to be reading a book.
Narrator: But they keep twitching their head and jerking the book away from themselves for some reason.
Narrator: Is this where you want to sit?
     ++ Yes
        -> middleOfRoom
     ++ No
    	-> seatChoice

 + The back of the room. 
Narrator: This seat is right next to someone you have somehow never noticed before. 
Narrator: You don’t know how you missed seeing as they are currently shining a very bright light on a jar of flowers.
Narrator: Is this where you want to sit?
    ++ Yes
        -> backOfRoom
    ++ No
	    -> seatChoice


=== frontOfRoom ===
Front of room
-> END

=== middleOfRoom ===
Narrator: You sit in a chair right behind your stolen seat. The girl next to you keeps reading her book until—
Book: THUNK!
Narrator: She slams you in the arm with her book.
Arcturus: Oh no! Oh no! Oh no! Yumi, I am so sorry!
[Stress meter increases]
Narrator: How do you react?
 * React to being hit.
    Player: Ow! What was that?
    Arcturus: I am so, so, so sorry! I didn’t mean to hit you. Please do not destroy this book as well!
    Player: Destroy the book?
    Arcturus: Yes! You know what you did, Yumi! I’m renting it from the— 
    Narrator: She actually notices who you are.
    Arcturus: Wait, you are not Yumi. 
    Player: No, I’m not. She stole my seat. But if you’re this scared of her, why did you hit me?
    Arcturus: I am really sorry. My nervous system is evil; it loves doing whatever it wants. Mostly smacking me and jerking my head around. I am sorry though.
    -> didntHurt
    
 * Ask what she’s reading.
    Player: What are you reading?
    Arcturus: Please do not destroy this book! The library won’t let me take any more out if this one is as damaged as the last one.
    Player: What happened?
    Arcturus: You happened!
    Narrator: She stops her panicking enough to stop and look at you.
    Arcturus: Wait, you are not Yumi. She’s gonna kill you when she realizes you stole her seat. 
    Player: Well she actually stole my seat.
    Arcturus: Oh, huh. You can sit here then as long as she does not come back. But I am reading Frankenstein.
    [Stress meter decreases]
    -> didntHurt
    
 * Point out that you’re not Yumi.
    Player: I’m not Yumi.
    Arcturus: You are not...? 
    Narrator: She pauses and takes an actual look at you.
    Arcturus: That is Yumi’s seat. She is gonna kill you when she realizes you stole it. 
    Player: Well she actually stole my seat.
    Arcturus: Oh, huh. You can sit here then as long as she does not come back. 
    Arcturus: You are in the danger zone though. My nervous system gained free will and lashes out at the slightest thing. She mostly attacks me, but every once in a while someone else gets hurt. 
    Arcturus: I am really sorry for hitting you with my book. 
    [Stress meter decreases]
    -> didntHurt
    
= didntHurt
Player: It didn’t hurt that much. Appreciate the apology though. 
Arcturus: Yeah, I always feel terrible when someone gets hit by my tics. I am sorry.
Player: No worries. Let’s just hope it doesn’t happen again.
Narrator: The girl smiles at you. Then her eyes go wide. She sticks out her hand as if to shake, punches herself in the chest with it, then puts it back out again.
Arcturus: Ow. I just realized we did not introduce ourselves yet! Call me “Arcturus.”
[Player inputs name and pronouns]
Arcturus: It is nice to meet you, <player>!
Dr. Nest: Programmers! Welcome back. I’m sure you’ve been paying attention to our syllabus. I need you to get with your groups so I can begin going over the group project.
Arcturus: WHAT?
Dr. Nest: If you have questions, please raise your hand before talking. ... Yes, you there in the yellow pants.
Arcturus: What do you mean get with our groups? We have not formed any groups.
Dr. Nest: Why not? This project has been listed on page forty-two of the syllabus since January.
Yumi: I have a group already!
Dr. Nest: Very good. But please raise your hand next time.
Yumi: Hmph.
Narrator: What will you do?
 * I don’t have a group either.
    Dr. Nest: Yes, you there next to the girl without a group.
    Player: I don’t have a group. Can I join one right now?
    Dr. Nest: I need everyone to please raise your hand if you do not have a group.
    Narrator: Everyone except Yumi, Cordie, and one other person raises their hands.
    Dr. Nest: Fine. Everyone without a group, please go and find two or three other people to work with.
    Dr. Nest: You three with a group, come talk to me.
    Arcturus: Ugh.
    -> arcturusGroup
    
 * Ask to group with her.
    -> arcturusGroup

= arcturusGroup
Player: Arcturus, do you want to work with me?
Arcturus: Yes, please! I really do not know anyone in this class. I know nobody but Yumi, I guess. Ugh. 
Player: What happened between you and Yumi?
Arcturus: She has been terrorizing me this entire semester! For example—
Arcturus: Sorry, no. I should not be insulting my classmate; I especially should not be doing that while she is in the same room.
Narrator: How do you react?

 * She must have a crush on you.
    Player: It sounds like she has a crush on you.
    Arcturus: Could you repeat that?
    [Stress meter rises, affection decreases]
    Player: She might just be annoying you because she likes you.
    Arcturus: No. This is not elementary school. If Yumi likes me, she should say something, not give me a limp for a week. 
    Arcturus: What even gives people the idea that harassment is the same as romantic attraction? I worry for you.
    -> secondGroup

 * I’m sorry
    Player: I’m sorry! You didn’t deserve that. 
    Arcturus: I’m sorry.
    Player: Is there any way I can help?
    Arcturus: Forming a group is a great start I think. Just please do not treat me weird when something out of my control happens.
    Player: Of course!
    Arcturus: If I remember correctly, Dr. Nest said that the groups need to be at least three people, so we need someone else. Who do you want to work with?
    -> secondGroup
    
= secondGroup
Narrator: Where do you look for a second person?
 + The front of the room.
	Narrator: Will you ask someone from the front of the room?
	 ++ Yes
		-> arcLuxSol
     ++ No
    	-> secondGroup
 + The back of the room.
	Narrator: Will you ask someone from the back of the room?
	 ++ Yes
		-> arcSolLux
     ++ No
    	-> secondGroup


=== arcLuxSol ===
Arc to Lux to Sol
-> END

=== arcSolLux ===
Arc to Sol to Lux
-> END


=== backOfRoom ===
Back of room
-> END
