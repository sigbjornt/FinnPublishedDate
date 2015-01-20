# FinnPublishedDate
bash utility that reads advertisements from finn.no and prints the last modified date. Used to guess when a item first entered the marked.

Usage:
```bash
 $ ./finnPublishedDate.sh <ad_id> <optional: number of elements to scan on either side>
```
 
Example
```bash
$ ./finnPublishedDate.sh 49414568
Item 49414558 where last updated             20. jun 2014 13:55
Item 49414561 where last updated             20. jun 2014 13:58
Item 49414563 where last updated             25. jul 2014 13:38
Item 49414564 where last updated             20. jun 2014 10:54
Item 49414566 where last updated             20. jun 2014 10:55
Item 49414567 where last updated             4. jul 2014 11:39
Your item (49414568)->                   20. des 2014 02:05
Item 49414571 where last updated             23. jul 2014 07:55
Item 49414572 where last updated             24. jun 2014 11:53
Item 49414575 where last updated             1. jul 2014 13:52
```
