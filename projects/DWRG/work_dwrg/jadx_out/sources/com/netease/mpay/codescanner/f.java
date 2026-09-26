package com.netease.mpay.codescanner;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.FragmentActivity;
import android.view.SurfaceView;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.codescanner.CodeScanConfig;
import com.netease.codescanner.CodeScanner;
import com.netease.codescanner.widget.ViewfinderView;
import com.netease.mpay.Cdo;
import com.netease.mpay.codescanner.e;
import com.netease.mpay.cq;
import com.netease.mpay.f.al;
import com.netease.mpay.f.at;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f extends CodeScanner {
    final /* synthetic */ e a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(e eVar, Context context, SurfaceView surfaceView, ViewfinderView viewfinderView, CodeScanConfig codeScanConfig) {
        super(context, surfaceView, viewfinderView, codeScanConfig);
        this.a = eVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.codescanner.CodeScanner
    public void handleDecodeError(CodeScanner.DecodeResult decodeResult) {
    }

    @Override // com.netease.codescanner.CodeScanner
    public void handleDecodeSuccess(CodeScanner.DecodeResult decodeResult) {
        boolean z;
        CodeScanner codeScanner;
        d dVar;
        d dVar2;
        e.b b;
        e.b bVar;
        e.b bVar2;
        com.netease.mpay.b.v vVar;
        com.netease.mpay.b.v vVar2;
        com.netease.mpay.b.v vVar3;
        com.netease.mpay.b.v vVar4;
        com.netease.mpay.b.v vVar5;
        e.b bVar3;
        com.netease.mpay.b.v vVar6;
        e.b bVar4;
        e.b bVar5;
        z = this.a.h;
        if (!z) {
            codeScanner = this.a.e;
            codeScanner.resumeDecode();
            return;
        }
        Cdo.a("Scanned result: " + decodeResult.rawResult.getBarcodeFormat().name() + " " + decodeResult.rawResult.getText());
        dVar = this.a.g;
        dVar.a();
        dVar2 = this.a.g;
        dVar2.b();
        e eVar = this.a;
        b = this.a.b(decodeResult.rawResult.getText());
        eVar.j = b;
        bVar = this.a.j;
        if (bVar instanceof e.c) {
            FragmentActivity fragmentActivity = this.a.a;
            vVar6 = this.a.d;
            String a = vVar6.a();
            bVar4 = this.a.j;
            String str = ((e.c) bVar4).b;
            bVar5 = this.a.j;
            new at(fragmentActivity, a, str, ((e.c) bVar5).c, new g(this)).h();
            return;
        }
        bVar2 = this.a.j;
        if (bVar2 instanceof e.d) {
            FragmentActivity fragmentActivity2 = this.a.a;
            vVar5 = this.a.d;
            String a2 = vVar5.a();
            bVar3 = this.a.j;
            new al(fragmentActivity2, a2, ((e.d) bVar3).b, new h(this)).h();
            return;
        }
        vVar = this.a.d;
        if (vVar.c != null) {
            vVar3 = this.a.d;
            if (vVar3.c.b()) {
                this.a.a.finish();
                vVar4 = this.a.d;
                vVar4.c.c().onFetchQrCode(decodeResult.rawResult.getText());
                return;
            }
        }
        FragmentActivity fragmentActivity3 = this.a.a;
        vVar2 = this.a.d;
        this.a.a(cq.a(fragmentActivity3, vVar2.a(), RIdentifier.h.cZ), false);
    }

    @Override // com.netease.codescanner.CodeScanner
    public void onFatalError() {
        CodeScanner codeScanner;
        Resources resources;
        codeScanner = this.a.e;
        codeScanner.pause();
        resources = this.a.f;
        this.a.a(resources.getString(RIdentifier.h.cX), true);
    }

    @Override // com.netease.codescanner.CodeScanner
    protected void onInitialized() {
        CodeScanner codeScanner;
        int b;
        int a;
        CodeScanner codeScanner2;
        View findViewById = this.a.a.findViewById(RIdentifier.f.aH);
        View findViewById2 = this.a.a.findViewById(RIdentifier.f.aI);
        if (findViewById == null) {
            codeScanner = this.a.e;
            codeScanner.setPreviewMask(0, 90, 0, 90);
            return;
        }
        int width = findViewById2.getWidth();
        int height = findViewById2.getHeight();
        findViewById.getWidth();
        findViewById.getHeight();
        b = this.a.b(findViewById, RIdentifier.f.aJ);
        a = this.a.a(findViewById, RIdentifier.f.aJ);
        Cdo.a("offsets = " + b + ", " + a + ", " + ((width - b) - findViewById.getWidth()) + ", " + ((height - a) - findViewById.getHeight()));
        codeScanner2 = this.a.e;
        codeScanner2.setPreviewMask(b, a, (width - b) - findViewById.getWidth(), (height - a) - findViewById.getHeight());
    }
}
