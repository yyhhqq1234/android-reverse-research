package com.netease.pushservice;

import android.telephony.PhoneStateListener;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;

/* loaded from: classes.dex */
public class PhoneStateChangeListener extends PhoneStateListener {
    private static final String TAG = "NGPush_" + PhoneStateChangeListener.class.getSimpleName();

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    @Override // android.telephony.PhoneStateListener
    public void onDataConnectionStateChanged(int state) {
        super.onDataConnectionStateChanged(state);
        Log.d(TAG, "onDataConnectionStateChanged");
        Log.d(TAG, "state = " + state + ", " + getState(state));
        if (2 == state) {
            PushServiceHelper.getInstance().connect(false);
        }
    }

    private String getState(int state) {
        switch (state) {
            case 0:
                return "DATA_DISCONNECTED";
            case 1:
                return "DATA_CONNECTING";
            case 2:
                return "DATA_CONNECTED";
            case 3:
                return "DATA_SUSPENDED";
            default:
                return "state unknown";
        }
    }
}
