package com.netease.mpay.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import java.util.List;

/* loaded from: classes.dex */
public class ba {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends ArrayAdapter {
        Context a;
        int b;
        int c;
        int d;
        Drawable e;

        public a(Context context, int i, int i2, Drawable drawable, int i3, List list) {
            super(context, i, list);
            this.a = context;
            this.b = i;
            this.c = i3;
            this.d = i2;
            this.e = drawable;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(this.a).inflate(this.b, viewGroup, false);
            }
            bf.a((ImageView) view.findViewById(this.d), this.e, false);
            ((TextView) view.findViewById(this.c)).setText((CharSequence) getItem(i));
            return view;
        }
    }

    public static TextWatcher a(Context context, AutoCompleteTextView autoCompleteTextView, int i, Integer num, Drawable drawable, Integer num2, String[] strArr, String[] strArr2) {
        String[] strArr3 = strArr2 == null ? new String[]{"163.com", "qq.com", "126.com", "yeah.net", "sina.com", "gmail.com"} : strArr2;
        bf.a(autoCompleteTextView);
        bb bbVar = new bb(context, i, num, drawable, num2, autoCompleteTextView, strArr, strArr3);
        autoCompleteTextView.addTextChangedListener(bbVar);
        return bbVar;
    }

    public static void a(AutoCompleteTextView autoCompleteTextView) {
        a(autoCompleteTextView, "@163.com");
    }

    public static void a(AutoCompleteTextView autoCompleteTextView, String str) {
        String obj = autoCompleteTextView.getText().toString();
        if (obj.trim().equals("")) {
            return;
        }
        if (!obj.contains("@")) {
            obj = obj + str;
        }
        autoCompleteTextView.setText(obj.trim().replace(" ", ""));
    }

    public static boolean a(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels < displayMetrics.heightPixels || (activity.getResources().getConfiguration().screenLayout & 15) > 1;
    }
}
