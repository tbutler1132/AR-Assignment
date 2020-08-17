User.destroy_all
AudioFile.destroy_all
Poll.destroy_all
Vote.destroy_all

tim = User.create(name: "Tim", username: "1coldnight")
kanye = User.create(name: "Kanye", username: "yeezy", reputation: 0)
sam = User.create(name: "Sam", username: "darnold14", reputation: 0)
melo = User.create(name: "Carmelo", username: "stay_me7o", reputation: 0)
amare = User.create(name: "Amare", username: "amare_is_real", reputation: 0)
pablo = User.create(name: "Pablo", username: "the_life_of_pablo", reputation: 0)
steve = User.create(name: "Steve", username: "novakaine", reputation: 0)


wolves_w_drums = AudioFile.create(description: "drums at end of verses", user: kanye, title: "Wolves w/ drums")
wolves_no_drums = AudioFile.create(description: "drums removed at end of verses", user: kanye, title: "Wolves no drums")

diamonds_jay_z = AudioFile.create(description: "jay z on third verse", user: kanye, title: "Diamonds with Jay z")
diamonds_no_jay_z = AudioFile.create(description: "jay z removed, my verse instead", user: kanye, title: "Diamonds with no Jay z")

reason_fast = AudioFile.create(description: "faster tempo", title: "reason fast", user: tim)
reason_slow = AudioFile.create(description: "slower tempo", title: "reason slow", user: tim)


wolves_poll = Poll.create(title: "Wolves", audio_file_a_id: wolves_no_drums.id, audio_file_b_id: wolves_w_drums.id, creator_id: kanye.id)
reason_poll = tim.create_poll("Reason", reason_fast, reason_slow)
diamonds_poll = kanye.create_poll("Diamonds", diamonds_jay_z, diamonds_no_jay_z)


Vote.create(user: tim, poll: wolves_poll, answer: 2)
melo.vote_on_poll(wolves_poll, 2)
amare.vote_on_poll(wolves_poll, 2)
pablo.vote_on_poll(wolves_poll, 2)
steve.vote_on_poll(wolves_poll, 2)
sam.vote_on_poll(wolves_poll, 2)
kanye.vote_on_poll(reason_poll, 1)
melo.vote_on_poll(reason_poll, 2)
amare.vote_on_poll(reason_poll, 2)

# User.last.create_poll("Wolves", first, second)


# Poll.create(user: kanye, title: "Wolves")




