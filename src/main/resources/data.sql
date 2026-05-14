TRUNCATE TABLE jokes RESTART IDENTITY CASCADE;

INSERT INTO jokes (category, type, joke, setup, delivery, active)
VALUES
-- Programming single
('Programming', 'single', 'There are 10 types of people: those who understand binary and those who do not.', NULL, NULL, true),
('Programming', 'single', 'A SQL query walks into a bar, walks up to two tables and asks: Can I join you?', NULL, NULL, true),
('Programming', 'single', 'Programming is like writing a book, except when you miss a single comma on page 126, the whole thing makes no sense.', NULL, NULL, true),
('Programming', 'single', 'Why do Java developers wear glasses? Because they do not C#.', NULL, NULL, true),
('Programming', 'single', 'I would tell you a joke about UDP but you might not get it.', NULL, NULL, true),
('Programming', 'single', 'Debugging is like being the detective in a crime movie where you are also the murderer.', NULL, NULL, true),
('Programming', 'single', 'It works on my machine.', NULL, NULL, true),
('Programming', 'single', 'A byte walks into a bar looking pale. The bartender asks: What is wrong? The byte replies: I have got a bit too much.', NULL, NULL, true),
('Programming', 'single', 'To understand recursion you must first understand recursion.', NULL, NULL, true),
('Programming', 'single', 'My code never has bugs. It just develops random features.', NULL, NULL, true),
('Programming', 'single', 'I am not lazy, I am on energy-saving mode.', NULL, NULL, true),
('Programming', 'single', 'Git blame: the only time developers point fingers and it is considered professional.', NULL, NULL, true),
('Programming', 'single', 'A programmer puts two glasses on his bedside table before going to sleep: one full of water in case he gets thirsty, and one empty in case he does not.', NULL, NULL, true),
('Programming', 'single', 'The best thing about a Boolean is that even if you are wrong, you are only off by a bit.', NULL, NULL, true),
('Programming', 'single', 'In order to understand what recursion is, you must first understand what recursion is.', NULL, NULL, true),

-- Programming twopart
('Programming', 'twopart', NULL, 'Why do programmers prefer dark mode?', 'Because light attracts bugs.', true),
('Programming', 'twopart', NULL, 'Why did the programmer quit his job?', 'Because he did not get arrays.', true),
('Programming', 'twopart', NULL, 'How many programmers does it take to change a light bulb?', 'None, that is a hardware problem.', true),
('Programming', 'twopart', NULL, 'Why do programmers always mix up Christmas and Halloween?', 'Because Oct 31 equals Dec 25.', true),
('Programming', 'twopart', NULL, 'What is a computer scientist''s favourite place to hang out?', 'The Foo Bar.', true),
('Programming', 'twopart', NULL, 'Why was the JavaScript developer sad?', 'Because he did not know how to null his feelings.', true),
('Programming', 'twopart', NULL, 'What do you call a programmer from Finland?', 'Nerdic.', true),
('Programming', 'twopart', NULL, 'Why did the developer go broke?', 'Because he used up all his cache.', true),
('Programming', 'twopart', NULL, 'What is the object-oriented way to become wealthy?', 'Inheritance.', true),
('Programming', 'twopart', NULL, 'Why do Python programmers prefer snake_case?', 'Because they cannot C.', true),
('Programming', 'twopart', NULL, 'What did the router say to the doctor?', 'It hurts when IP.', true),
('Programming', 'twopart', NULL, 'Why did the function break up with the loop?', 'Because it kept going around in circles.', true),
('Programming', 'twopart', NULL, 'What do you call 8 hobbits?', 'A hobbyte.', true),
('Programming', 'twopart', NULL, 'Why do backend developers make great detectives?', 'They always follow the logs.', true),

-- Misc single
('Misc', 'single', 'I told my suitcase there would be no vacation this year. Now I am dealing with emotional baggage.', NULL, NULL, true),
('Misc', 'single', 'I am reading a book about anti-gravity. It is impossible to put down.', NULL, NULL, true),
('Misc', 'single', 'I used to hate facial hair, but then it grew on me.', NULL, NULL, true),
('Misc', 'single', 'I would tell you a joke about construction, but I am still working on it.', NULL, NULL, true),
('Misc', 'single', 'Did you hear about the guy who invented Lifesavers? He made a mint.', NULL, NULL, true),
('Misc', 'single', 'I have a joke about time travel but you did not like it.', NULL, NULL, true),
('Misc', 'single', 'I told my doctor I broke my arm in two places. He told me to stop going to those places.', NULL, NULL, true),
('Misc', 'single', 'I used to be a banker but I lost interest.', NULL, NULL, true),
('Misc', 'single', 'I am on a seafood diet. Every time I see food, I eat it.', NULL, NULL, true),
('Misc', 'single', 'Light travels faster than sound. That is why some people appear bright until you hear them speak.', NULL, NULL, true),
('Misc', 'single', 'I asked the librarian if they had books about paranoia. She whispered: They are right behind you.', NULL, NULL, true),
('Misc', 'single', 'I cannot take my dog to the park because the ducks keep trying to bite him. Guess that is what I get for buying a pure bread dog.', NULL, NULL, true),
('Misc', 'single', 'My wife told me I had to stop acting like a flamingo. I had to put my foot down.', NULL, NULL, true),
('Misc', 'single', 'I bought some shoes from a drug dealer. I do not know what he laced them with but I was tripping all day.', NULL, NULL, true),
('Misc', 'single', 'A blind man walks into a bar. And a table. And a chair.', NULL, NULL, true),

