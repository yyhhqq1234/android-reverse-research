package com.netease.dwrg;

import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import com.alipay.android.phone.mrpc.core.Headers;
import com.netease.neox.NativeInterface;

/* loaded from: classes.dex */
public class NeoXLocationManager {
    LocationManager locationManager = null;
    boolean gps_enabled = false;
    boolean network_enabled = false;
    private final NeoXLocationListener locationListenerGps = new NeoXLocationListener();
    private final NeoXLocationListener locationListenerNetwork = new NeoXLocationListener();

    /* loaded from: classes.dex */
    class NeoXLocationListener implements LocationListener {
        NeoXLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            NeoXLocationManager.this.locationChanged(location);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String provider) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String provider) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String provider, int status, Bundle extras) {
        }
    }

    public boolean startUpdatingLocation(Context context) {
        if (this.locationManager == null) {
            this.locationManager = (LocationManager) context.getSystemService(Headers.LOCATION);
        }
        try {
            this.gps_enabled = this.locationManager.isProviderEnabled("gps");
        } catch (Exception e) {
        }
        try {
            this.network_enabled = this.locationManager.isProviderEnabled("network");
        } catch (Exception e2) {
        }
        if (!this.gps_enabled && !this.network_enabled) {
            return false;
        }
        try {
            if (this.gps_enabled) {
                this.locationManager.requestLocationUpdates("gps", 0L, 0.0f, this.locationListenerGps, Looper.getMainLooper());
            }
            if (this.network_enabled) {
                this.locationManager.requestLocationUpdates("network", 0L, 0.0f, this.locationListenerNetwork, Looper.getMainLooper());
            }
            return true;
        } catch (Exception e3) {
            return false;
        }
    }

    public void stopUpdatingLocation(Context context) {
        if (this.locationManager != null) {
            if (this.gps_enabled) {
                this.locationManager.removeUpdates(this.locationListenerGps);
            }
            if (this.network_enabled) {
                this.locationManager.removeUpdates(this.locationListenerNetwork);
            }
        }
    }

    public void openLocationSetting(Context context) {
        context.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void locationChanged(Location location) {
        if (location != null) {
            double longitude = location.getLongitude();
            double latitude = location.getLatitude();
            NativeInterface.NativeOnLocationUpdated(longitude, latitude, System.currentTimeMillis() / 1000.0d);
        }
    }
}
