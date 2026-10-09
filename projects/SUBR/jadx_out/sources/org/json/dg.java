package org.json;

/* JADX INFO: loaded from: classes3.dex */
public class dg {

    public enum a {
        None,
        Device,
        Controller
    }

    public enum b {
        None,
        Loading,
        Loaded,
        Ready,
        Failed
    }

    public enum c {
        Web,
        Native,
        None
    }

    public enum d {
        MODE_0(0),
        MODE_1(1),
        MODE_2(2),
        MODE_3(3);

        private int a;

        d(int i) {
            this.a = i;
        }

        public int a() {
            return this.a;
        }
    }

    public enum e {
        Banner,
        Interstitial,
        RewardedVideo,
        NativeAd,
        None
    }
}
