# Q0: Why is this error being thrown?
Because there was no Pokemon controller, which Home#index (the root) required.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Random pokemon are appearing because of evoked from a sample of trainerless pokemon. The common factor is that they are all trainerless.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This is creating a button that displays "Throw a Pokeball!", patches to the capture_path (which finds this specific pokemons - through its id - and assigns it to the current_trainer).  
# Question 3: What would you name your own Pokemon?
Piazzamon, Baloney, Sneezachu
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path(current_trainer.id); this path needed the ID of the current trainer.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This works because in `views/layouts/application.html.erb` it is rendering layouts/messages at the very end.
# Give us feedback on the project and decal below!
I was not able to implement health or damaging because no matter what I did my terminal did not allow me to reset my database. I tried every suggestion on piazza and it still didn't work. I finished everything else so I hope I don't get docked for computer barriers (since I have windows). I really enjoyed this decal, but I feel like in the future at least one staff person should have a windows computer or have access to one so they can help troubleshoot because I have faced quite a few setbacks and spent hours trying to work through and fix windows errors that I encounter (expecially in homework 2 and this project).  
# Extra credit: Link your Heroku deployed app
