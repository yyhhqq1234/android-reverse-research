package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class t6 extends Activity {
    private v6 a;
    private com.applovin.impl.sdk.j b;
    private TextView c;
    private Button d;

    public void a(v6 v6Var, com.applovin.impl.sdk.j jVar) {
        this.a = v6Var;
        this.b = jVar;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!a()) {
            finish();
            return;
        }
        setTitle(this.a.c() + " - " + this.a.d());
        setContentView(R.layout.creative_debugger_displayed_ad_detail_activity);
        b();
        Button button = (Button) findViewById(R.id.report_ad_button);
        this.d = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.t6$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.a(view);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.creative_debugger_displayed_ad_activity_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!a()) {
            finish();
            return false;
        }
        if (R.id.action_share == menuItem.getItemId()) {
            this.b.v().a(this.a, (Context) this, false);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void b() {
        pc pcVar = new pc();
        pcVar.a(this.b.v().a(this.a));
        String strB = this.b.v().b(this.a.a());
        if (strB != null) {
            pcVar.a("\nBid Response Preview:\n");
            pcVar.a(strB);
        }
        TextView textView = (TextView) findViewById(R.id.email_report_tv);
        this.c = textView;
        textView.setText(pcVar.toString());
        this.c.setTextColor(ViewCompat.MEASURED_STATE_MASK);
    }

    private boolean a() {
        return (this.a == null || this.b == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.b.v().a(this.a, (Context) this, true);
    }
}
