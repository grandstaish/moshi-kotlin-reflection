package nz.bradcampbell.kotlinfun

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import com.squareup.moshi.KotlinJsonAdapterFactory
import com.squareup.moshi.Moshi

class MainActivity : AppCompatActivity() {

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_main)

    val moshi = Moshi.Builder().add(KotlinJsonAdapterFactory()).build()
    val adapter = moshi.adapter(Point::class.java)
    val json = """{
        |"x_value":2,
        |"y_value":3
      |}""".trimMargin()
    val stuff2 = adapter.fromJson(json)!!

    println(stuff2)
  }
}
