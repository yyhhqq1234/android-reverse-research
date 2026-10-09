package com.onesignal.core.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.core.app.ActivityCompat;
import com.onesignal.OneSignal;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.R;
import com.onesignal.core.internal.permissions.IRequestPermissionService;
import com.onesignal.core.internal.permissions.impl.RequestPermissionService;
import com.onesignal.core.internal.preferences.IPreferencesService;
import com.onesignal.core.internal.preferences.PreferenceOneSignalKeys;
import com.onesignal.core.internal.preferences.PreferenceStores;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PermissionsActivity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0002J\u0012\u0010\r\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\fH\u0014J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0014J+\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016¢\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u0012\u0010\u001c\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0002J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0004H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/onesignal/core/activities/PermissionsActivity;", "Landroid/app/Activity;", "()V", "permissionRequestType", "", "preferenceService", "Lcom/onesignal/core/internal/preferences/IPreferencesService;", "requestPermissionService", "Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;", "handleBundleParams", "", "extras", "Landroid/os/Bundle;", "onCreate", "savedInstanceState", "onNewIntent", "intent", "Landroid/content/Intent;", "onRequestPermissionsResult", "requestCode", "", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "requestPermission", "androidPermissionString", "reregisterCallbackHandlers", "shouldShowSettings", "", "permission", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PermissionsActivity extends Activity {
    public static final int DELAY_TIME_CALLBACK_CALL = 500;
    public static final String INTENT_EXTRA_ANDROID_PERMISSION_STRING = "INTENT_EXTRA_ANDROID_PERMISSION_STRING";
    public static final String INTENT_EXTRA_CALLBACK_CLASS = "INTENT_EXTRA_CALLBACK_CLASS";
    public static final String INTENT_EXTRA_PERMISSION_TYPE = "INTENT_EXTRA_PERMISSION_TYPE";
    public static final int ONESIGNAL_PERMISSION_REQUEST_CODE = 2;
    private String permissionRequestType;
    private IPreferencesService preferenceService;
    private RequestPermissionService requestPermissionService;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (OneSignal.initWithContext(this)) {
            this.requestPermissionService = (RequestPermissionService) OneSignal.INSTANCE.getServices().getService(RequestPermissionService.class);
            this.preferenceService = (IPreferencesService) OneSignal.INSTANCE.getServices().getService(IPreferencesService.class);
            handleBundleParams(getIntent().getExtras());
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        handleBundleParams(intent.getExtras());
    }

    private final void handleBundleParams(Bundle extras) {
        if (Build.VERSION.SDK_INT < 23) {
            finish();
            overridePendingTransition(R.anim.onesignal_fade_in, R.anim.onesignal_fade_out);
            return;
        }
        reregisterCallbackHandlers(extras);
        Intrinsics.checkNotNull(extras);
        this.permissionRequestType = extras.getString(INTENT_EXTRA_PERMISSION_TYPE);
        String string = extras.getString(INTENT_EXTRA_ANDROID_PERMISSION_STRING);
        Intrinsics.checkNotNull(string);
        requestPermission(string);
    }

    private final void reregisterCallbackHandlers(Bundle extras) {
        Intrinsics.checkNotNull(extras);
        String string = extras.getString(INTENT_EXTRA_CALLBACK_CLASS);
        try {
            Class.forName(string);
        } catch (ClassNotFoundException unused) {
            throw new RuntimeException("Could not find callback class for PermissionActivity: " + string);
        }
    }

    private final void requestPermission(String androidPermissionString) {
        RequestPermissionService requestPermissionService = this.requestPermissionService;
        Intrinsics.checkNotNull(requestPermissionService);
        if (requestPermissionService.getWaiting()) {
            return;
        }
        RequestPermissionService requestPermissionService2 = this.requestPermissionService;
        Intrinsics.checkNotNull(requestPermissionService2);
        requestPermissionService2.setWaiting(true);
        RequestPermissionService requestPermissionService3 = this.requestPermissionService;
        Intrinsics.checkNotNull(requestPermissionService3);
        PermissionsActivity permissionsActivity = this;
        requestPermissionService3.setShouldShowRequestPermissionRationaleBeforeRequest(ActivityCompat.shouldShowRequestPermissionRationale(permissionsActivity, androidPermissionString));
        ActivityCompat.requestPermissions(permissionsActivity, new String[]{androidPermissionString}, 2);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, final String[] permissions, final int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        RequestPermissionService requestPermissionService = this.requestPermissionService;
        Intrinsics.checkNotNull(requestPermissionService);
        requestPermissionService.setWaiting(false);
        if (requestCode == 2) {
            new Handler().postDelayed(new Runnable() { // from class: com.onesignal.core.activities.PermissionsActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PermissionsActivity.m437onRequestPermissionsResult$lambda0(this.f$0, permissions, grantResults);
                }
            }, 500L);
        }
        finish();
        overridePendingTransition(R.anim.onesignal_fade_in, R.anim.onesignal_fade_out);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onRequestPermissionsResult$lambda-0, reason: not valid java name */
    public static final void m437onRequestPermissionsResult$lambda0(PermissionsActivity this$0, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(permissions, "$permissions");
        Intrinsics.checkNotNullParameter(grantResults, "$grantResults");
        RequestPermissionService requestPermissionService = this$0.requestPermissionService;
        Intrinsics.checkNotNull(requestPermissionService);
        String str = this$0.permissionRequestType;
        Intrinsics.checkNotNull(str);
        IRequestPermissionService.PermissionCallback callback = requestPermissionService.getCallback(str);
        if (callback == null) {
            throw new RuntimeException("Missing handler for permissionRequestType: " + this$0.permissionRequestType);
        }
        boolean z = false;
        if (permissions.length == 0) {
            callback.onReject(false);
            return;
        }
        String str2 = permissions[0];
        if (grantResults.length > 0 && grantResults[0] == 0) {
            z = true;
        }
        if (z) {
            callback.onAccept();
            IPreferencesService iPreferencesService = this$0.preferenceService;
            Intrinsics.checkNotNull(iPreferencesService);
            iPreferencesService.saveBool(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_USER_RESOLVED_PERMISSION_PREFIX + str2, true);
            return;
        }
        callback.onReject(this$0.shouldShowSettings(str2));
    }

    private final boolean shouldShowSettings(String permission) {
        RequestPermissionService requestPermissionService = this.requestPermissionService;
        Intrinsics.checkNotNull(requestPermissionService);
        if (!requestPermissionService.getFallbackToSettings()) {
            return false;
        }
        RequestPermissionService requestPermissionService2 = this.requestPermissionService;
        Intrinsics.checkNotNull(requestPermissionService2);
        if (requestPermissionService2.getShouldShowRequestPermissionRationaleBeforeRequest() && !ActivityCompat.shouldShowRequestPermissionRationale(this, permission)) {
            IPreferencesService iPreferencesService = this.preferenceService;
            Intrinsics.checkNotNull(iPreferencesService);
            iPreferencesService.saveBool(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_USER_RESOLVED_PERMISSION_PREFIX + permission, true);
            return false;
        }
        IPreferencesService iPreferencesService2 = this.preferenceService;
        Intrinsics.checkNotNull(iPreferencesService2);
        Boolean bool = iPreferencesService2.getBool(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_USER_RESOLVED_PERMISSION_PREFIX + permission, false);
        Intrinsics.checkNotNull(bool);
        return bool.booleanValue();
    }
}
