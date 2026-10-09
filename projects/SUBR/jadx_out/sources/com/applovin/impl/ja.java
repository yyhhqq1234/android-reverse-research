package com.applovin.impl;

import com.google.common.primitives.Ints;

/* JADX INFO: loaded from: classes.dex */
abstract class ja {
    static int a(int i, double d) {
        int iMax = Math.max(i, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax <= ((int) (d * ((double) iHighestOneBit)))) {
            return iHighestOneBit;
        }
        int i2 = iHighestOneBit << 1;
        return i2 > 0 ? i2 : Ints.MAX_POWER_OF_TWO;
    }

    static int a(int i) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i) * (-862048943)), 15)) * 461845907);
    }

    static int a(Object obj) {
        return a(obj == null ? 0 : obj.hashCode());
    }
}
