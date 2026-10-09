package com.applovin.impl;

import com.applovin.impl.sdk.utils.StringUtils;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class qg {
    private static final AtomicReference a = new AtomicReference();

    public static String a() {
        return "iabtechlab-Applovin";
    }

    public static URL b() {
        try {
            return new URL("https://compliance.iabtechnologylab.com/compliance-js/omid-validation-verification-script-v1-APPLOVIN-01102024.js");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String c() {
        return "iabtechlab.com-omid";
    }

    /* JADX WARN: Code duplicated, block: B:60:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String a(com.applovin.impl.sdk.j jVar) {
        InputStream inputStreamA;
        String str = (String) a.get();
        if (StringUtils.isValidString(str)) {
            return str;
        }
        URL urlB = b();
        BufferedReader bufferedReader = null;
        if (urlB == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (((Boolean) jVar.a(sj.z)).booleanValue()) {
            try {
                InputStream inputStreamA2 = jVar.A().a(urlB.toString(), (List) null, false, new u2());
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStreamA2));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(line);
                            sb.append("\n");
                        } catch (Throwable th) {
                            try {
                                bufferedReader2.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                        if (inputStreamA2 != null) {
                            try {
                                inputStreamA2.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th;
                    }
                    bufferedReader2.close();
                    if (inputStreamA2 != null) {
                        inputStreamA2.close();
                    }
                } catch (Throwable th4) {
                    if (inputStreamA2 != null) {
                        inputStreamA2.close();
                    }
                    throw th4;
                }
            } catch (Throwable th5) {
                jVar.I().a("OpenMeasurementTestParameters", th5);
                jVar.D().a("OpenMeasurementTestParameters", "getTestValidationJavaScriptContent", th5);
            }
        } else {
            try {
                inputStreamA = jVar.A().a(urlB.toString(), (List) null, false, new u2());
                try {
                    BufferedReader bufferedReader3 = new BufferedReader(new InputStreamReader(inputStreamA));
                    while (true) {
                        try {
                            String line2 = bufferedReader3.readLine();
                            if (line2 == null) {
                                break;
                            }
                            sb.append(line2);
                            sb.append("\n");
                        } catch (Throwable unused) {
                            bufferedReader = bufferedReader3;
                            yp.a(inputStreamA, jVar);
                            yp.a(bufferedReader, jVar);
                        }
                    }
                    yp.a(inputStreamA, jVar);
                    yp.a(bufferedReader3, jVar);
                } catch (Throwable unused2) {
                }
            } catch (Throwable unused3) {
                inputStreamA = null;
            }
        }
        String string = sb.toString();
        a.set(string);
        return string;
    }
}
