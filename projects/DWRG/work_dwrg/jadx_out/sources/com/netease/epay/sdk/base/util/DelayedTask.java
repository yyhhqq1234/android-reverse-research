package com.netease.epay.sdk.base.util;

import android.os.AsyncTask;

/* loaded from: classes.dex */
public class DelayedTask extends AsyncTask<Void, Void, Void> {
    public static boolean isFinished = false;
    private final IDelayedListener listener;
    private final int secondInMillis;

    /* loaded from: classes.dex */
    public interface IDelayedListener {
        void onDelayed();
    }

    public DelayedTask(int secondsInMillis, IDelayedListener listener) {
        this.secondInMillis = secondsInMillis;
        this.listener = listener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Void doInBackground(Void... params) {
        isFinished = false;
        try {
            Thread.sleep(this.secondInMillis);
            return null;
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Void aVoid) {
        isFinished = true;
        if (this.listener != null) {
            this.listener.onDelayed();
        }
    }
}
