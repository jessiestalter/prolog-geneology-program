/* Geneological database of my family */
/* Only included immediate family members on my dad's side, did not include spouses so each child only has one parent, */
/* this makes it so that there are not duplicates of each pair of siblings */

/* Everyone's ages */
age(sandy, 123).
age(jennifer, 97).
age(albert, 102).
age(susan, 84).
age(mary, 82).
age(phyllis, 85).
age(josh, 46).
age(curt, 56).
age(sharon, 51).
age(mike, 52).
age(jan, 54).
age(john, 48).
age(jacob, 17).
age(jenna, 20).
age(jessie, 22).
age(nathan, 26).
age(nick, 24).
age(luke, 27).
age(ali, 33).
age(kelsey, 36).
age(brandon, 28).
age(jarrod, 30).
age(jonny, 15).
age(kinsley, 4).

/* Sandy's children */
child(jennifer, sandy).
child(albert, sandy).

/* Jennifer's child */
child(susan, jennifer).

/* Albert's children */
child(mary, albert).
child(phyllis, albert).

/* Susan's child */
child(josh, susan).

/* Mary's children */
child(curt, mary).
child(sharon, mary).
child(mike, mary).
child(jan, mary).

/* Phyllis's child */
child(john, phyllis).

/* Josh's child */
child(jacob, josh).

/* Curt's children */
child(jenna, curt).
child(jessie, curt).
child(nathan, curt).
child(nick, curt).

/* Sharon's child */
child(luke, sharon).

/* Mike's children */
child(ali, mike).
child(kelsey, mike).

/* Jan's children */
child(brandon, jan).
child(jarrod, jan).

/* John's child */
child(jonny, john).

/* Kelsey's child */
child(kinsley, kelsey).
