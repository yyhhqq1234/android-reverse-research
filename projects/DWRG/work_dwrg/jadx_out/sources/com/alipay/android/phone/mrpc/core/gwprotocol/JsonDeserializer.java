package com.alipay.android.phone.mrpc.core.gwprotocol;

import com.alipay.a.a.e;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.alipay.sdk.util.k;
import com.netease.download.Const;
import java.lang.reflect.Type;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JsonDeserializer extends AbstractDeserializer {
    public JsonDeserializer(Type type, byte[] bArr) {
        super(type, bArr);
    }

    @Override // com.alipay.android.phone.mrpc.core.gwprotocol.Deserializer
    public Object parser() {
        try {
            String str = new String(this.mData);
            new StringBuilder("threadid = ").append(Thread.currentThread().getId()).append("; rpc response:  ").append(str);
            JSONObject jSONObject = new JSONObject(str);
            int i = jSONObject.getInt(k.a);
            if (i != 1000) {
                throw new RpcException(Integer.valueOf(i), jSONObject.optString("tips"));
            }
            return this.mType == String.class ? jSONObject.optString(k.c) : e.a(jSONObject.optString(k.c), this.mType);
        } catch (Exception e) {
            throw new RpcException((Integer) 10, new StringBuilder("response  =").append(new String(this.mData)).append(Const.RESP_CONTENT_SPIT2).append(e).toString() == null ? "" : e.getMessage());
        }
    }
}
