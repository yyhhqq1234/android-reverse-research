package com.netease.codescanner.common.a;

import android.os.AsyncTask;

/* loaded from: classes.dex */
public final class c implements a {
    @Override // com.netease.codescanner.common.a.a
    public <T> void a(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
        asyncTask.execute(tArr);
    }
}
