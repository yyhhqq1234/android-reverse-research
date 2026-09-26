package com.netease.mpay.widget;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.IBinder;
import android.os.SystemClock;
import android.text.InputFilter;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class bf {

    /* loaded from: classes.dex */
    public static final class a {
        private CountDownTimer a;

        /* renamed from: com.netease.mpay.widget.bf$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0060a {
            void a();
        }

        public a(TextView textView, int i, int i2, InterfaceC0060a interfaceC0060a) {
            this.a = new bh(this, i * 1000, (i2 * 1000) - 10, textView, interfaceC0060a);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public void a() {
            this.a.start();
        }

        public void b() {
            this.a.cancel();
        }
    }

    /* loaded from: classes.dex */
    public static class b implements TextView.OnEditorActionListener {
        View.OnClickListener a;

        public b(View.OnClickListener onClickListener) {
            this.a = onClickListener;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 6 && i != 4 && i != 2 && i != 5) {
                return false;
            }
            if (this.a != null) {
                this.a.onClick(textView);
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c implements View.OnClickListener {
        private long a = 0;

        public c() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a() {
            this.a = 0L;
        }

        protected abstract void a(View view);

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SystemClock.elapsedRealtime() - this.a < 1500) {
                return;
            }
            this.a = SystemClock.elapsedRealtime();
            a(view);
        }
    }

    public static Drawable a(Resources resources, int i) {
        return Build.VERSION.SDK_INT < 22 ? resources.getDrawable(i) : resources.getDrawable(i, null);
    }

    public static final void a(Activity activity, IBinder iBinder) {
        ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(iBinder, 0);
    }

    public static void a(Context context, EditText editText) {
        if (editText == null) {
            return;
        }
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }

    public static void a(EditText editText) {
        if (editText == null) {
            return;
        }
        editText.setFilters(new InputFilter[]{new bg()});
    }

    public static void a(ImageView imageView, Drawable drawable, boolean z) {
        if (imageView == null || drawable == null) {
            return;
        }
        if (!z) {
            imageView.setImageDrawable(drawable);
            return;
        }
        imageView.setBackgroundResource(0);
        com.netease.mpay.view.a aVar = new com.netease.mpay.view.a(drawable);
        if (Build.VERSION.SDK_INT >= 16) {
            imageView.setBackground(aVar);
        } else {
            imageView.setBackgroundDrawable(aVar);
        }
    }

    public static boolean a(Activity activity) {
        return (activity.getWindow().getAttributes().flags & 1024) > 0;
    }

    public static boolean a(Button button, boolean z) {
        if (button == null) {
            return false;
        }
        button.setEnabled(z);
        return true;
    }

    public static void b(Activity activity) {
        if (activity != null) {
            activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }
}
