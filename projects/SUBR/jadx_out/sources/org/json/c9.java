package org.json;

/* JADX INFO: loaded from: classes3.dex */
public class c9 {
    public static final String a = "SSA_CORE.SDKController.runFunction";

    public static String a(d9 d9Var) {
        return String.format("%1$s('%2$s%3$s'%4$s)", a, d9Var.b(), a(d9Var.c()), b(d9Var));
    }

    private static String a(JSONObject jSONObject) {
        return (jSONObject == null || jSONObject.length() == 0) ? "" : jSONObject.toString();
    }

    private static String b(d9 d9Var) {
        return (d9Var.d() == null || d9Var.a() == null) ? "" : String.format(", '%1$s', '%2$s'", d9Var.d(), d9Var.a());
    }
}
