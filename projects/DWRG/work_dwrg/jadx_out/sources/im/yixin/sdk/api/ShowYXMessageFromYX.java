package im.yixin.sdk.api;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ShowYXMessageFromYX {

    /* loaded from: classes.dex */
    public static class Resp extends BaseResp {
        public Resp() {
        }

        public Resp(Bundle paramBundle) {
            fromBundle(paramBundle);
        }

        @Override // im.yixin.sdk.api.BaseResp
        public int getType() {
            return 3;
        }

        @Override // im.yixin.sdk.api.BaseResp
        public void fromBundle(Bundle paramBundle) {
            super.fromBundle(paramBundle);
        }

        @Override // im.yixin.sdk.api.BaseResp
        public void toBundle(Bundle paramBundle) {
            super.toBundle(paramBundle);
        }

        @Override // im.yixin.sdk.api.BaseResp
        public final boolean checkArgs() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class Req extends BaseReq {
        public String extInfo;
        public String fileData;

        public Req() {
        }

        public Req(Bundle paramBundle) {
            fromBundle(paramBundle);
        }

        @Override // im.yixin.sdk.api.BaseReq
        public int getType() {
            return 3;
        }

        @Override // im.yixin.sdk.api.BaseReq
        public final boolean checkArgs(ExceptionInfo info) {
            return true;
        }

        @Override // im.yixin.sdk.api.BaseReq
        public void fromBundle(Bundle paramBundle) {
            super.fromBundle(paramBundle);
            this.extInfo = paramBundle.getString("_yxapi_onclickyxmessage_req_extinfo");
            this.fileData = paramBundle.getString("_yxapi_onclickyxmessage_req_filedata");
        }

        @Override // im.yixin.sdk.api.BaseReq
        public void toBundle(Bundle paramBundle) {
            super.toBundle(paramBundle);
            paramBundle.putString("_yxapi_onclickyxmessage_req_extinfo", this.extInfo);
            paramBundle.putString("_yxapi_onclickyxmessage_req_filedata", this.fileData);
        }
    }
}
