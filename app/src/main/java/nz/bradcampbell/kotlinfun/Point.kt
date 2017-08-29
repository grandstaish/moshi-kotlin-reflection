package nz.bradcampbell.kotlinfun

import com.squareup.moshi.Json

data class Point(
    @field:Json(name = "x_value") val xValue: Int,
    @field:Json(name = "y_value") val yValue: Int
)
