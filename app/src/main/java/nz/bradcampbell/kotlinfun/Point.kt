package nz.bradcampbell.kotlinfun

import com.squareup.moshi.Json

data class Point(
    @Json(name = "x_value") val xValue: Int,
    @Json(name = "y_value") val yValue: Int
)
