package com.netease.download.util;

import com.netease.download.Const;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class TimeZoneUtil {
    private static final int RAW_OFFSET_EAST_8 = 28800000;

    private static int getTimeZoneRawOffset() {
        return TimeZone.getDefault().getRawOffset();
    }

    public static boolean isZoneEast8() {
        return RAW_OFFSET_EAST_8 == getTimeZoneRawOffset();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
