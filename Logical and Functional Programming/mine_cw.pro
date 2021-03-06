car_model(001,bmw).
car_model(002,mercedes).
car_model(003,peugeot).
car_model(004,audi).
car_model(005,lada).

car_country(001,germany).
car_country(002,bulgaria).
car_country(003,france).
car_country(004,china).
car_country(005,romania).

car_extras(001,[conditioner,wipers,hood,tires,windows,gas]).
car_extras(002,[phone,navigation,bass_box,rack,autopilot,shifter]).
car_extras(003,[computer,stove,tv,gps,autopilot,chip]).
car_extras(004,[handbrake,automatic_speeds,parktronic,airbags,wings,tires]).
car_extras(004,[steering_wheel,brakes,parktronic,salon,tablet,satellite]).

price(001,4500).
price(002,6660).
price(003,1090).
price(004,9600).
price(005,7900).

customer_name(01,yordan).
customer_name(02,stilian).
customer_name(03,genadi).
customer_name(04,ivan).
customer_name(05,pesho).
customer_name(06,miro).

friend(yordan,stilian).
enemy(pesho,ivan).
young_driver(miro).

interest(01,[conditioner,wipers,hood]).
interest(02,[phone,navigation,bass_box]).
interest(05,[computer,stove,tv]).
interest(03,[handbrake,automatic_speeds]).
interest(04,parktronic).
interest(06,[salon,tablet,satellite]).
interest(01,001).
interest(02,005).
interest(03,005).
interest(04,003).
interest(06,002).


/*
package with price 9600
?- price(X,9600),write(X),nl.
*/


/*
Name of country 002
?-car_country(002,X),write(X).
*/


/*
Common interests

?- interest(01,X),interest(02,X),write(X),nl.
*/


/*
customer interested in spec offer

customer(Name):- interest(Id_c,001),
customer_name(D_k,Name).
?-customer(Name),write(Name),nl.
*/


/*
Deutsch car
german_car(Name):-car_country(ID_c, germany),
					car_model(ID_c, Name).
?-german_car(Name),write(Name),nl,fail.
*/



