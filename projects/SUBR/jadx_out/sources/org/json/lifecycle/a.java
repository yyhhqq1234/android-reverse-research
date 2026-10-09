package org.json.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public class a extends Fragment {
    private static final String b = "com.ironsource.lifecycle.IronsourceLifecycleFragment";
    private InterfaceC0093a a;

    /* JADX INFO: renamed from: com.ironsource.lifecycle.a$a, reason: collision with other inner class name */
    interface InterfaceC0093a {
        void a(Activity activity);

        void b(Activity activity);

        void onResume(Activity activity);
    }

    static a a(Activity activity) {
        return (a) activity.getFragmentManager().findFragmentByTag(b);
    }

    private void a(InterfaceC0093a interfaceC0093a) {
        if (interfaceC0093a != null) {
            interfaceC0093a.b(getActivity());
        }
    }

    static void b(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager == null || fragmentManager.findFragmentByTag(b) != null) {
            return;
        }
        fragmentManager.beginTransaction().add(new a(), b).commit();
        fragmentManager.executePendingTransactions();
    }

    private void b(InterfaceC0093a interfaceC0093a) {
        if (interfaceC0093a != null) {
            interfaceC0093a.onResume(getActivity());
        }
    }

    private void c(InterfaceC0093a interfaceC0093a) {
        if (interfaceC0093a != null) {
            interfaceC0093a.a(getActivity());
        }
    }

    void d(InterfaceC0093a interfaceC0093a) {
        this.a = interfaceC0093a;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(this.a);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        b(this.a);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        c(this.a);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
    }
}
