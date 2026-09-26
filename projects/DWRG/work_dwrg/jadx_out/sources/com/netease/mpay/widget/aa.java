package com.netease.mpay.widget;

import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.ClipboardManager;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class aa {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {
        public String a;
        public View.OnClickListener b;

        public a(String str, View.OnClickListener onClickListener) {
            this.a = str;
            this.b = onClickListener;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class b extends ClickableSpan {
        private b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ b(ab abVar) {
            this();
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.argb(255, 0, 204, 102));
            textPaint.setUnderlineText(false);
        }
    }

    private static ArrayList a(Object... objArr) {
        ArrayList arrayList = new ArrayList();
        if (objArr == null || objArr.length < 2) {
            return arrayList;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= objArr.length) {
                return arrayList;
            }
            if (!(objArr[i2] instanceof String) || !(objArr[i2 + 1] instanceof View.OnClickListener)) {
                break;
            }
            arrayList.add(new a((String) objArr[i2], (View.OnClickListener) objArr[i2 + 1]));
            i = i2 + 2;
        }
        return arrayList;
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, View.OnClickListener onClickListener, int i, int i2) {
        spannableStringBuilder.setSpan(new ab(onClickListener), i, i2, 33);
    }

    public static void a(TextView textView, String str, Object... objArr) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        try {
            Iterator it = a(objArr).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                int indexOf = str.indexOf(aVar.a);
                a(spannableStringBuilder, aVar.b, indexOf, aVar.a.length() + indexOf);
            }
        } catch (IndexOutOfBoundsException e) {
            Cdo.a((Throwable) e);
        }
        textView.setText(spannableStringBuilder, TextView.BufferType.SPANNABLE);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    public static boolean a(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 11) {
            return b(context, str);
        }
        ((ClipboardManager) context.getSystemService("clipboard")).setText(str);
        return true;
    }

    @TargetApi(11)
    private static boolean b(Context context, String str) {
        ((android.content.ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, str));
        return true;
    }
}
