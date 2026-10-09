package org.json;

import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;

/* JADX INFO: loaded from: classes3.dex */
class vb {
    static final String a = "ironbeast";
    static final String b = "outcome";
    static final int c = 3;
    static final int d = 2;
    static final int e = 0;

    vb() {
    }

    static e a(String str, int i) {
        if (a.equals(str)) {
            return new ij(i);
        }
        if ("outcome".equals(str)) {
            return new sn(i);
        }
        if (i == 2) {
            return new ij(i);
        }
        if (i == 3) {
            return new sn(i);
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.NATIVE, "EventsFormatterFactory failed to instantiate a formatter (type: " + str + ", adUnit: " + i + ")", 2);
        return null;
    }
}
