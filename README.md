# moshi-kotlin-reflection
This repository shows that moshi does not work with kotlin + proguard

**Steps to reproduce**:<br />
Run the app

**Expected Result**:<br />
View the console, you will see that the printed Point class was deserialised as (2, 3).

**Actual Result**:<br />
View the console, you will see that the printed Point class was deserialised as (0, 0).

--- 
**Steps to fix (poorly):**<br />
Add `-keep class kotlin.** { *; }` to the proguard rules. 
