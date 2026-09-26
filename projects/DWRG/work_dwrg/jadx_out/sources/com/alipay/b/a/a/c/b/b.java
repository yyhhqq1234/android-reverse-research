package com.alipay.b.a.a.c.b;

import android.content.Context;
import com.alipay.b.a.a.c.a.c;
import com.alipay.b.a.a.c.a.d;
import com.alipay.tscenter.biz.rpc.report.general.model.DataReportRequest;
import com.tencent.connect.common.Constants;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class b implements a {
    private static a a = null;
    private static com.alipay.b.a.a.c.a b = null;

    public static a a(Context context, String str) {
        if (context == null) {
            return null;
        }
        if (a == null) {
            b = context != null ? com.alipay.b.a.a.c.b.a(context, str) : null;
            a = new b();
        }
        return a;
    }

    @Override // com.alipay.b.a.a.c.b.a
    public final boolean a(String str) {
        return b.a(str);
    }

    @Override // com.alipay.b.a.a.c.b.a
    public final c a(d dVar) {
        DataReportRequest dataReportRequest = new DataReportRequest();
        dataReportRequest.os = com.alipay.b.a.a.a.a.c(dVar.a);
        dataReportRequest.rpcVersion = Constants.VIA_SHARE_TYPE_PUBLISHVIDEO;
        dataReportRequest.bizType = "1";
        dataReportRequest.bizData = new HashMap();
        dataReportRequest.bizData.put("apdid", com.alipay.b.a.a.a.a.c(dVar.b));
        dataReportRequest.bizData.put("apdidToken", com.alipay.b.a.a.a.a.c(dVar.c));
        dataReportRequest.bizData.put("umidToken", com.alipay.b.a.a.a.a.c(dVar.d));
        dataReportRequest.bizData.put("dynamicKey", dVar.e);
        dataReportRequest.deviceData = dVar.f == null ? new HashMap<>() : dVar.f;
        return com.alipay.b.a.a.c.a.b.a(b.a(dataReportRequest));
    }
}
