# Disable all Notes
-dontnote **

-keepattributes *Annotation*
-keepattributes Signature
-keepattributes EnclosingMethod

# Uncomment this to preserve the line number information for
# debugging stack traces.
-keepattributes SourceFile,LineNumberTable

# Must keep all model fields
-keepclassmembers class nz.bradcampbell.kotlinfun.Point { <fields>; }

# Moshi
-dontwarn okio.**
-dontwarn javax.annotation.Nullable
-dontwarn javax.annotation.ParametersAreNonnullByDefault
-keepclasseswithmembers class * {
    @com.squareup.moshi.* <methods>;
}
-keep @com.squareup.moshi.JsonQualifier interface *
-keepclassmembers class kotlin.Metadata {
    public <methods>;
}

-dontwarn kotlin.reflect.jvm.internal.**
#-keep class kotlin.** { *; }
