package com.netease.mpay.widget;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class s {
    private Context a;

    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    public s(Context context) {
        this.a = context;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        AlertDialog create = new AlertDialog.Builder(this.a).create();
        try {
            create.show();
            create.setCanceledOnTouchOutside(true);
            create.setCancelable(true);
            com.netease.mpay.skin.e.a(create.getLayoutInflater(), new com.netease.mpay.skin.e());
            create.setContentView(RIdentifier.g.K);
            create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            create.getWindow().setGravity(17);
            LinearLayout linearLayout = (LinearLayout) create.findViewById(RIdentifier.f.aq);
            ViewGroup.LayoutParams layoutParams = linearLayout != null ? linearLayout.getLayoutParams() : null;
            if (layoutParams != null) {
                create.getWindow().setLayout(layoutParams.width, layoutParams.height);
            }
            ImageView imageView = (ImageView) create.findViewById(RIdentifier.f.s);
            imageView.setImageResource(i);
            imageView.setVisibility(0);
            LinearLayout linearLayout2 = (LinearLayout) create.findViewById(RIdentifier.f.df);
            for (String str2 : str.split("\n")) {
                TextView textView = new TextView(this.a);
                textView.setTextColor(this.a.getResources().getColor(RIdentifier.c.a));
                textView.setTextSize(0, this.a.getResources().getDimensionPixelSize(RIdentifier.d.d));
                textView.setLineSpacing(this.a.getResources().getDimensionPixelSize(RIdentifier.d.t), 1.0f);
                textView.setText(str2);
                linearLayout2.addView(textView, new LinearLayout.LayoutParams(-1, -2));
                linearLayout2.addView(new View(this.a), new LinearLayout.LayoutParams(-1, this.a.getResources().getDimensionPixelSize(RIdentifier.d.u)));
            }
            if (linearLayout2.getChildCount() > 0) {
                linearLayout2.removeViewAt(linearLayout2.getChildCount() - 1);
            }
        } catch (WindowManager.BadTokenException e) {
        } catch (Exception e2) {
            Cdo.a((Throwable) e2);
        }
    }

    public void a(String str) {
        if (str == null || str.equals("") || !(this.a instanceof Activity) || ((Activity) this.a).isFinishing()) {
            return;
        }
        MessageBar.a((Activity) this.a).a(str);
    }

    public void a(String str, int i, int i2, int i3) {
        if (!(this.a instanceof Activity) || ((Activity) this.a).isFinishing()) {
            return;
        }
        MessageBar.a((Activity) this.a).a(str, i, i2, i3);
    }

    public void a(String str, String str2) {
        a(str, str2, null, null, null, true);
    }

    public void a(String str, String str2, DialogInterface.OnClickListener onClickListener) {
        if (!TextUtils.isEmpty(str)) {
            a(str, str2, onClickListener, null, null, true);
        } else if (onClickListener != null) {
            onClickListener.onClick(null, -1);
        }
    }

    public void a(String str, String str2, DialogInterface.OnClickListener onClickListener, String str3, DialogInterface.OnClickListener onClickListener2, boolean z) {
        a(str, str2, onClickListener, str3, onClickListener2, z, null);
    }

    public void a(String str, String str2, DialogInterface.OnClickListener onClickListener, String str3, DialogInterface.OnClickListener onClickListener2, boolean z, a aVar) {
        a(str, str2, onClickListener, str3, onClickListener2, z, null, null);
    }

    public void a(String str, String str2, DialogInterface.OnClickListener onClickListener, String str3, DialogInterface.OnClickListener onClickListener2, boolean z, a aVar, String str4) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.a);
        builder.setCancelable(z);
        AlertDialog create = builder.create();
        try {
            create.show();
            com.netease.mpay.skin.e.a(create.getLayoutInflater(), new com.netease.mpay.skin.e());
            create.setContentView(RIdentifier.g.o);
            create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            create.getWindow().setGravity(17);
            TextView textView = (TextView) create.findViewById(RIdentifier.f.z);
            if (str4 == null) {
                str4 = this.a.getString(RIdentifier.h.d);
            }
            textView.setText(str4);
            ((TextView) create.findViewById(RIdentifier.f.v)).setText(str);
            Button button = (Button) create.findViewById(RIdentifier.f.y);
            if (str2 != null) {
                button.setText(str2);
                button.setOnClickListener(new t(this, onClickListener, create));
            } else {
                button.setVisibility(8);
                create.findViewById(RIdentifier.f.G).setVisibility(8);
            }
            Button button2 = (Button) create.findViewById(RIdentifier.f.w);
            if (str3 != null) {
                button2.setText(str3);
                button2.setOnClickListener(new u(this, onClickListener2, create));
            } else {
                button2.setVisibility(8);
                create.findViewById(RIdentifier.f.G).setVisibility(8);
            }
            if (z && aVar != null) {
                create.setOnCancelListener(new v(this, aVar));
            }
            if (str2 == null) {
                button2.setBackgroundResource(RIdentifier.e.a);
            } else if (str3 == null) {
                button.setBackgroundResource(RIdentifier.e.a);
            }
        } catch (WindowManager.BadTokenException e) {
        } catch (Exception e2) {
            Cdo.a((Throwable) e2);
        }
    }

    @SuppressLint({"InflateParams"})
    public void a(String[] strArr, DialogInterface.OnClickListener onClickListener) {
        AlertDialog create = new AlertDialog.Builder(this.a).create();
        create.show();
        com.netease.mpay.skin.e.a(create.getLayoutInflater(), new com.netease.mpay.skin.e());
        create.setContentView(RIdentifier.g.p);
        create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        create.getWindow().setGravity(17);
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        LinearLayout linearLayout = (LinearLayout) create.findViewById(RIdentifier.f.t);
        for (int i = 0; i < strArr.length; i++) {
            View inflate = LayoutInflater.from(this.a).inflate(RIdentifier.g.q, (ViewGroup) null, false);
            ((TextView) inflate.findViewById(RIdentifier.f.u)).setText(strArr[i]);
            inflate.setOnClickListener(new w(this, onClickListener, create, i));
            linearLayout.addView(inflate);
        }
        ((Button) create.findViewById(RIdentifier.f.r)).setOnClickListener(new x(this, create));
        create.show();
    }

    public void b(String str, String str2, DialogInterface.OnClickListener onClickListener) {
        if (!TextUtils.isEmpty(str)) {
            a(str, str2, onClickListener, null, null, false);
        } else if (onClickListener != null) {
            onClickListener.onClick(null, -1);
        }
    }
}
