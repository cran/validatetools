# validatetools 0.5.2

* Added fix for change `is.atomic(NULL)==FALSE` in R 4.3.2

# validatetools 0.5

* improved dnf parsing: more complex if statements are parsed as dnf, 
* complex if statements were failing with simplify_conditional: issue #13

# validatetools 0.4.7

* Fix for issue 12, Thanks to Sander Scholtus: substitute_values was failing on conditional statements.

# validatetools 0.4.6

* Fix for issue 11, Thanks to Ton de Waal: simplify_conditional was not working
correctly on pure categorical rules
* output of detect_boundary_cat has changed (improved)

# validatetools 0.4.4

* Negative coeficients in linear rules were ignored, now fixed

# validatetools 0.4.3

* Fixed issue #9, bug with pure categorical rules.

# validatetools 0.4.2

* Internal updates for compatability with 'validate' version 0.2.3.

# validatetools 0.4.1

* initial release
