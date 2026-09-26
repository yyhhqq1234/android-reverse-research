package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
public abstract class e {
    protected a a;
    protected EditText b;
    protected Button c;

    /* loaded from: classes.dex */
    public interface a {
        void a(String str);

        void c();
    }

    public e(a aVar) {
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(View view) {
        this.b.addTextChangedListener(new h(this, view));
        this.b.setOnFocusChangeListener(new i(this, view));
        view.setOnClickListener(new j(this));
        a(this.b, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(EditText editText, View view) {
        if (editText.getText().toString().equals("") || !editText.isFocused()) {
            view.setVisibility(8);
        } else {
            view.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        return (this.b == null || this.b.getText().toString().trim().equals("")) ? false : true;
    }

    public View a(Activity activity, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(RIdentifier.g.E, viewGroup, false);
        this.c = (Button) inflate.findViewById(RIdentifier.f.bg);
        this.b = (EditText) inflate.findViewById(RIdentifier.f.bo);
        f fVar = new f(this, activity);
        this.b.setOnEditorActionListener(new bf.b(fVar));
        a(inflate.findViewById(RIdentifier.f.bp));
        bf.a(this.c, b());
        this.c.setOnClickListener(fVar);
        return inflate;
    }

    public void a(Activity activity) {
        View findViewById = activity.findViewById(RIdentifier.f.ar);
        findViewById.setVisibility(a() ? 0 : 8);
        findViewById.setOnClickListener(new g(this));
    }

    abstract boolean a();
}
