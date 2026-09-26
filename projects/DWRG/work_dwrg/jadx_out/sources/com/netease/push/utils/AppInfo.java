package com.netease.push.utils;

import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.proto.ProtoClientWrapper;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class AppInfo {
    public static final boolean DEFAULT_FIRST_START = true;
    public static final long DEFAULT_RECEIVE_TIME = 0;
    public static final boolean DEFAULT_REPEAT_PROTECT = false;
    public static final boolean DEFAULT_SOUND = false;
    public static final boolean DEFAULT_VIBREATE = true;
    private static final int MAX_SECOND = 300;
    private static final String TAG = "NGPush_" + AppInfo.class.getSimpleName();
    public long mLastReceiveTime;
    public String mPackageName;
    public boolean mbEnableSound;
    public boolean mbEnableVibrate;
    public boolean mbFirstStart;
    public boolean mbRepeatProtect;
    private LinkedList<ProtoClientWrapper.Message> messageList;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public AppInfo() {
        this.mPackageName = "";
        this.mbEnableSound = false;
        this.mbEnableVibrate = true;
        this.mbRepeatProtect = false;
        this.mbFirstStart = true;
        this.mLastReceiveTime = 0L;
        this.messageList = null;
        clear();
    }

    public AppInfo(String packageName) {
        this.mPackageName = "";
        this.mbEnableSound = false;
        this.mbEnableVibrate = true;
        this.mbRepeatProtect = false;
        this.mbFirstStart = true;
        this.mLastReceiveTime = 0L;
        this.messageList = null;
        this.mPackageName = packageName;
        clear();
    }

    public void clear() {
        this.mbEnableSound = false;
        this.mbEnableVibrate = true;
        this.mbRepeatProtect = false;
        this.mbFirstStart = true;
        this.mLastReceiveTime = 0L;
    }

    public boolean filterMessage(ProtoClientWrapper.Message insertMessage) {
        boolean bFilter = false;
        if (this.mbRepeatProtect) {
            if (this.messageList == null) {
                this.messageList = new LinkedList<>();
            }
            int removeCount = 0;
            long borderTime = insertMessage.time - 300;
            Iterator<ProtoClientWrapper.Message> it = this.messageList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ProtoClientWrapper.Message message = it.next();
                if (message.time < borderTime) {
                    removeCount++;
                } else if (message.content.equals(insertMessage.content) && message.title.equals(insertMessage.title)) {
                    bFilter = true;
                    break;
                }
            }
            if (!bFilter) {
                this.messageList.add(insertMessage);
            }
            for (int i = 0; i < removeCount; i++) {
                this.messageList.removeFirst();
            }
        }
        return bFilter;
    }
}
