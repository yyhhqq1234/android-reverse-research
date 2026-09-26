package im.yixin.sdk.api;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import im.yixin.sdk.util.SDKFeedBackUtils;
import im.yixin.sdk.util.SDKLogger;

/* loaded from: classes.dex */
public abstract class BaseYXEntryActivity extends Activity implements IYXAPICallbackEventHandler {
    protected abstract IYXAPI getIYXAPI();

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        SDKLogger.i(BaseYXEntryActivity.class, "onCreate(Bundle bundle)");
        super.onCreate(bundle);
        handleIntent();
    }

    @Override // android.app.Activity
    protected final void onNewIntent(Intent intent) {
        SDKLogger.i(BaseYXEntryActivity.class, "onNewIntent(Intent intent)");
        super.onNewIntent(intent);
        setIntent(intent);
        handleIntent();
    }

    private void handleIntent() {
        SDKLogger.i(BaseYXEntryActivity.class, "handleIntent()");
        IYXAPI api = getIYXAPI();
        if (api != null) {
            api.handleIntent(getIntent(), this);
        } else {
            SDKFeedBackUtils.getInstance().postErrorLog(BaseYXEntryActivity.class, "please don't return null by calling getIYXAPI()", null);
        }
    }
}
