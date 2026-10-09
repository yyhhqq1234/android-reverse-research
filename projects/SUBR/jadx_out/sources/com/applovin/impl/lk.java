package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
abstract class lk {
    private static final int[] a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    private static boolean a(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579 && z) {
            return true;
        }
        for (int i2 : a) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(k8 k8Var) {
        return a(k8Var, true, false);
    }

    private static boolean a(k8 k8Var, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        int i;
        long jA = k8Var.a();
        long j = 4096;
        long j2 = -1;
        int i2 = (jA > (-1L) ? 1 : (jA == (-1L) ? 0 : -1));
        if (i2 != 0 && jA <= 4096) {
            j = jA;
        }
        int i3 = (int) j;
        ah ahVar = new ah(64);
        boolean z5 = false;
        int i4 = 0;
        boolean z6 = false;
        while (true) {
            if (i4 < i3) {
                ahVar.d(8);
                if (k8Var.b(ahVar.c(), z5 ? 1 : 0, 8, true)) {
                    long jY = ahVar.y();
                    int iJ = ahVar.j();
                    if (jY == 1) {
                        k8Var.c(ahVar.c(), 8, 8);
                        ahVar.e(16);
                        jY = ahVar.s();
                        i = 16;
                    } else {
                        if (jY == 0) {
                            long jA2 = k8Var.a();
                            if (jA2 != j2) {
                                jY = (jA2 - k8Var.d()) + ((long) 8);
                            }
                        }
                        i = 8;
                    }
                    long j3 = i;
                    if (jY < j3) {
                        return z5;
                    }
                    i4 += i;
                    if (iJ == 1836019574) {
                        i3 += (int) jY;
                        if (i2 != 0 && i3 > jA) {
                            i3 = (int) jA;
                        }
                        j2 = -1;
                    } else {
                        if (iJ == 1836019558 || iJ == 1836475768) {
                            z3 = true;
                            z4 = true;
                            if (z6 || z != z4) {
                                return false;
                            }
                            return z3;
                        }
                        int i5 = i2;
                        if ((((long) i4) + jY) - j3 < i3) {
                            int i6 = (int) (jY - j3);
                            i4 += i6;
                            if (iJ == 1718909296) {
                                if (i6 < 8) {
                                    return false;
                                }
                                ahVar.d(i6);
                                k8Var.c(ahVar.c(), 0, i6);
                                int i7 = i6 / 4;
                                for (int i8 = 0; i8 < i7; i8++) {
                                    if (i8 == 1) {
                                        ahVar.g(4);
                                    } else if (a(ahVar.j(), z2)) {
                                        z6 = true;
                                        break;
                                    }
                                }
                                if (!z6) {
                                    return false;
                                }
                            } else if (i6 != 0) {
                                k8Var.c(i6);
                            }
                            i2 = i5;
                            j2 = -1;
                            z5 = false;
                        }
                    }
                }
            }
            z3 = true;
            z4 = false;
            if (z6) {
            }
            return false;
        }
    }

    public static boolean a(k8 k8Var, boolean z) {
        return a(k8Var, false, z);
    }
}
