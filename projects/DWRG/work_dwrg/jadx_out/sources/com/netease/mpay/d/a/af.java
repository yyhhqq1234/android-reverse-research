package com.netease.mpay.d.a;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.b.m;
import com.netease.mpay.ew;
import com.netease.mpay.f.bf;
import com.netease.mpay.fh;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;
import java.io.Serializable;

/* loaded from: classes.dex */
public class af extends ew {
    private static com.netease.mpay.widget.al i = new com.netease.mpay.widget.al();
    private Activity b;
    private d c;
    private e d;
    private com.netease.mpay.e.b.o e;
    private EditText f;
    private Button g;
    private c h;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        SET_PASSWORD_FRAGMENT_PARAMS,
        SET_PASSWORD_CALLBACK;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum b {
        EMPTY,
        WEAK,
        NORMAL,
        STRONG;

        b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c {
        TextView a;
        TextView b;
        TextView c;
        b d = null;

        public c(View view) {
            this.a = (TextView) view.findViewById(RIdentifier.f.bN);
            this.b = (TextView) view.findViewById(RIdentifier.f.bL);
            this.c = (TextView) view.findViewById(RIdentifier.f.bM);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public void a(b bVar) {
            if (this.d == bVar) {
                return;
            }
            this.d = bVar;
            switch (bVar) {
                case EMPTY:
                    this.a.setVisibility(8);
                    this.b.setVisibility(8);
                    this.c.setVisibility(8);
                    return;
                case WEAK:
                    this.a.setText(RIdentifier.h.ba);
                    this.a.setVisibility(0);
                    this.b.setVisibility(8);
                    this.c.setVisibility(8);
                    return;
                case NORMAL:
                    this.a.setText("");
                    this.b.setText(RIdentifier.h.aY);
                    this.a.setVisibility(0);
                    this.b.setVisibility(0);
                    this.c.setVisibility(8);
                    return;
                case STRONG:
                    this.a.setText("");
                    this.b.setText("");
                    this.c.setText(RIdentifier.h.aZ);
                    this.a.setVisibility(0);
                    this.b.setVisibility(0);
                    this.c.setVisibility(0);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface d extends fh {
        void a();
    }

    /* loaded from: classes.dex */
    public static class e implements Serializable {
        public String a;
        public String b;
        public m.b c;
        public String d;
        public Boolean e;

        public e(String str, String str2, m.b bVar, String str3, boolean z) {
            this.a = str;
            this.b = str2;
            this.c = bVar;
            this.d = str3;
            this.e = Boolean.valueOf(z);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public af() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b a(EditText editText) {
        String obj = editText.getText().toString();
        if (obj.equals("")) {
            return b.EMPTY;
        }
        if (obj.length() < 6) {
            return b.WEAK;
        }
        int i2 = (obj.matches(".*[a-zA-Z]+.*") ? 1 : 0) + 0 + (obj.matches(".*\\d+.*") ? 1 : 0) + (obj.matches(".*[^0-9a-zA-Z]+.*") ? 1 : 0);
        return i2 >= 3 ? b.STRONG : i2 >= 2 ? b.NORMAL : b.WEAK;
    }

    public static af a(e eVar, d dVar) {
        af afVar = new af();
        afVar.b(eVar, dVar);
        return afVar;
    }

    private void a(EditText editText, ImageView imageView) {
        editText.addTextChangedListener(new ak(this, editText, imageView));
        editText.setOnFocusChangeListener(new al(this, editText, imageView));
        imageView.setOnClickListener(new am(this, editText));
        b(editText, imageView);
    }

    private boolean a(@NonNull String str) {
        for (char c2 : str.toCharArray()) {
            if (c2 < '!' || c2 > '~') {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        String string;
        String obj = this.f.getText().toString();
        if (obj.equals("")) {
            string = this.b.getString(RIdentifier.h.an);
        } else if (!a(obj)) {
            string = this.b.getString(RIdentifier.h.aq);
        } else {
            if (obj.length() >= 6 && obj.length() <= 16) {
                if (b.WEAK == this.h.d) {
                    new com.netease.mpay.widget.a(this.b, this.b.getString(RIdentifier.h.d), this.b.getString(RIdentifier.h.as), this.b.getString(RIdentifier.h.j), this.b.getString(RIdentifier.h.cJ), new ai(this, obj), false).a();
                    return;
                } else {
                    b(obj);
                    return;
                }
            }
            string = this.b.getString(RIdentifier.h.ar);
        }
        this.c.a(string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Activity activity, TextView textView, EditText editText, boolean z) {
        textView.setText(z ? activity.getString(RIdentifier.h.aX) : activity.getString(RIdentifier.h.aW));
        editText.setTransformationMethod(z ? HideReturnsTransformationMethod.getInstance() : PasswordTransformationMethod.getInstance());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(EditText editText, ImageView imageView) {
        if (editText.getText().toString().equals("") || !editText.isFocused()) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
        }
        if (editText.getText().toString().length() > 16) {
            this.c.a(this.b.getString(RIdentifier.h.ar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        new bf(this.b, this.d.a, this.d.b, this.e != null ? this.e.d : "", str, new an(this)).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        return (this.f == null || this.f.getText().toString().trim().equals("")) ? false : true;
    }

    @Override // com.netease.mpay.ew
    public void a(boolean z) {
    }

    @Override // com.netease.mpay.ew
    public boolean a() {
        this.c.c();
        return true;
    }

    public void b(e eVar, d dVar) {
        this.d = eVar;
        this.c = dVar;
        Bundle bundle = new Bundle();
        bundle.putSerializable(a.SET_PASSWORD_FRAGMENT_PARAMS.name(), eVar);
        bundle.putLong(a.SET_PASSWORD_CALLBACK.name(), i != null ? i.a(dVar) : -1L);
        setArguments(bundle);
    }

    @Override // com.netease.mpay.ew, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b = getActivity();
        try {
            Bundle arguments = getArguments();
            this.c = (d) i.b(arguments.getLong(a.SET_PASSWORD_CALLBACK.name()));
            this.d = (e) arguments.getSerializable(a.SET_PASSWORD_FRAGMENT_PARAMS.name());
            if (this.d == null) {
                throw new NullPointerException("");
            }
            if (this.b != null) {
                this.e = new com.netease.mpay.e.b(this.b, this.d.a).c().a(this.d.d);
            }
        } catch (Exception e2) {
            Cdo.a((Throwable) e2);
            if (this.c != null) {
                this.c.d();
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(RIdentifier.g.Q, viewGroup, false);
        this.b = getActivity();
        if (this.b == null || this.b.isFinishing() || this.c == null) {
            return null;
        }
        this.g = (Button) inflate.findViewById(RIdentifier.f.bg);
        this.f = (EditText) inflate.findViewById(RIdentifier.f.bI);
        this.h = new c(inflate);
        TextView textView = (TextView) inflate.findViewById(RIdentifier.f.bq);
        String string = this.b.getString(RIdentifier.h.aI);
        Object[] objArr = new Object[1];
        objArr[0] = this.e != null ? this.e.c() : "";
        textView.setText(String.format(string, objArr));
        TextView textView2 = (TextView) inflate.findViewById(RIdentifier.f.bh);
        b(this.b, textView2, this.f, true);
        textView2.setOnClickListener(new ag(this, textView2));
        ah ahVar = new ah(this);
        this.f.setOnEditorActionListener(new bf.b(ahVar));
        a(this.f, (ImageView) inflate.findViewById(RIdentifier.f.bJ));
        this.g.setText(RIdentifier.h.Y);
        com.netease.mpay.widget.bf.a(this.g, c());
        this.g.setOnClickListener(ahVar);
        return inflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.b.findViewById(RIdentifier.f.ar).setVisibility(8);
        this.b.findViewById(RIdentifier.f.at).setOnClickListener(new aj(this));
    }
}
