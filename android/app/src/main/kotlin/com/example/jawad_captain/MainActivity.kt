package com.primetag.jawad_driver


import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import androidx.core.content.ContextCompat
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {

    override fun onCreate(savedInstanceState: android.os.Bundle?) {
        super.onCreate(savedInstanceState)
        startForegroundService()
    }

    private fun startForegroundService() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                "foreground_channel",
                "Driver Service",
                NotificationManager.IMPORTANCE_LOW
            )
            val manager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            manager.createNotificationChannel(channel)

            val intent = Intent(this, MyNativeForegroundService::class.java)
            ContextCompat.startForegroundService(this, intent)
        }
    }
}

// الخدمة نفسها
class MyNativeForegroundService : Service() {

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val notification = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            Notification.Builder(this, "foreground_channel")
                .setContentTitle("Driver Service Active")
                .setContentText("Running in background")
                .setSmallIcon(R.mipmap.ic_launcher)
                .build()
        } else {
            Notification.Builder(this)
                .setContentTitle("Driver Service Active")
                .setContentText("Running in background")
                .setSmallIcon(R.mipmap.ic_launcher)
                .build()
        }

        startForeground(888, notification)
        return START_STICKY
    }
}
