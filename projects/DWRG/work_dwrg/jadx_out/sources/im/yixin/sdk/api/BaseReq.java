package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.util.YixinConstants;

/* loaded from: classes.dex */
public abstract class BaseReq {
    public String transaction;

    public abstract boolean checkArgs(ExceptionInfo exceptionInfo);

    public abstract int getType();

    public void toBundle(Bundle paramBundle) {
        paramBundle.putInt(YixinConstants.INTENT_EXTRA_KEY_REQ_CMD_TYPE, getType());
        paramBundle.putString(YixinConstants.INTENT_EXTRA_KEY_REQ_TRANSCACTION_ID, this.transaction);
    }

    public void fromBundle(Bundle paramBundle) {
        this.transaction = paramBundle.getString(YixinConstants.INTENT_EXTRA_KEY_REQ_TRANSCACTION_ID);
    }
}
