package com.netease.dwrg;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/* compiled from: Client.java */
/* loaded from: classes.dex */
class MediaContentObserver extends ContentObserver {
    private Uri mContentUri;
    private Context mContext;

    public MediaContentObserver(Context context, Uri contentUri, Handler handler) {
        super(handler);
        this.mContentUri = contentUri;
        this.mContext = context;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean selfChange) {
        super.onChange(selfChange);
        Client c = (Client) this.mContext;
        c.handleMediaContentChange(this.mContentUri);
    }
}
