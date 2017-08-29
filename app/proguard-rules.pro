# Disable all Notes
-dontnote **

-keepattributes *Annotation*
-keepattributes Signature
-keepattributes EnclosingMethod

# Uncomment this to preserve the line number information for
# debugging stack traces.
-keepattributes SourceFile,LineNumberTable

# Must keep all model fields and constructors
-keepclassmembers class nz.bradcampbell.kotlinfun.Point {
  <init>(...);
  <fields>;
}

# Moshi
-dontwarn okio.**
-dontwarn javax.annotation.Nullable
-dontwarn javax.annotation.ParametersAreNonnullByDefault
-keep @com.squareup.moshi.JsonQualifier interface *
-dontwarn org.jetbrains.annotations.**
-keep class kotlin.Metadata { *; }
