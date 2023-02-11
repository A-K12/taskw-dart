package info.tangential.task

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.TransparencyMode
import io.flutter.embedding.android.FlutterActivityLaunchConfigs.BackgroundMode.transparent
import android.os.Bundle

class MainActivity: FlutterActivity() {
    override fun getTransparencyMode(): TransparencyMode {
        return TransparencyMode.transparent
    }
}
