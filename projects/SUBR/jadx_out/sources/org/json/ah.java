package org.json;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.impressionData.ImpressionData;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\bf\u0018\u00002\u00020\u0001:\u0001\u0005J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\u0005\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\n0\tH&J\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\r2\u0006\u0010\f\u001a\u00020\u000bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/ah;", "", "Lcom/ironsource/zr;", y8.a.s, "Lorg/json/JSONObject;", "a", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "", "", "", "Lcom/ironsource/nr;", "configuration", "", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public interface ah {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/ironsource/ah$a;", "", "Lcom/ironsource/qr;", "historyRecord", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public interface a {
        void a(qr historyRecord);
    }

    int a(IronSource.AD_UNIT adFormat);

    List<String> a();

    Map<String, JSONObject> a(nr configuration);

    JSONObject a(zr mode);
}
