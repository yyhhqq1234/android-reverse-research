package org.json;

import android.util.Log;
import android.util.Pair;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class zb {
    private static final String e = "EventsTracker";
    private fe a;
    private tb b;
    private we c;
    private ExecutorService d;

    class a implements Runnable {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ap apVar = new ap();
                ArrayList<Pair<String, String>> arrayListD = zb.this.b.d();
                if ("POST".equals(zb.this.b.e())) {
                    apVar = sf.b(zb.this.b.b(), this.a, arrayListD);
                } else if ("GET".equals(zb.this.b.e())) {
                    apVar = sf.a(zb.this.b.b(), this.a, arrayListD);
                }
                zb.this.a("response status code: " + apVar.a);
            } catch (Exception e) {
                l9.d().a(e);
            }
        }
    }

    public zb(tb tbVar, fe feVar) {
        if (tbVar == null) {
            throw new InvalidParameterException("Null configuration not supported ");
        }
        if (tbVar.c() == null) {
            throw new InvalidParameterException("Null formatter not supported ");
        }
        this.b = tbVar;
        this.a = feVar;
        this.c = tbVar.c();
        this.d = Executors.newSingleThreadExecutor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.b.f()) {
            Log.d(e, str);
        }
    }

    private void a(Map<String, Object> map, Map<String, Object> map2) {
        try {
            map.putAll(map2);
        } catch (Exception e2) {
            l9.d().a(e2);
        }
    }

    private void b(String str) {
        this.d.submit(new a(str));
    }

    public void a(String str, Map<String, Object> map) {
        a(String.format(Locale.ENGLISH, "%s %s", str, map.toString()));
        if (this.b.a() && !str.isEmpty()) {
            HashMap map2 = new HashMap();
            map2.put("eventname", str);
            a(map2, this.a.a());
            a(map2, map);
            b(this.c.a(map2));
        }
    }
}
