package com.netease.mpay.widget;

import android.os.AsyncTask;
import android.os.Handler;
import com.dodola.rocoo.Hack;
import com.netease.download.Const;
import com.netease.mpay.Cdo;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class am {
    private String e;
    private Handler f;
    private Runnable g;
    private StringBuilder j;
    private final int a = 20;
    private int b = 1;
    private int c = 0;
    private String d = "service.mkey.163.com";
    private a h = null;
    private ArrayList i = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends AsyncTask {
        private c b;
        private boolean c;

        public a(c cVar) {
            this.b = cVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private String b(String str) {
            String format = String.format("/system/bin/ping -c 1 -t %d ", Integer.valueOf(am.this.b));
            new b(this, am.this.b).execute(new Void[0]);
            Process exec = Runtime.getRuntime().exec(format + str);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            String str2 = "";
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                str2 = str2 + readLine + "\n";
            }
            exec.destroy();
            if (am.this.b == 1) {
                am.this.e = am.this.b(str2);
            }
            return str2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String doInBackground(Void... voidArr) {
            try {
                String b = b(am.this.d);
                publishProgress(am.this.a(b));
                return b;
            } catch (Exception e) {
                Cdo.a((Throwable) e);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(String str) {
            if (this.c) {
                return;
            }
            if (str == null || am.this.i == null || am.this.i.size() <= 0) {
                am.this.j.append("traceroute失败！");
                this.b.a(am.this.j.toString());
                return;
            }
            if (((String) ((HashMap) am.this.i.get(am.this.i.size() - 1)).get("ip")).equals(am.this.e)) {
                if (am.this.b < 20) {
                    am.this.b = 20;
                    this.b.a(am.this.j.toString());
                }
            } else if (am.this.b < 20) {
                am.i(am.this);
                am.this.h = new a(this.b);
                am.this.h.execute(new Void[0]);
            }
            am.k(am.this);
        }

        public void a(boolean z) {
            this.c = z;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onProgressUpdate(String... strArr) {
            HashMap hashMap = new HashMap();
            hashMap.put("ip", strArr[0]);
            am.this.i.add(hashMap);
            am.this.j.append("Address: " + strArr[0] + "\n");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends AsyncTask {
        private a b;
        private int c;

        public b(a aVar, int i) {
            this.b = aVar;
            this.c = i;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r5) {
            if (am.this.f == null) {
                am.this.f = new Handler();
            }
            if (am.this.g != null) {
                am.this.f.removeCallbacks(am.this.g);
            }
            am.this.g = new an(this);
            am.this.f.postDelayed(am.this.g, Const.ALARM_REPEAT_INTERVAL);
            super.onPostExecute(r5);
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(String str);
    }

    public am() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        if (!str.contains(HttpHeaders.Names.FROM)) {
            return str.substring(str.indexOf("(") + 1, str.indexOf(")"));
        }
        String substring = str.substring(str.indexOf(HttpHeaders.Names.FROM) + 5);
        if (substring.contains("(")) {
            return substring.substring(substring.indexOf("(") + 1, substring.indexOf(")"));
        }
        String substring2 = substring.substring(0, substring.indexOf("\n"));
        return substring2.substring(0, substring2.contains(Const.RESP_CONTENT_SPIT2) ? substring2.indexOf(Const.RESP_CONTENT_SPIT2) : substring2.indexOf(" "));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) {
        if (!str.contains("PING")) {
            return "";
        }
        return str.substring(str.indexOf("(") + 1, str.indexOf(")"));
    }

    private void b() {
        this.i = new ArrayList();
    }

    private void c() {
        this.b = 1;
        this.c = 0;
        this.e = null;
        this.i.clear();
        this.j = new StringBuilder();
    }

    static /* synthetic */ int i(am amVar) {
        int i = amVar.b;
        amVar.b = i + 1;
        return i;
    }

    static /* synthetic */ int k(am amVar) {
        int i = amVar.c;
        amVar.c = i + 1;
        return i;
    }

    public void a() {
        if (this.h != null) {
            this.h.a(true);
            this.h.cancel(true);
        }
    }

    public void a(c cVar) {
        b();
        if (this.d != null) {
            if (this.h != null && this.h.getStatus().equals(AsyncTask.Status.RUNNING)) {
                this.h.a(true);
                this.h.cancel(true);
            }
            c();
            this.h = new a(cVar);
            this.h.execute(new Void[0]);
        }
    }
}
