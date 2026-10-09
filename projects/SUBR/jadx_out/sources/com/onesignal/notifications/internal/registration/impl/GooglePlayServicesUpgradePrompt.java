package com.onesignal.notifications.internal.registration.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import com.google.android.gms.common.GoogleApiAvailability;
import com.onesignal.common.AndroidUtils;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.notifications.BuildConfig;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: GooglePlayServicesUpgradePrompt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0011\u0010\u0010\u001a\u00020\rH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lcom/onesignal/notifications/internal/registration/impl/GooglePlayServicesUpgradePrompt;", "", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_deviceService", "Lcom/onesignal/core/internal/device/IDeviceService;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/core/internal/config/ConfigModelStore;)V", "isGooglePlayStoreInstalled", "", "()Z", "openPlayStoreToApp", "", "activity", "Landroid/app/Activity;", "showUpdateGPSDialog", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GooglePlayServicesUpgradePrompt {
    private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
    private final IApplicationService _applicationService;
    private final ConfigModelStore _configModelStore;
    private final IDeviceService _deviceService;

    public GooglePlayServicesUpgradePrompt(IApplicationService _applicationService, IDeviceService _deviceService, ConfigModelStore _configModelStore) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_deviceService, "_deviceService");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        this._applicationService = _applicationService;
        this._deviceService = _deviceService;
        this._configModelStore = _configModelStore;
    }

    public static final /* synthetic */ void access$openPlayStoreToApp(GooglePlayServicesUpgradePrompt googlePlayServicesUpgradePrompt, Activity activity) {
        googlePlayServicesUpgradePrompt.openPlayStoreToApp(activity);
    }

    private final boolean isGooglePlayStoreInstalled() {
        try {
            PackageManager packageManager = this._applicationService.getAppContext().getPackageManager();
            CharSequence charSequenceLoadLabel = packageManager.getPackageInfo("com.google.android.gms", 128).applicationInfo.loadLabel(packageManager);
            Intrinsics.checkNotNull(charSequenceLoadLabel, "null cannot be cast to non-null type kotlin.String");
            return !Intrinsics.areEqual((String) charSequenceLoadLabel, "Market");
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public final Object showUpdateGPSDialog(Continuation<? super Unit> continuation) throws Throwable {
        if (!this._deviceService.isAndroidDeviceType()) {
            return Unit.INSTANCE;
        }
        if (!isGooglePlayStoreInstalled() || this._configModelStore.getModel().getDisableGMSMissingPrompt() || this._configModelStore.getModel().getUserRejectedGMSUpdate()) {
            return Unit.INSTANCE;
        }
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.registration.impl.GooglePlayServicesUpgradePrompt$showUpdateGPSDialog$2, reason: invalid class name */
    /* JADX INFO: compiled from: GooglePlayServicesUpgradePrompt.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.registration.impl.GooglePlayServicesUpgradePrompt$showUpdateGPSDialog$2", f = "GooglePlayServicesUpgradePrompt.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GooglePlayServicesUpgradePrompt.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final Activity current = GooglePlayServicesUpgradePrompt.this._applicationService.getCurrent();
            if (current == null) {
                return Unit.INSTANCE;
            }
            Activity activity = current;
            String resourceString = AndroidUtils.INSTANCE.getResourceString(activity, "onesignal_gms_missing_alert_text", "To receive push notifications please press 'Update' to enable 'Google Play services'.");
            String resourceString2 = AndroidUtils.INSTANCE.getResourceString(activity, "onesignal_gms_missing_alert_button_update", "Update");
            String resourceString3 = AndroidUtils.INSTANCE.getResourceString(activity, "onesignal_gms_missing_alert_button_skip", "Skip");
            String resourceString4 = AndroidUtils.INSTANCE.getResourceString(activity, "onesignal_gms_missing_alert_button_close", "Close");
            final GooglePlayServicesUpgradePrompt googlePlayServicesUpgradePrompt = GooglePlayServicesUpgradePrompt.this;
            final GooglePlayServicesUpgradePrompt googlePlayServicesUpgradePrompt2 = GooglePlayServicesUpgradePrompt.this;
            new AlertDialog.Builder(activity).setMessage(resourceString).setPositiveButton(resourceString2, new DialogInterface.OnClickListener() { // from class: com.onesignal.notifications.internal.registration.impl.GooglePlayServicesUpgradePrompt$showUpdateGPSDialog$2$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    GooglePlayServicesUpgradePrompt.access$openPlayStoreToApp(googlePlayServicesUpgradePrompt, current);
                }
            }).setNegativeButton(resourceString3, new DialogInterface.OnClickListener() { // from class: com.onesignal.notifications.internal.registration.impl.GooglePlayServicesUpgradePrompt$showUpdateGPSDialog$2$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    GooglePlayServicesUpgradePrompt.AnonymousClass2.m476invokeSuspend$lambda1(googlePlayServicesUpgradePrompt2, dialogInterface, i);
                }
            }).setNeutralButton(resourceString4, (DialogInterface.OnClickListener) null).create().show();
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invokeSuspend$lambda-1, reason: not valid java name */
        public static final void m476invokeSuspend$lambda1(GooglePlayServicesUpgradePrompt googlePlayServicesUpgradePrompt, DialogInterface dialogInterface, int i) {
            googlePlayServicesUpgradePrompt._configModelStore.getModel().setUserRejectedGMSUpdate(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openPlayStoreToApp(Activity activity) {
        try {
            GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
            Intrinsics.checkNotNullExpressionValue(googleApiAvailability, "getInstance()");
            PendingIntent errorResolutionPendingIntent = googleApiAvailability.getErrorResolutionPendingIntent(activity, googleApiAvailability.isGooglePlayServicesAvailable(this._applicationService.getAppContext()), PLAY_SERVICES_RESOLUTION_REQUEST);
            if (errorResolutionPendingIntent != null) {
                errorResolutionPendingIntent.send();
            }
        } catch (PendingIntent.CanceledException e) {
            e.printStackTrace();
        }
    }
}
