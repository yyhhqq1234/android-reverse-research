package com.netease.dwrg;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import com.netease.neox.NativeInterface;

/* compiled from: Client.java */
/* loaded from: classes.dex */
class AudioVolumeContentObserver extends ContentObserver {
    private Context mContext;
    private Handler mHandler;
    public int m_pre_ringermode;
    public int m_pre_volume;

    public AudioVolumeContentObserver(Context context, Handler handler) {
        super(handler);
        this.m_pre_volume = -1;
        this.m_pre_ringermode = -1;
        this.mContext = context;
        this.mHandler = handler;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean selfChange) {
        super.onChange(selfChange);
        AudioManager audio = (AudioManager) this.mContext.getSystemService("audio");
        if (audio != null) {
            int volume = audio.getStreamVolume(3);
            if (this.m_pre_volume > 0 && volume == 0) {
                NativeInterface.NativeOnVolumeSilent(1);
            } else if (this.m_pre_volume == 0 && volume > 0) {
                NativeInterface.NativeOnVolumeSilent(0);
            }
            this.m_pre_volume = volume;
            int ringermode = audio.getRingerMode();
            if (ringermode != this.m_pre_ringermode) {
                NativeInterface.NativeOnRingerMode(ringermode);
                this.m_pre_ringermode = ringermode;
            }
        }
    }
}
