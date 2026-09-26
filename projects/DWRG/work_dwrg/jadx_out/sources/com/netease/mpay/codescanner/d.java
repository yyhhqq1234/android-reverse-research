package com.netease.mpay.codescanner;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Vibrator;
import com.dodola.rocoo.Hack;
import com.netease.codescanner.common.Logging;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d implements MediaPlayer.OnErrorListener {
    private final Activity a;
    private MediaPlayer b;
    private boolean c;

    public d(Activity activity) {
        this.a = activity;
        this.b = null;
        if (((AudioManager) this.a.getSystemService("audio")).getRingerMode() == 2) {
            this.c = true;
        } else {
            this.c = false;
        }
        if (this.c && this.b == null) {
            this.a.setVolumeControlStream(3);
            this.b = a(this.a);
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private MediaPlayer a(Context context) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioStreamType(3);
        mediaPlayer.setOnErrorListener(this);
        AssetFileDescriptor openRawResourceFd = context.getResources().openRawResourceFd(context.getResources().getIdentifier("netease_mpay__login_scanner_shutter", "raw", context.getPackageName()));
        try {
            mediaPlayer.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
            openRawResourceFd.close();
            mediaPlayer.setVolume(0.2f, 0.2f);
            mediaPlayer.prepare();
            return mediaPlayer;
        } catch (IOException e) {
            Logging.e(e.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a() {
        if (this.c && this.b != null) {
            this.b.seekTo(0);
            this.b.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b() {
        ((Vibrator) this.a.getSystemService("vibrator")).vibrate(200L);
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public synchronized boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        if (i == 100) {
            this.a.finish();
        } else {
            mediaPlayer.release();
            this.b = null;
        }
        return true;
    }
}
