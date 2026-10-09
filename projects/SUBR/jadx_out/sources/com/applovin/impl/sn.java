package com.applovin.impl;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.webkit.internal.AssetHelper;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class sn extends re {
    private com.applovin.impl.sdk.j a;
    private String b;
    private String c;

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (R.id.action_share != menuItem.getItemId()) {
            return super.onOptionsItemSelected(menuItem);
        }
        a();
        return true;
    }

    public void initialize(String str, String str2, com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = str;
        this.c = str2;
    }

    @Override // com.applovin.impl.re
    protected com.applovin.impl.sdk.j getSdk() {
        return this.a;
    }

    @Override // com.applovin.impl.re, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_text_view_activity);
        setTitle(this.b);
        ((TextView) findViewById(R.id.textView)).setText(this.c);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.mediation_debugger_activity_menu, menu);
        return true;
    }

    private void a() {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", this.c);
        intent.putExtra("android.intent.extra.TITLE", this.b);
        intent.putExtra("android.intent.extra.SUBJECT", this.b);
        startActivity(Intent.createChooser(intent, null));
    }
}
