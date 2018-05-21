visit 'the-internet.herokuapp.com'

wait 10 do
  has_text? 'Welcome to the-internet'
end

scroll 20

click_link 'Form Authentication'

wait 3 do
  has_text? 'the secure area'
end

username = find_field 'username'
username.type "tomsmith"

# alternative way to find+type:
find_field('password').type 'SuperSecretPassword!'

click_button 'Login'

wait 3 do
  has_text? 'Welcome to the Secure Area'
end

think 1..2

click_link 'Logout'

wait 3 do
  has_text? 'You logged out'
end
