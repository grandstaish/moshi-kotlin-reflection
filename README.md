# moshi-kotlin-reflection
This repository shows that moshi does not work with Kotlin + ProGuard

**Steps to reproduce**:<br />
1. Build using `./gradlew clean installDebug` to ensure ProGuard is actually run
2. Launch the app

**Expected Result**:<br />
View logcat, you will see that the printed Point class was deserialised as (2, 3).

**Actual Result**:<br />
View logcat, you will see that the printed Point class was deserialised as (0, 0).

--- 
**Steps to fix (poorly):**<br />
Add `-keep class kotlin.** { *; }` to the proguard rules. 
