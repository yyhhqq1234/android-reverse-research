package com.netease.mpay.widget;

import android.content.Context;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.download.Const;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.a.b;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ao {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {
        String a;
        ArrayList b;
        String c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;

        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public String a(Context context) {
            StringBuilder sb = new StringBuilder();
            sb.append("ping " + this.a);
            sb.append("\n");
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                sb.append((String) it.next());
                sb.append("\n");
            }
            sb.append("\n");
            sb.append(context.getString(RIdentifier.h.bK) + this.c + context.getString(RIdentifier.h.bJ) + this.d + context.getString(RIdentifier.h.bG) + this.e);
            sb.append("\n");
            sb.append(context.getString(RIdentifier.h.bI) + this.f + " ms");
            sb.append("\n");
            sb.append(context.getString(RIdentifier.h.bF) + this.g + " ms");
            sb.append("\n");
            sb.append(context.getString(RIdentifier.h.bH) + this.h + " ms");
            sb.append("\n");
            sb.append(context.getString(RIdentifier.h.bL) + this.i);
            return sb.toString();
        }
    }

    public static long a() {
        return Calendar.getInstance().getTimeInMillis();
    }

    private static a a(String str) {
        if (str == null) {
            return null;
        }
        a aVar = new a();
        aVar.a = str.substring(str.indexOf("(") + 1, str.indexOf(")"));
        aVar.b = new ArrayList();
        String str2 = "from " + aVar.a + Const.RESP_CONTENT_SPIT2;
        for (String str3 : str.split("\n")) {
            int indexOf = str3.indexOf(str2);
            if (indexOf > 0) {
                aVar.b.add(str3.substring(indexOf + str2.length()).trim());
            } else {
                int indexOf2 = str3.indexOf("packets transmitted");
                if (indexOf2 > 0) {
                    aVar.c = str3.substring(0, indexOf2).trim();
                    String[] split = str3.split(",");
                    for (String str4 : split) {
                        int indexOf3 = str4.indexOf("received");
                        if (indexOf3 > 0) {
                            aVar.d = str4.substring(0, indexOf3).trim();
                        }
                        int indexOf4 = str4.indexOf("packet loss");
                        if (indexOf4 > 0) {
                            aVar.e = str4.substring(0, indexOf4).trim();
                        }
                    }
                } else if (str3.indexOf("min/avg/max/mdev") > 0) {
                    String[] split2 = str3.split("=")[1].split("ms")[0].split("/");
                    if (split2.length == 4) {
                        aVar.f = split2[0].trim();
                        aVar.g = split2[1].trim();
                        aVar.h = split2[2].trim();
                        aVar.i = split2[3].trim();
                    }
                }
            }
        }
        return aVar;
    }

    public static String a(Context context) {
        String str = "";
        try {
            Process exec = Runtime.getRuntime().exec("/system/bin/ping -c 4 service.mkey.163.com");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            char[] cArr = new char[4096];
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read <= 0) {
                    break;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(cArr, 0, read);
                str = str + stringBuffer.toString();
            }
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(exec.getErrorStream()));
            while (true) {
                int read2 = bufferedReader2.read(cArr);
                if (read2 <= 0) {
                    bufferedReader2.close();
                    exec.destroy();
                    try {
                        try {
                            return a(str).a(context);
                        } catch (NullPointerException e) {
                            Cdo.a((Throwable) e);
                            return str;
                        }
                    } catch (IndexOutOfBoundsException e2) {
                        Cdo.a((Throwable) e2);
                        return str;
                    }
                }
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(cArr, 0, read2);
                str = str + stringBuffer2.toString();
            }
        } catch (Exception e3) {
            return context.getString(RIdentifier.h.bQ);
        }
    }

    private static boolean a(b.C0055b c0055b) {
        return c0055b != null && (c0055b.a == 200 || c0055b.a == 201);
    }

    public static long b() {
        return com.netease.mpay.widget.a.b.a();
    }

    private static b.C0055b b(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-type", "application/json");
        return com.netease.mpay.widget.a.b.a(0, str, hashMap, null, RpcException.ErrorCode.SERVER_SERVICENOTFOUND, RpcException.ErrorCode.SERVER_SERVICENOTFOUND);
    }

    public static String c() {
        try {
            return InetAddress.getByName("service.mkey.163.com").getHostAddress();
        } catch (UnknownHostException e) {
            return null;
        }
    }

    public static boolean d() {
        try {
            return a(b("http://service.mkey.163.com"));
        } catch (b.a e) {
            return false;
        }
    }

    public static boolean e() {
        try {
            return a(b("https://service.mkey.163.com"));
        } catch (b.a e) {
            return false;
        }
    }
}
