package org.json;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import java.util.ArrayList;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.utils.IronSourceStorageUtils;

/* JADX INFO: loaded from: classes3.dex */
public class lc {
    private final Context a;
    private final va b;
    private final kc c;
    private final ml d;
    private final oe e = jl.P().f();

    class a implements mn {
        final /* synthetic */ mn a;

        /* JADX INFO: renamed from: com.ironsource.lc$a$a, reason: collision with other inner class name */
        class C0092a extends JSONObject {
            C0092a() throws JSONException {
                put("lastReferencedTime", System.currentTimeMillis());
            }
        }

        a(mn mnVar) {
            this.a = mnVar;
        }

        @Override // org.json.mn
        public void a(mg mgVar) {
            this.a.a(mgVar);
            try {
                lc.this.d.a(mgVar.getName(), new C0092a());
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }

        @Override // org.json.mn
        public void a(mg mgVar, eg egVar) {
            this.a.a(mgVar, egVar);
        }
    }

    public lc(Context context, va vaVar, kc kcVar, ml mlVar) {
        this.a = context;
        this.b = vaVar;
        this.c = kcVar;
        this.d = mlVar;
    }

    public void a(mg mgVar) throws Exception {
        if (mgVar.exists()) {
            if (!mgVar.delete()) {
                throw new Exception("Failed to delete file");
            }
            this.d.a(mgVar.getName());
        }
    }

    public void a(mg mgVar, String str, int i, int i2, mn mnVar) throws Exception {
        if (TextUtils.isEmpty(str)) {
            throw new Exception(jc.a.a);
        }
        if (this.e.a(this.b.a()) <= 0) {
            throw new Exception(a9.A);
        }
        if (!u8.h(this.a)) {
            throw new Exception(a9.C);
        }
        this.c.a(mgVar.getPath(), new a(mnVar));
        if (!mgVar.exists()) {
            this.b.a(mgVar, str, i, i2, this.c);
            return;
        }
        Message message = new Message();
        message.obj = mgVar;
        message.what = 1015;
        this.c.sendMessage(message);
    }

    public void a(mg mgVar, JSONObject jSONObject) throws Exception {
        if (jSONObject == null) {
            throw new Exception("Missing attributes to update");
        }
        if (!mgVar.exists()) {
            throw new Exception("File does not exist");
        }
        if (!this.d.b(mgVar.getName(), jSONObject)) {
            throw new Exception("Failed to update attribute");
        }
    }

    public void b(mg mgVar) throws Exception {
        if (mgVar.exists()) {
            ArrayList<mg> filesInFolderRecursive = IronSourceStorageUtils.getFilesInFolderRecursive(mgVar);
            if (!(IronSourceStorageUtils.deleteFolderContentRecursive(mgVar) && mgVar.delete())) {
                throw new Exception("Failed to delete folder");
            }
            this.d.a(filesInFolderRecursive);
        }
    }

    public JSONObject c(mg mgVar) throws Exception {
        if (mgVar.exists()) {
            return IronSourceStorageUtils.buildFilesMapOfDirectory(mgVar, this.d.b());
        }
        throw new Exception("Folder does not exist");
    }

    public long d(mg mgVar) throws Exception {
        if (mgVar.exists()) {
            return IronSourceStorageUtils.getTotalSizeOfDir(mgVar);
        }
        throw new Exception("Folder does not exist");
    }
}
