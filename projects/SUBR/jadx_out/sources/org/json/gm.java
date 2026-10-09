package org.json;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public class gm implements ke {
    private String a = "gm";
    private int b = 23;
    private final le c;
    private ConnectivityManager.NetworkCallback d;

    class a extends ConnectivityManager.NetworkCallback {
        final /* synthetic */ Context a;

        a(Context context) {
            this.a = context;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            if (network != null) {
                gm.this.c.a(v8.a(network, this.a), v8.a(this.a, network));
                return;
            }
            le leVar = gm.this.c;
            String strB = v8.b(this.a);
            Context context = this.a;
            leVar.a(strB, v8.a(context, v8.a(context)));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            if (network != null) {
                gm.this.c.b(v8.a(network, this.a), v8.a(this.a, network));
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
            if (network != null) {
                gm.this.c.b(v8.a(network, this.a), v8.a(this.a, network));
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            if (v8.b(this.a).equals("none")) {
                gm.this.c.a();
            }
        }
    }

    public gm(le leVar) {
        this.c = leVar;
    }

    @Override // org.json.ke
    public void a() {
        this.d = null;
    }

    @Override // org.json.ke
    public void a(Context context) {
        ConnectivityManager connectivityManager;
        if (Build.VERSION.SDK_INT < this.b || this.d == null || context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return;
        }
        try {
            connectivityManager.unregisterNetworkCallback(this.d);
        } catch (Exception e) {
            l9.d().a(e);
            Log.e(this.a, "NetworkCallback for was not registered or already unregistered");
        }
    }

    @Override // org.json.ke
    public void b(Context context) {
        if (Build.VERSION.SDK_INT >= this.b) {
            a(context);
            if (v8.b(context).equals("none")) {
                this.c.a();
            }
            if (this.d == null) {
                this.d = new a(context);
            }
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).build();
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    connectivityManager.registerNetworkCallback(networkRequestBuild, this.d);
                }
            } catch (Exception e) {
                l9.d().a(e);
                Log.e(this.a, "NetworkCallback was not able to register");
            }
        }
    }

    @Override // org.json.ke
    public JSONObject c(Context context) {
        return v8.a(context, v8.a(context));
    }
}
