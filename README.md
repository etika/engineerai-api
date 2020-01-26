# README

This README for engineer-ai-api test

1. first do rake db:migrate
2. then do rake db:seed
3. then running the server rails s

The links to access the apis are
 1.http://localhost:3000/phones/:phone_number
   will try to alot the number requested, if not allotted
   else will alot a new unallotted number to the client

 2.http://localhost:3000/alot_phone_numbers
   type-post
   will alot a random phone number to the client

 3.http://localhost:3000/alot_phone_numbers
   type-get
   will return the all the allotted phone numbers