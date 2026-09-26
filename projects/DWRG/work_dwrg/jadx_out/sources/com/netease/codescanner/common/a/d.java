package com.netease.codescanner.common.a;

import android.annotation.TargetApi;
import android.os.AsyncTask;

/* loaded from: classes.dex */
public final class d implements a {
    @Override // com.netease.codescanner.common.a.a
    @TargetApi(11)
    public <T> void a(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
        asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, tArr);
    }
}
