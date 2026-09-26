package com.netease.mpay.server.response;

import com.dodola.rocoo.Hack;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public class ai {
    private ArrayList a = new ArrayList();

    /* loaded from: classes.dex */
    public enum a {
        SET_PASSWORD,
        SET_EMAIL,
        SET_REAL_NAME,
        VERIFY_SMS;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public ai() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static ai a(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            ai aiVar = new ai();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    aiVar.a.add(i, (Integer) jSONArray.get(i));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            return aiVar;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void a(a aVar) {
        this.a.add(Integer.valueOf(aVar.ordinal()));
    }

    public boolean a() {
        return b() == 1 && b(a.SET_PASSWORD);
    }

    public int b() {
        if (this.a != null) {
            return this.a.size();
        }
        return 0;
    }

    public boolean b(a aVar) {
        if (this.a == null) {
            return false;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            if (aVar.ordinal() == ((Integer) it.next()).intValue()) {
                return true;
            }
        }
        return false;
    }

    public ai c(a aVar) {
        if (this.a != null) {
            Iterator it = this.a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((Integer) it.next()).intValue() == aVar.ordinal()) {
                    it.remove();
                    break;
                }
            }
        }
        return this;
    }

    public JSONArray c() {
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            jSONArray.put((Integer) it.next());
        }
        return jSONArray;
    }
}
