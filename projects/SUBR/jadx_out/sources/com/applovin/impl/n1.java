package com.applovin.impl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class n1 {
    public static final n1 c = new n1(new int[]{2}, 8);
    private static final n1 d = new n1(new int[]{2, 5, 6}, 8);
    private static final int[] e = {5, 6, 18, 17, 14, 7, 8};
    private final int[] a;
    private final int b;

    private static final class a {
        public static int[] a() {
            db.a aVarF = db.f();
            for (int i : n1.e) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(i).setSampleRate(48000).build(), new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build())) {
                    aVarF.b(Integer.valueOf(i));
                }
            }
            aVarF.b(2);
            return tb.a(aVarF.a());
        }
    }

    private static boolean b() {
        if (xp.a >= 17) {
            String str = xp.c;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.b + ", supportedEncodings=" + Arrays.toString(this.a) + com.ironsource.y8.i.e;
    }

    public static n1 a(Context context) {
        return a(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    public n1(int[] iArr, int i) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.a = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.a = new int[0];
        }
        this.b = i;
    }

    public int c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n1)) {
            return false;
        }
        n1 n1Var = (n1) obj;
        return Arrays.equals(this.a, n1Var.a) && this.b == n1Var.b;
    }

    public int hashCode() {
        return this.b + (Arrays.hashCode(this.a) * 31);
    }

    public boolean a(int i) {
        return Arrays.binarySearch(this.a, i) >= 0;
    }

    static n1 a(Context context, Intent intent) {
        if (b() && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
            return d;
        }
        if (xp.a >= 29 && xp.d(context)) {
            return new n1(a.a(), 8);
        }
        if (intent != null && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 0) {
            return new n1(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return c;
    }
}
