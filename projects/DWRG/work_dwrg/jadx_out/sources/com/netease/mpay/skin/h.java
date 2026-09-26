package com.netease.mpay.skin;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

/* loaded from: classes.dex */
public class h {
    public static void a(View view, int i) {
        if ((view instanceof TextView) || (view instanceof EditText)) {
            ((TextView) view).setTextColor(i);
        }
    }

    public static void a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT < 16) {
            view.setBackgroundDrawable(drawable);
        } else {
            view.setBackground(drawable);
        }
    }

    public static void b(View view, int i) {
        if (view instanceof EditText) {
            ((TextView) view).setHintTextColor(i);
        }
    }

    public static void b(View view, Drawable drawable) {
        if (view instanceof ImageView) {
            ((ImageView) view).setImageDrawable(drawable);
        }
    }

    public static void c(View view, Drawable drawable) {
        if (view instanceof TextView) {
            drawable.setBounds(((TextView) view).getCompoundDrawables()[3].getBounds());
            ((TextView) view).setCompoundDrawables(null, null, null, drawable);
        }
    }

    public static void d(View view, Drawable drawable) {
        if (view instanceof TextView) {
            drawable.setBounds(((TextView) view).getCompoundDrawables()[1].getBounds());
            ((TextView) view).setCompoundDrawables(null, drawable, null, null);
        }
    }

    public static void e(View view, Drawable drawable) {
        if (view instanceof TextView) {
            drawable.setBounds(((TextView) view).getCompoundDrawables()[2].getBounds());
            ((TextView) view).setCompoundDrawables(null, null, drawable, null);
        }
    }

    public static void f(View view, Drawable drawable) {
        if (view instanceof TextView) {
            drawable.setBounds(((TextView) view).getCompoundDrawables()[0].getBounds());
            ((TextView) view).setCompoundDrawables(drawable, null, null, null);
        }
    }

    public static void g(View view, Drawable drawable) {
        if (view instanceof AutoCompleteTextView) {
            ((AutoCompleteTextView) view).setDropDownBackgroundDrawable(drawable);
        }
    }

    public static void h(View view, Drawable drawable) {
        if (view instanceof ListView) {
            ((ListView) view).setDivider(drawable);
            ((ListView) view).setDividerHeight(1);
        }
    }
}
