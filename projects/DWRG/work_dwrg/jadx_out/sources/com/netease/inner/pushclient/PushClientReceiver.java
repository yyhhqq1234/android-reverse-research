package com.netease.inner.pushclient;

import android.content.Intent;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.PushConstants;

/* loaded from: classes.dex */
public class PushClientReceiver {
    private static final String TAG = "NGPush_" + PushClientReceiver.class.getSimpleName();

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static Intent createMethodIntent() {
        Intent intent = new Intent(PushConstants.CLIENT_ACTION_METHOD);
        intent.addFlags(32);
        intent.putExtra(PushConstants.METHOD_VER_NAME, 1);
        return intent;
    }

    public static Intent createMessageIntent() {
        Intent intent = new Intent(PushConstants.CLIENT_ACTION_MESSAGE);
        intent.addFlags(32);
        intent.putExtra(PushConstants.MESSAGE_VER_NAME, 1);
        return intent;
    }

    public static Intent createNewIDIntent() {
        Intent intent = new Intent(PushConstants.CLIENT_ACTION_REFRESH_DEVID);
        intent.addFlags(32);
        intent.putExtra(PushConstants.NEWID_VER_NAME, 1);
        return intent;
    }
}
