package com.netease.push.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class NotifyMessage implements Parcelable {
    public String mExt;
    public int mIcon;
    public String mMsg;
    public boolean mNative;
    public String mTitle;
    private static final String TAG = "NGPush_" + NotifyMessage.class.getSimpleName();
    public static final Parcelable.Creator<NotifyMessage> CREATOR = new Parcelable.Creator<NotifyMessage>() { // from class: com.netease.push.utils.NotifyMessage.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotifyMessage[] newArray(int size) {
            return new NotifyMessage[size];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotifyMessage createFromParcel(Parcel source) {
            return new NotifyMessage(source);
        }
    };

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public NotifyMessage(String message, String title) {
        this.mMsg = "";
        this.mTitle = "";
        this.mExt = "";
        this.mIcon = -1;
        this.mNative = false;
        this.mMsg = message;
        this.mTitle = title;
    }

    public NotifyMessage(String message, String title, String ext) {
        this.mMsg = "";
        this.mTitle = "";
        this.mExt = "";
        this.mIcon = -1;
        this.mNative = false;
        this.mMsg = message;
        this.mTitle = title;
        this.mExt = ext;
    }

    public NotifyMessage(Parcel parcel) {
        this.mMsg = "";
        this.mTitle = "";
        this.mExt = "";
        this.mIcon = -1;
        this.mNative = false;
        readFromParcel(parcel);
    }

    public NotifyMessage() {
        this.mMsg = "";
        this.mTitle = "";
        this.mExt = "";
        this.mIcon = -1;
        this.mNative = false;
        clear();
    }

    public void clear() {
        this.mMsg = "";
        this.mTitle = "";
        this.mExt = "";
        this.mNative = false;
    }

    public String toString() {
        return "content:" + this.mMsg + ",title:" + this.mTitle + ",ext:" + this.mExt + ",icon:" + this.mIcon;
    }

    public String writeToJsonString() throws JSONException {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("title", this.mTitle);
        jsonObject.put("content", this.mMsg);
        jsonObject.put(PushConstants.MESSAGE_EXT, this.mExt);
        jsonObject.put(PushConstants.MESSAGE_ICON, this.mIcon);
        return jsonObject.toString();
    }

    public static NotifyMessage readFromJsonString(String data) throws JSONException {
        JSONObject jsonObject = new JSONObject(data);
        String title = jsonObject.getString("title");
        String content = jsonObject.getString("content");
        String ext = jsonObject.getString(PushConstants.MESSAGE_EXT);
        int icon = jsonObject.optInt(PushConstants.MESSAGE_ICON, -1);
        NotifyMessage notify = new NotifyMessage(content, title, ext);
        notify.mIcon = icon;
        return notify;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mTitle);
        dest.writeString(this.mMsg);
        dest.writeString(this.mExt);
        dest.writeInt(this.mIcon);
    }

    public void readFromParcel(Parcel src) {
        this.mTitle = src.readString();
        this.mMsg = src.readString();
        this.mExt = src.readString();
        this.mIcon = src.readInt();
    }

    public static NotifyMessage getFrom(Intent intent) {
        Log.i(TAG, "getFrom");
        String title = intent.getStringExtra(PushConstants.NOTIFICATION_TITLE);
        String msg = intent.getStringExtra(PushConstants.NOTIFICATION_MESSAGE);
        String ext = intent.getStringExtra(PushConstants.NOTIFICATION_EXT);
        int icon = intent.getIntExtra(PushConstants.NOTIFICATION_ICON, -1);
        Log.d(TAG, "title=" + title);
        Log.d(TAG, "msg=" + msg);
        Log.d(TAG, "ext=" + ext);
        Log.d(TAG, "icon=" + icon);
        NotifyMessage notify = null;
        if (title == null || msg == null) {
            try {
                Class<?> clazz = Class.forName("com.netease.inner.pushclient.miui.MiuiPushClient");
                Method method = clazz.getMethod("getNotifyMessageFromIntent", Intent.class);
                notify = (NotifyMessage) method.invoke(null, intent);
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(TAG, "MiPush_SDK_Client jars not found");
            }
        }
        if (notify == null) {
            notify = new NotifyMessage(msg, title, ext);
        }
        notify.mIcon = icon;
        return notify;
    }

    public static NotifyMessage getFrom(Activity activity) {
        return getFrom(activity.getIntent());
    }
}
