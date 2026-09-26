package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.api.YXMessage;

/* loaded from: classes.dex */
public final class SendMessageToYX {

    /* loaded from: classes.dex */
    public static class Resp extends BaseResp {
        public Resp() {
        }

        public Resp(Bundle paramBundle) {
            fromBundle(paramBundle);
        }

        @Override // im.yixin.sdk.api.BaseResp
        public int getType() {
            return 1;
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
        public static final int YXCollect = 2;
        public static final int YXSceneSession = 0;
        public static final int YXSceneTimeline = 1;
        public YXMessage message;
        public int scene;

        public Req() {
        }

        public Req(Bundle paramBundle) {
            fromBundle(paramBundle);
        }

        @Override // im.yixin.sdk.api.BaseReq
        public int getType() {
            return 1;
        }

        @Override // im.yixin.sdk.api.BaseReq
        public void fromBundle(Bundle paramBundle) {
            super.fromBundle(paramBundle);
            this.message = YXMessage.Converter.read(paramBundle);
            this.scene = paramBundle.getInt("_yxapi_sendmessagetoyx_req_scene");
        }

        @Override // im.yixin.sdk.api.BaseReq
        public void toBundle(Bundle paramBundle) {
            super.toBundle(paramBundle);
            paramBundle.putAll(YXMessage.Converter.write(this.message));
            paramBundle.putInt("_yxapi_sendmessagetoyx_req_scene", this.scene);
        }

        @Override // im.yixin.sdk.api.BaseReq
        public final boolean checkArgs(ExceptionInfo info) {
            return this.message != null && this.message.verifyData(info);
        }
    }
}
