package com.applovin.impl;

import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class oj implements SensorEventListener, AppLovinBroadcastManager.Receiver {
    private final int a;
    private final float b;
    private final SensorManager c;
    private final Sensor d;
    private final Sensor f;
    private final com.applovin.impl.sdk.j g;
    private float[] h;
    private float i;

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public oj(com.applovin.impl.sdk.j jVar) {
        this.g = jVar;
        SensorManager sensorManager = (SensorManager) com.applovin.impl.sdk.j.m().getSystemService("sensor");
        this.c = sensorManager;
        this.d = sensorManager.getDefaultSensor(9);
        this.f = sensorManager.getDefaultSensor(4);
        this.a = ((Integer) jVar.a(sj.h4)).intValue();
        this.b = ((Float) jVar.a(sj.g4)).floatValue();
    }

    public void c() {
        if (Boolean.parseBoolean(this.g.f0().getExtraParameters().get("disable_sensor_data_collection"))) {
            return;
        }
        this.c.unregisterListener(this);
        if (((Boolean) this.g.g0().a(sj.d4)).booleanValue()) {
            a(this.d);
        }
        if (((Boolean) this.g.g0().a(sj.e4)).booleanValue()) {
            a(this.f);
        }
        AppLovinBroadcastManager.unregisterReceiver(this);
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    public float b() {
        return this.i;
    }

    public float a() {
        float[] fArr = this.h;
        if (fArr == null) {
            return 0.0f;
        }
        return (float) Math.toDegrees(Math.acos(fArr[2] / 9.81f));
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 9) {
            this.h = sensorEvent.values;
        } else if (sensorEvent.sensor.getType() == 4) {
            float f = this.i * this.b;
            this.i = f;
            this.i = f + Math.abs(sensorEvent.values[0]) + Math.abs(sensorEvent.values[1]) + Math.abs(sensorEvent.values[2]);
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.c.unregisterListener(this);
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            c();
        }
    }

    private void a(Sensor sensor) {
        try {
            this.c.registerListener(this, sensor, (int) TimeUnit.MILLISECONDS.toMicros(this.a));
        } catch (Throwable th) {
            this.g.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.g.I().a("SensorDataManager", "Unable to register sensor listener", th);
            }
        }
    }
}
