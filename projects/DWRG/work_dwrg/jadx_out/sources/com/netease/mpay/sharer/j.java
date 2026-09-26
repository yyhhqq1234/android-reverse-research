package com.netease.mpay.sharer;

import android.graphics.BitmapFactory;
import com.dodola.rocoo.Hack;
import com.netease.mpay.sharer.UrlShareContent;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes.dex */
class j extends Thread {
    final /* synthetic */ UrlShareContent.a a;
    final /* synthetic */ UrlShareContent b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(UrlShareContent urlShareContent, UrlShareContent.a aVar) {
        this.b = urlShareContent;
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean z = false;
        try {
            this.b.setImage(BitmapFactory.decodeStream(new URL(this.b.a).openStream()));
            this.b.setThumb(BitmapFactory.decodeStream(new URL(this.b.b).openStream()));
            z = true;
        } catch (MalformedURLException e) {
        } catch (IOException e2) {
        }
        this.a.a(z);
    }
}
