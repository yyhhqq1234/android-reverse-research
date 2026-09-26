package com.netease.epay.sdk.base.util;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/* loaded from: classes.dex */
public class SmsObserver extends ContentObserver {
    public static final int MSG_RECEIVED_CODE = 1001;
    Context mContext;
    private Handler mHandler;

    public SmsObserver(Handler handler, Context context) {
        super(null);
        this.mHandler = handler;
        this.mContext = context;
    }

    public void registerSMSObserver() {
        Uri parse = Uri.parse("content://sms");
        if (this.mContext != null) {
            this.mContext.getContentResolver().registerContentObserver(parse, true, this);
        }
    }

    public void unregisterSMSObserver() {
        if (this.mContext != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this);
        }
        if (this.mHandler != null) {
            this.mHandler = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009e  */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.content.ContentResolver] */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v5, types: [android.database.Cursor] */
    @Override // android.database.ContentObserver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onChange(boolean r8, android.net.Uri r9) {
        /*
            r7 = this;
            r6 = 0
            super.onChange(r8, r9)
            java.lang.String r0 = r9.toString()
            java.lang.String r1 = "content://sms/raw"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L11
        L10:
            return
        L11:
            java.lang.String r0 = "content://sms/inbox"
            android.net.Uri r1 = android.net.Uri.parse(r0)
            android.content.Context r0 = r7.mContext     // Catch: java.lang.SecurityException -> L68 java.lang.Exception -> L8e java.lang.Throwable -> L9a
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.SecurityException -> L68 java.lang.Exception -> L8e java.lang.Throwable -> L9a
            r2 = 0
            r3 = 0
            r4 = 0
            java.lang.String r5 = "date desc"
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.SecurityException -> L68 java.lang.Exception -> L8e java.lang.Throwable -> L9a
            if (r1 == 0) goto L62
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
            if (r0 == 0) goto L62
            java.lang.String r0 = "body"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
            if (r2 != 0) goto L53
            java.lang.String r2 = "(\\d{6,6})"
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
            java.util.regex.Matcher r0 = r2.matcher(r0)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
            boolean r2 = r0.find()     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
            if (r2 == 0) goto L53
            r2 = 0
            java.lang.String r6 = r0.group(r2)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
        L53:
            android.os.Handler r0 = r7.mHandler     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
            if (r0 == 0) goto L62
            android.os.Handler r0 = r7.mHandler     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
            r2 = 1001(0x3e9, float:1.403E-42)
            android.os.Message r0 = r0.obtainMessage(r2, r6)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
            r0.sendToTarget()     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La4 java.lang.SecurityException -> La6
        L62:
            if (r1 == 0) goto L10
            r1.close()
            goto L10
        L68:
            r0 = move-exception
            r1 = r6
        L6a:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La2
            r2.<init>()     // Catch: java.lang.Throwable -> La2
            java.lang.Class r3 = r7.getClass()     // Catch: java.lang.Throwable -> La2
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Throwable -> La2
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> La2
            java.lang.String r3 = "获取短信权限失败"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> La2
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> La2
            com.netease.epay.sdk.base.util.LogUtil.e(r2, r0)     // Catch: java.lang.Throwable -> La2
            if (r1 == 0) goto L10
            r1.close()
            goto L10
        L8e:
            r0 = move-exception
            r1 = r6
        L90:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> La2
            if (r1 == 0) goto L10
            r1.close()
            goto L10
        L9a:
            r0 = move-exception
            r1 = r6
        L9c:
            if (r1 == 0) goto La1
            r1.close()
        La1:
            throw r0
        La2:
            r0 = move-exception
            goto L9c
        La4:
            r0 = move-exception
            goto L90
        La6:
            r0 = move-exception
            goto L6a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.epay.sdk.base.util.SmsObserver.onChange(boolean, android.net.Uri):void");
    }
}
