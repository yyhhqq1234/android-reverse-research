package com.applovin.impl;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.mediation.MaxDebuggerMultiAdActivity;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class ke extends re {
    private le a;
    private ListView b;

    public ke() {
        this.communicatorTopics.add("adapter_initialization_status");
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    public void initialize(je jeVar) {
        setTitle(jeVar.g());
        le leVar = new le(jeVar, this);
        this.a = leVar;
        leVar.a(new a(jeVar));
    }

    class a implements dc.a {
        final /* synthetic */ je a;

        a(je jeVar) {
            this.a = jeVar;
        }

        @Override // com.applovin.impl.dc.a
        public void a(kb kbVar, cc ccVar) {
            if (kbVar.b() == le.a.TEST_ADS.ordinal()) {
                com.applovin.impl.sdk.j jVarO = this.a.o();
                je.b bVarY = this.a.y();
                if (ke.this.a.a(kbVar)) {
                    if (je.b.READY == bVarY) {
                        r.a(ke.this, MaxDebuggerMultiAdActivity.class, jVarO.e(), new C0020a());
                        return;
                    } else if (je.b.DISABLED == bVarY) {
                        jVarO.k0().a();
                        yp.a(ccVar.c(), ccVar.b(), ke.this);
                        return;
                    } else {
                        yp.a(ccVar.c(), ccVar.b(), ke.this);
                        return;
                    }
                }
                yp.a(ccVar.c(), ccVar.b(), ke.this);
                return;
            }
            yp.a(ccVar.c(), ccVar.b(), ke.this);
        }

        /* JADX INFO: renamed from: com.applovin.impl.ke$a$a, reason: collision with other inner class name */
        class C0020a implements r.b {
            C0020a() {
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerMultiAdActivity maxDebuggerMultiAdActivity) {
                maxDebuggerMultiAdActivity.initialize(a.this.a);
            }
        }
    }

    @Override // com.applovin.impl.re, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.b = listView;
        listView.setAdapter((ListAdapter) this.a);
    }

    @Override // com.applovin.impl.re
    protected com.applovin.impl.sdk.j getSdk() {
        le leVar = this.a;
        if (leVar != null) {
            return leVar.h().o();
        }
        return null;
    }

    @Override // com.applovin.impl.re, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if (this.a.h().b().equals(appLovinCommunicatorMessage.getMessageData().getString("adapter_class", ""))) {
            this.a.k();
            this.a.c();
        }
    }
}
