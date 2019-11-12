# cogenttask

This was done in Perl under Ubuntu
All images copied from zip file to /home/dimi63/Images/Code_Test directory

Perl module will run through all subdirectories of the directory Code_Test and search for duplicate images according to :
width, height, size and type
If all the measurements of 2 files are equal that means that the files are duplicate. 

To run the program :
./finddupimages.pm

Test case 1 will find the files in the subdirectory and create hash with all the measurements of the files

Output where I can see that it will pick up directory . and  .. which should be checked.
Also initial directory has files that are not directores that need to be checked

dimi63@DESKTOP-G8TL0CK:~$ ./finddupimages.pm
Use of uninitialized value $width in concatenation (.) or string at ./finddupimages.pm line 54.
Use of uninitialized value $height in concatenation (.) or string at ./finddupimages.pm line 54.
Use of uninitialized value $size in concatenation (.) or string at ./finddupimages.pm line 54.
Use of uninitialized value $format in concatenation (.) or string at ./finddupimages.pm line 54.
Checked file /home/dimi63/Images/Code_Test/./Dec 2016 with , , ,
Use of uninitialized value $width in concatenation (.) or string at ./finddupimages.pm line 54.
Use of uninitialized value $height in concatenation (.) or string at ./finddupimages.pm line 54.
Use of uninitialized value $size in concatenation (.) or string at ./finddupimages.pm line 54.
Use of uninitialized value $format in concatenation (.) or string at ./finddupimages.pm line 54.
Checked file /home/dimi63/Images/Code_Test/./camping DELETE ME with , , ,
Use of uninitialized value $width in concatenation (.) or string at ./finddupimages.pm line 54.
Use of uninitialized value $height in concatenation (.) or string at ./finddupimages.pm line 54.
Use of uninitialized value $size in concatenation (.) or string at ./finddupimages.pm line 54.
Use of uninitialized value $format in concatenation (.) or string at ./finddupimages.pm line 54.
Checked file /home/dimi63/Images/Code_Test/./germany with , , ,
Checked file /home/dimi63/Images/Code_Test/./mew.jpg with 250, 167, 7776, JPEG
Use of uninitialized value $width in concatenation (.) or string at ./finddupimages.pm line
.
.
Checked file /home/dimi63/Images/Code_Test/../__MACOSX with , , ,
Checked file /home/dimi63/Images/Code_Test/Dec 2016/castle from drone.jpg with 167, 250, 12143, JPEG
Checked file /home/dimi63/Images/Code_Test/Dec 2016/incredible.jpg with 250, 188, 15653, JPEG
Checked file /home/dimi63/Images/Code_Test/Dec 2016/river and dome.jpg with 167, 250, 10890, JPEG


Test case 2 will fix errors in test case one 
dimi63@DESKTOP-G8TL0CK:~$ ./finddupimages.pm
Check file /home/dimi63/Images/Code_Test/Dec 2016/castle from drone.jpg with 167, 250, 12143, JPEG
Check file /home/dimi63/Images/Code_Test/Dec 2016/incredible.jpg with 250, 188, 15653, JPEG
Check file /home/dimi63/Images/Code_Test/Dec 2016/river and dome.jpg with 167, 250, 10890, JPEG
Check file /home/dimi63/Images/Code_Test/Dec 2016/scary bear.JPG with 2067, 3100, 1244897, JPEG
Check file /home/dimi63/Images/Code_Test/Dec 2016/tobias' place.jpg with 167, 250, 12886, JPEG
Check file /home/dimi63/Images/Code_Test/camping DELETE ME/barry shows off.JPG with 4000, 6000, 7937233, JPEG
Check file /home/dimi63/Images/Code_Test/camping DELETE ME/best laid plans.jpg with 250, 188, 11917, JPEG
Check file /home/dimi63/Images/Code_Test/camping DELETE ME/escape.jpg with 250, 193, 13146, JPEG
Check file /home/dimi63/Images/Code_Test/camping DELETE ME/fire.jpg with 166, 250, 16122, JPEG
Check file /home/dimi63/Images/Code_Test/camping DELETE ME/likehome_away_from_home.jpg with 250, 167, 14470, JPEG
Check file /home/dimi63/Images/Code_Test/camping DELETE ME/perfect.jpg with 250, 167, 11767, JPEG

Test case 3 will check the duplicates - run through the hash to find out the duplicates
Found that it will find duplicates twice in both directions
dimi63@DESKTOP-G8TL0CK:~$ ./finddupimages.pm
Found Duplicates:  /home/dimi63/Images/Code_Test/Dec 2016/castle from drone.jpg   /home/dimi63/Images/Code_Test/germany/what is this?.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/ilusion.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-23225.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/tree.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-08214.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/matin.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-08913.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-02979.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/low tide.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-08712 (turtle).jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/turtle omg.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-08712 (turtle).jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/s-01324.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/that starfish again.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-37293.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/quite a view.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-08369.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/mew.jpg   /home/dimi63/Images/Code_Test/random cats I saw/mew.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/sunset.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-02141.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/random cats I saw/mew.jpg   /home/dimi63/Images/Code_Test/mew.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-37293.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/that starfish again.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-08214.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/tree.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/turtle omg.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-08712 (turtle).jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/turtle omg.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/s-01324.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/germany/is this real.jpg   /home/dimi63/Images/Code_Test/Dec 2016/incredible.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/coves.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-06927.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/work/cat.jpg   /home/dimi63/Images/Code_Test/random cats I saw/laptop does run pretty hot.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/s-01324.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-08712 (turtle).jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/s-01324.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/turtle omg.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/random cats I saw/laptop does run pretty hot.jpg   /home/dimi63/Images/Code_Test/work/cat.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-23225.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/ilusion.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/low tide.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-02979.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/germany/what is this?.jpg   /home/dimi63/Images/Code_Test/Dec 2016/castle from drone.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-08369.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/quite a view.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-08913.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/matin.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-06927.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/coves.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-02141.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/sunset.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/Dec 2016/incredible.jpg   /home/dimi63/Images/Code_Test/germany/is this real.jpg

Test case 4 will fix the problem that hash was checked twice, so added the switch when file has been already found as a duplicate with another file 
dimi63@DESKTOP-G8TL0CK:~$ ./finddupimages.pm
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-08913.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/matin.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/germany/is this real.jpg   /home/dimi63/Images/Code_Test/Dec 2016/incredible.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/turtle omg.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/s-01324.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/turtle omg.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-08712 (turtle).jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/low tide.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-02979.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-08369.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/quite a view.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/ilusion.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-23225.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/coves.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-06927.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-02141.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/sunset.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/trip to the sea/s-37293.jpg   /home/dimi63/Images/Code_Test/sea, sand, surf/that starfish again.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/random cats I saw/laptop does run pretty hot.jpg   /home/dimi63/Images/Code_Test/work/cat.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/germany/what is this?.jpg   /home/dimi63/Images/Code_Test/Dec 2016/castle from drone.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/sea, sand, surf/tree.jpg   /home/dimi63/Images/Code_Test/trip to the sea/s-08214.jpg
Found Duplicates:  /home/dimi63/Images/Code_Test/mew.jpg   /home/dimi63/Images/Code_Test/random cats I saw/mew.jpg
