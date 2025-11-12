package com.primetag.jawad_driver;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.os.Build;
import io.flutter.embedding.android.FlutterActivity;

public class MainActivity extends FlutterActivity {
    @Override
    protected void onCreate(android.os.Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
         createNotificationChannel();
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel(
                    "foreground_channel",
                    "Driver Service Active",
                    NotificationManager.IMPORTANCE_LOW
            );
            channel.setDescription("Running in background");

            NotificationManager manager = getSystemService(NotificationManager.class);
            manager.createNotificationChannel(channel);
        }
    }
}