-- Misc twopart
('Misc', 'twopart', NULL, 'Why cannot you give Elsa a balloon?', 'Because she will let it go.', true),
('Misc', 'twopart', NULL, 'What do you call a fake noodle?', 'An impasta.', true),
('Misc', 'twopart', NULL, 'Why did the scarecrow win an award?', 'Because he was outstanding in his field.', true),
('Misc', 'twopart', NULL, 'What do you call cheese that is not yours?', 'Nacho cheese.', true),
('Misc', 'twopart', NULL, 'Why did the bicycle fall over?', 'Because it was two-tired.', true),
('Misc', 'twopart', NULL, 'What do you call a sleeping dinosaur?', 'A dino-snore.', true),
('Misc', 'twopart', NULL, 'Why cannot a nose be 12 inches long?', 'Because then it would be a foot.', true),
('Misc', 'twopart', NULL, 'What do you call a man with no body and no nose?', 'Nobody knows.', true),
('Misc', 'twopart', NULL, 'Why did the math book look so sad?', 'Because it had too many problems.', true),
('Misc', 'twopart', NULL, 'What do you call a bear with no teeth?', 'A gummy bear.', true),
('Misc', 'twopart', NULL, 'Why did the coffee go to the police?', 'Because it got mugged.', true),
('Misc', 'twopart', NULL, 'What do you call a fish without eyes?', 'A fsh.', true),
('Misc', 'twopart', NULL, 'Why do cows wear bells?', 'Because their horns do not work.', true),
('Misc', 'twopart', NULL, 'What did one ocean say to the other ocean?', 'Nothing, it just waved.', true),

-- Pun single
('Pun', 'single', 'I am reading a book on the history of glue — I just cannot put it down.', NULL, NULL, true),
('Pun', 'single', 'I used to work in a shoe recycling shop. It was sole destroying.', NULL, NULL, true),
('Pun', 'single', 'I am friends with all electricians. We have good current connections.', NULL, NULL, true),
('Pun', 'single', 'I tried to catch some fog earlier. I mist.', NULL, NULL, true),
('Pun', 'single', 'When the electricity went out at the school, the students were de-lighted.', NULL, NULL, true),
('Pun', 'single', 'I had a joke about paper but it was tearable.', NULL, NULL, true),
('Pun', 'single', 'I am terrified of elevators. I am taking steps to avoid them.', NULL, NULL, true),
('Pun', 'single', 'I used to be a personal trainer. Then I gave my too weak notice.', NULL, NULL, true),

-- Pun twopart
('Pun', 'twopart', NULL, 'Did you hear about the claustrophobic astronaut?', 'He just needed a little space.', true),
('Pun', 'twopart', NULL, 'Why do seagulls fly over the sea?', 'Because if they flew over the bay, they would be bagels.', true),
('Pun', 'twopart', NULL, 'What do you call a factory that makes okay products?', 'A satisfactory.', true),
('Pun', 'twopart', NULL, 'I used to hate moustaches, but...', 'They have grown on me.', true),
('Pun', 'twopart', NULL, 'What do you call a boomerang that does not come back?', 'A stick.', true),
('Pun', 'twopart', NULL, 'Why did the invisible man turn down the job offer?', 'He could not see himself doing it.', true),

-- Dark single
('Dark', 'single', 'My grief counsellor died. He was so good at his job, I do not even care.', NULL, NULL, true),
('Dark', 'single', 'I have many jokes about unemployed people. Sadly none of them work.', NULL, NULL, true),
('Dark', 'single', 'I visited my new therapist today. She told me I have trouble letting go of the past. I said: Oh great, not this again.', NULL, NULL, true),
('Dark', 'single', 'I asked my dog what two minus two is. He said nothing.', NULL, NULL, true),
('Dark', 'single', 'My wife left a note on the fridge saying this is not working. I opened the fridge. It was working fine.', NULL, NULL, true),

-- Dark twopart
('Dark', 'twopart', NULL, 'Why was the archaeologist depressed?', 'Because his career was in ruins.', true),
('Dark', 'twopart', NULL, 'Did you hear about the pessimist who hates German sausages?', 'He always fears the worst.', true),
('Dark', 'twopart', NULL, 'Why do we tell actors to break a leg?', 'Because every play has a cast.', true);
