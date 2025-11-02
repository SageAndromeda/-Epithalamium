-> Meetcute

=== Meetcute ===
Narrator: Spring Break is rapidly approaching; it’s only two weeks away! 
Narrator: But before that, you have to get through your robotics lab. 
Narrator: Today’s issue: someone stole your seat.
Player: Um, excuse me, that’s my seat.
Yumi: ...
Player: Excuse me.
Yumi: Oh can I help you?
Player: That’s my seat.
Yumi: No it’s not.
Player: It is.
Yumi: No. It’s my seat. I got here first. Right, Cordie?
Cordie: Yumi just give them the seat. You know you don’t sit there.
Yumi: Absolutely not! I sat here, so it’s my seat. 
Yumi: Mine. 
Yumi: I don’t care what they think! My seat. My computer.
Cordie: Yumi quit being such an—
Narrator: This clearly isn’t an argument you want to be involved in. 
Let’s find somewhere new to sit

Where will you sit?
    + [Front of the room]
        -> chosen("Pollux!")
    + [Middle of the room]
        -> chosen("Arcturus!")
    + [Back of the room]
        -> chosen("Sol!")

=== chosen(spot) ===
You chose {spot}!

-> END
