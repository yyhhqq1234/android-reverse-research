package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.util.YixinConstants;

/* loaded from: classes.dex */
public abstract class BaseResp {
    public int errCode;
    public String errStr;
    public String transaction;

    /* loaded from: classes.dex */
    public interface ErrCode {
        public static final int ERR_AUTH_DENIED = -4;
        public static final int ERR_COMM = -1;
        public static final int ERR_OK = 0;
        public static final int ERR_SENT_FAILED = -3;
        public static final int ERR_UNSUPPORT = -5;
        public static final int ERR_USER_CANCEL = -2;
    }

    public abstract boolean checkArgs();

    public abstract int getType();

    public void toBundle(Bundle paramBundle) {
        paramBundle.putInt(YixinConstants.INTENT_EXTRA_KEY_REQ_CMD_TYPE, getType());
        paramBundle.putInt(YixinConstants.INTENT_EXTRA_KEY_RESP_ERROR_CODE, this.errCode);
        paramBundle.putString(YixinConstants.INTENT_EXTRA_KEY_RESP_ERROR_STRING, this.errStr);
        paramBundle.putString(YixinConstants.INTENT_EXTRA_KEY_RESP_TRANSCACTION_ID, this.transaction);
    }

    public void fromBundle(Bundle paramBundle) {
        this.errCode = paramBundle.getInt(YixinConstants.INTENT_EXTRA_KEY_RESP_ERROR_CODE);
        this.errStr = paramBundle.getString(YixinConstants.INTENT_EXTRA_KEY_RESP_ERROR_STRING);
        this.transaction = paramBundle.getString(YixinConstants.INTENT_EXTRA_KEY_RESP_TRANSCACTION_ID);
    }
}
