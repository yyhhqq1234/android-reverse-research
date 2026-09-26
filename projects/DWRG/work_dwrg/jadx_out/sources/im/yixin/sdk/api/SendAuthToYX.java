package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.util.SDKHttpUtils;

/* loaded from: classes.dex */
public final class SendAuthToYX {

    /* loaded from: classes.dex */
    public static class Resp extends BaseResp {
        public String code;
        public String state;

        public Resp() {
        }

        public Resp(Bundle paramBundle) {
            fromBundle(paramBundle);
        }

        @Override // im.yixin.sdk.api.BaseResp
        public int getType() {
            return 2;
        }

        @Override // im.yixin.sdk.api.BaseResp
        public void fromBundle(Bundle paramBundle) {
            super.fromBundle(paramBundle);
            this.code = paramBundle.getString("_yxapi_sendauthtoyx_resp_code");
            this.state = paramBundle.getString("_yxapi_sendauthtoyx_resp_state");
        }

        @Override // im.yixin.sdk.api.BaseResp
        public void toBundle(Bundle paramBundle) {
            super.toBundle(paramBundle);
            paramBundle.putString("_yxapi_sendauthtoyx_resp_code", this.code);
            paramBundle.putString("_yxapi_sendauthtoyx_resp_state", this.state);
        }

        @Override // im.yixin.sdk.api.BaseResp
        public final boolean checkArgs() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class Req extends BaseReq {
        public String redirectUrl;
        public String scope;
        public String state;

        public Req() {
        }

        public Req(Bundle paramBundle) {
            fromBundle(paramBundle);
        }

        @Override // im.yixin.sdk.api.BaseReq
        public int getType() {
            return 2;
        }

        @Override // im.yixin.sdk.api.BaseReq
        public final boolean checkArgs(ExceptionInfo info) {
            if (this.scope != null && this.scope.length() > 1024) {
                info.appendReason("scope.length > 1024 ");
                SDKHttpUtils.getInstance().get4ErrorLog(Req.class, info.getReason());
                return false;
            }
            if (this.state != null && this.state.length() > 1024) {
                info.appendReason("state.length > 1024 ");
                SDKHttpUtils.getInstance().get4ErrorLog(Req.class, info.getReason());
                return false;
            }
            if (this.redirectUrl != null && this.redirectUrl.length() > 10240) {
                info.appendReason("redirectUrl.length > 10240 ");
                SDKHttpUtils.getInstance().get4ErrorLog(Req.class, info.getReason());
                return false;
            }
            return true;
        }

        @Override // im.yixin.sdk.api.BaseReq
        public void fromBundle(Bundle paramBundle) {
            super.fromBundle(paramBundle);
            this.scope = paramBundle.getString("_yxapi_sendauthtoyx_req_scope");
            this.state = paramBundle.getString("_yxapi_sendauthtoyx_req_state");
        }

        @Override // im.yixin.sdk.api.BaseReq
        public void toBundle(Bundle paramBundle) {
            super.toBundle(paramBundle);
            paramBundle.putString("_yxapi_sendauthtoyx_req_scope", this.scope);
            paramBundle.putString("_yxapi_sendauthtoyx_req_state", this.state);
        }
    }
}
