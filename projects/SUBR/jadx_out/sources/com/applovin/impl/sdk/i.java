package com.applovin.impl.sdk;

import android.os.Bundle;
import android.view.View;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.communicator.CommunicatorMessageImpl;
import com.applovin.impl.fe;
import com.applovin.impl.ge;
import com.applovin.impl.he;
import com.applovin.impl.ie;
import com.applovin.impl.io;
import com.applovin.impl.me;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.v3;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.impl.ze;
import com.applovin.impl.zq;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import org.json.gr;
import org.json.y8;

/* JADX INFO: loaded from: classes.dex */
public class i implements AppLovinCommunicatorSubscriber, AppLovinCommunicatorPublisher {
    private final j a;
    private final AppLovinCommunicator b;

    i(j jVar) {
        this.a = jVar;
        AppLovinCommunicator appLovinCommunicator = AppLovinCommunicator.getInstance(j.m());
        this.b = appLovinCommunicator;
        if (((Boolean) jVar.a(sj.B6)).booleanValue()) {
            appLovinCommunicator.a(jVar);
            appLovinCommunicator.subscribe(this, io.a);
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "applovin_sdk";
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        Map<String, Object> map;
        if (((Boolean) this.a.a(sj.B6)).booleanValue()) {
            if ("send_http_request".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                Bundle messageData = appLovinCommunicatorMessage.getMessageData();
                Map<String, String> stringMap = BundleUtils.toStringMap(messageData.getBundle("query_params"));
                Map<String, Object> map2 = BundleUtils.toMap(messageData.getBundle("post_body"));
                Map<String, String> stringMap2 = BundleUtils.toStringMap(messageData.getBundle("headers"));
                String string = messageData.getString("id", "");
                if (!map2.containsKey(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY)) {
                    map2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.a0());
                }
                this.a.W().e(new com.applovin.impl.sdk.network.d.b().d(messageData.getString("url")).a(messageData.getString("backup_url")).b(stringMap).c(map2).a(stringMap2).a(((Boolean) this.a.a(sj.a5)).booleanValue()).b(string).a());
                return;
            }
            if (!"send_http_request_v2".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                if ("set_ad_request_query_params".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                    this.a.j().addCustomQueryParams(yp.a((Map) BundleUtils.toMap(appLovinCommunicatorMessage.getMessageData())));
                    return;
                } else if ("set_ad_request_post_body".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                    this.a.j().setCustomPostBody(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
                    return;
                } else {
                    if ("set_mediate_request_post_body_data".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                        this.a.P().setCustomPostBodyData(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
                        return;
                    }
                    return;
                }
            }
            Bundle messageData2 = appLovinCommunicatorMessage.getMessageData();
            String string2 = messageData2.getString("http_method", "POST");
            long millis = messageData2.containsKey("timeout_sec") ? TimeUnit.SECONDS.toMillis(messageData2.getLong("timeout_sec")) : ((Long) this.a.a(sj.l3)).longValue();
            int i = messageData2.getInt("retry_count", ((Integer) this.a.a(sj.m3)).intValue());
            long millis2 = messageData2.containsKey("retry_delay_sec") ? TimeUnit.SECONDS.toMillis(messageData2.getLong("retry_delay_sec")) : ((Long) this.a.a(sj.n3)).longValue();
            Map<String, String> stringMap3 = BundleUtils.toStringMap(messageData2.getBundle("query_params"));
            long j = millis2;
            if ("GET".equalsIgnoreCase(string2)) {
                if (messageData2.getBoolean("include_data_collector_info", true)) {
                    stringMap3.putAll(BundleUtils.toStringMap(CollectionUtils.toBundle(this.a.x().a(null, false, false))));
                }
                millis = millis;
                i = i;
                map = null;
            } else {
                map = BundleUtils.toMap(messageData2.getBundle("post_body"));
                if (messageData2.getBoolean("include_data_collector_info", true)) {
                    Map mapB = this.a.x().B();
                    Map mapM = this.a.x().m();
                    if (mapM.containsKey("idfv") && mapM.containsKey("idfv_scope")) {
                        String str = (String) mapM.get("idfv");
                        Integer num = (Integer) mapM.get("idfv_scope");
                        num.intValue();
                        mapM.remove("idfv");
                        mapM.remove("idfv_scope");
                        mapB.put("idfv", str);
                        mapB.put("idfv_scope", num);
                    }
                    mapB.put("server_installed_at", this.a.a(sj.p));
                    mapB.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.a0());
                    map.put("app", mapB);
                    map.put(y8.h.G, mapM);
                } else {
                    millis = millis;
                    i = i;
                }
            }
            this.a.i0().a((yl) new v3(appLovinCommunicatorMessage.getPublisherId(), com.applovin.impl.sdk.network.a.a(this.a).b(messageData2.getString("url")).a(messageData2.getString("backup_url")).b(stringMap3).c(string2).a((Map) BundleUtils.toStringMap(messageData2.getBundle("headers"))).a(map != null ? new JSONObject(map) : null).c((int) millis).a(i).b((int) j).a((Object) new JSONObject()).a(messageData2.getBoolean("is_encoding_enabled", false)).a(), this.a), tm.b.OTHER);
        }
    }

    public void b(fe feVar, String str) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("max_ad_events")) {
            Bundle bundleA = a(feVar);
            bundleA.putString("type", str);
            this.a.I();
            if (n.a()) {
                this.a.I().a("CommunicatorService", "Sending \"max_ad_events\" message: " + bundleA);
            }
            a(bundleA, "max_ad_events");
        }
    }

    public void a(fe feVar, String str) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("ad_callback_blocked_after_hidden")) {
            Bundle bundleA = a(feVar);
            bundleA.putString("callback_name", str);
            a(bundleA, "ad_callback_blocked_after_hidden");
        }
    }

    public void a(JSONObject jSONObject, boolean z) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("safedk_init")) {
            Bundle bundle = new Bundle();
            bundle.putString(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.a0());
            bundle.putString("applovin_random_token", this.a.Z());
            bundle.putString("compass_random_token", this.a.r());
            bundle.putString("device_type", AppLovinSdkUtils.isTablet(j.m()) ? "tablet" : "phone");
            bundle.putString("init_success", String.valueOf(z));
            bundle.putParcelableArrayList("installed_mediation_adapters", JsonUtils.toBundle(ze.a(this.a)));
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "communicator_settings", (JSONObject) null);
            Bundle bundle2 = (Bundle) bundle.clone();
            bundle2.putString("user_id", this.a.o0().c());
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject2, "safedk_settings", new JSONObject());
            if (!((Boolean) this.a.a(sj.C6)).booleanValue()) {
                JSONObject jSONObject4 = new JSONObject();
                JsonUtils.putBoolean(jSONObject4, "deactivated", true);
                JsonUtils.putJSONObject(jSONObject3, "safeDKDeactivation", jSONObject4);
            }
            bundle2.putBundle("settings", JsonUtils.toBundle(jSONObject3));
            this.a.I();
            if (n.a()) {
                this.a.I().a("CommunicatorService", "Sending \"safedk_init\" message: " + bundle);
            }
            a(bundle2, "safedk_init");
        }
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus, String str) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("adapter_initialization_status")) {
            Bundle bundle = new Bundle();
            bundle.putString("adapter_class", str);
            bundle.putInt("init_status", initializationStatus.getCode());
            a(bundle, "adapter_initialization_status");
        }
    }

    public void a() {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("privacy_setting_updated")) {
            a(new Bundle(), "privacy_setting_updated");
        }
    }

    public void a(String str, String str2) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("network_sdk_version_updated")) {
            Bundle bundle = new Bundle();
            bundle.putString("adapter_class", str2);
            bundle.putString("sdk_version", str);
            a(bundle, "network_sdk_version_updated");
        }
    }

    public void a(List list) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("live_networks_updated")) {
            if (list != null && !list.isEmpty()) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("live_networks", new ArrayList<>(list));
                a(bundle, "live_networks_updated");
                return;
            }
            a(Bundle.EMPTY, "live_networks_updated");
        }
    }

    public void a(String str, String str2, String str3) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("responses")) {
            String strMaybeConvertToIndentedString = JsonUtils.maybeConvertToIndentedString(str3, 2);
            String strMaybeConvertToIndentedString2 = JsonUtils.maybeConvertToIndentedString(str, 2);
            Bundle bundle = new Bundle();
            bundle.putString("request_url", str2);
            bundle.putString("request_body", strMaybeConvertToIndentedString);
            bundle.putString(gr.n, strMaybeConvertToIndentedString2);
            a(bundle, "responses");
        }
    }

    public void a(String str, String str2, int i, Object obj, String str3, boolean z) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("receive_http_response")) {
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            bundle.putString("url", str2);
            bundle.putInt("code", i);
            bundle.putBundle(y8.h.E0, JsonUtils.toBundle(obj));
            bundle.putBoolean("success", z);
            BundleUtils.putString("error_message", str3, bundle);
            a(bundle, "receive_http_response");
        }
    }

    public void a(Bundle bundle, String str) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber(str)) {
            this.b.getMessagingService().publish(CommunicatorMessageImpl.create(bundle, str, this));
        }
    }

    public boolean a(String str) {
        return io.a.contains(str);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00c3  */
    private Bundle a(fe feVar) {
        View viewO0;
        Bundle bundle = new Bundle();
        bundle.putString("id", feVar.R());
        bundle.putString("network_name", feVar.c());
        bundle.putString("max_ad_unit_id", feVar.getAdUnitId());
        bundle.putString("third_party_ad_placement_id", feVar.T());
        bundle.putString("ad_format", feVar.getFormat().getLabel());
        BundleUtils.putStringIfValid("creative_id", feVar.getCreativeId(), bundle);
        BundleUtils.putStringIfValid("adomain", feVar.v(), bundle);
        BundleUtils.putStringIfValid("dsp_name", feVar.getDspName(), bundle);
        if (feVar.Y()) {
            BundleUtils.putStringIfValid("hybrid_ad_format", feVar.I().getLabel(), bundle);
        }
        if (feVar.Z()) {
            bundle.putString("custom_js_network_name", feVar.getNetworkName());
        } else if ("CUSTOM_NETWORK_SDK".equalsIgnoreCase(feVar.c())) {
            bundle.putString("custom_sdk_network_name", feVar.getNetworkName());
        }
        bundle.putAll(JsonUtils.toBundle(feVar.x()));
        if (feVar instanceof me) {
            if (feVar instanceof ge) {
                viewO0 = ((ge) feVar).y();
            } else if (feVar instanceof ie) {
                ie ieVar = (ie) feVar;
                if (ieVar.u0()) {
                    viewO0 = null;
                } else {
                    viewO0 = ieVar.o0() != null ? ieVar.o0() : ieVar.p0();
                }
            } else {
                viewO0 = null;
            }
            bundle.putString("ad_view", viewO0 != null ? zq.a(viewO0) : "N/A");
        } else if (feVar instanceof he) {
            Bundle bundle2 = ((he) feVar).m0().getBundle("applovin_ad_view_info");
            bundle.putString("ad_view", BundleUtils.getString("ad_view_address", "N/A", bundle2));
            bundle.putString("video_view", BundleUtils.getString("video_view_address", "N/A", bundle2));
        }
        return bundle;
    }

    public void b(fe feVar) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("max_revenue_events")) {
            Bundle bundleA = a(feVar);
            bundleA.putAll(JsonUtils.toBundle(feVar.Q()));
            bundleA.putString("country_code", this.a.s().getCountryCode());
            a(bundleA, "max_revenue_events");
        }
    }

    public void b(String str, String str2) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("user_info")) {
            Bundle bundle = new Bundle(2);
            bundle.putString("user_id", StringUtils.emptyIfNull(str));
            bundle.putString("applovin_random_token", str2);
            a(bundle, "user_info");
        }
    }

    public void b(List list) {
        if (((Boolean) this.a.a(sj.B6)).booleanValue() && this.b.hasSubscriber("test_mode_networks_updated")) {
            if (list != null && !list.isEmpty()) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("test_mode_networks", new ArrayList<>(list));
                a(bundle, "test_mode_networks_updated");
                return;
            }
            a(Bundle.EMPTY, "test_mode_networks_updated");
        }
    }
}
