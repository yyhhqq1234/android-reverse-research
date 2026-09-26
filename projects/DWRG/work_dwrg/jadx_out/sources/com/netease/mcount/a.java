package com.netease.mcount;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;

/* loaded from: classes.dex */
public class a {
    static boolean a = false;

    public static void a(Context context, long j, Class cls, String str) {
        if (a) {
            return;
        }
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        Intent intent = new Intent(context, (Class<?>) cls);
        intent.setAction(str);
        alarmManager.setRepeating(3, SystemClock.elapsedRealtime(), j, PendingIntent.getService(context, 0, intent, 134217728));
        a = true;
    }

    public static void a(Context context, Class cls, String str) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        Intent intent = new Intent(context, (Class<?>) cls);
        intent.setAction(str);
        intent.putExtra("0", h.c);
        alarmManager.cancel(PendingIntent.getService(context, 0, intent, 134217728));
        a = false;
    }
}
