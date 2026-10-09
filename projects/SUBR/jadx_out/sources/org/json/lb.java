package org.json;

import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0018\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001c\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u001a\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\f\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u0004J\u0006\u0010\u0012\u001a\u00020\u0004J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\u0017\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u0006\u0010\u001b\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u001c\u001a\u00020\u0004J\u0012\u0010\u0006\u001a\u00020\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\bJ\u0012\u0010\n\u001a\u00020\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\bJ\u0012\u0010\f\u001a\u00020\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\b¨\u0006 "}, d2 = {"Lcom/ironsource/lb;", "", "Lcom/ironsource/qf;", IronSourceConstants.EVENTS_ERROR_CODE, "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "networkError", "a", "error", "", "description", "b", "c", "d", "e", "f", "h", "i", "j", "g", "k", "m", "l", NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST, NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON, "n", "q", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "s", "t", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class lb {
    public static final lb a = new lb();

    private lb() {
    }

    static /* synthetic */ IronSourceError a(lb lbVar, qf qfVar, IronSourceError ironSourceError, int i, Object obj) {
        if ((i & 2) != 0) {
            ironSourceError = null;
        }
        return lbVar.a(qfVar, ironSourceError);
    }

    public static /* synthetic */ IronSourceError a(lb lbVar, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return lbVar.a(str);
    }

    private final IronSourceError a(qf errorCode, IronSourceError networkError) {
        String str;
        if (networkError != null) {
            str = errorCode.getCom.onesignal.core.internal.database.impl.OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE java.lang.String() + " Underlying network error: '" + networkError.getErrorCode() + ':' + networkError.getErrorMessage() + '\'';
        } else {
            str = errorCode.getCom.onesignal.core.internal.database.impl.OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE java.lang.String();
        }
        return new IronSourceError(errorCode.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_ERROR_CODE java.lang.String(), str);
    }

    private final IronSourceError a(qf error, String description) {
        if (description == null || description.length() == 0) {
            description = error.getCom.onesignal.core.internal.database.impl.OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE java.lang.String();
        }
        return new IronSourceError(error.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_ERROR_CODE java.lang.String(), description);
    }

    public static /* synthetic */ IronSourceError b(lb lbVar, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return lbVar.b(str);
    }

    public static /* synthetic */ IronSourceError c(lb lbVar, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return lbVar.d(str);
    }

    public final IronSourceError a() {
        return a(this, qf.ISErrorInitDecryptionFailure, null, 2, null);
    }

    public final IronSourceError a(IronSourceError networkError) {
        Intrinsics.checkNotNullParameter(networkError, "networkError");
        return a(qf.ISErrorInitNetworkFailed, networkError);
    }

    public final IronSourceError a(String message) {
        return a(qf.ISErrorBannerLoadNoConfig, message);
    }

    public final IronSourceError b() {
        return a(this, qf.ISErrorInitHttpRequestFailed, null, 2, null);
    }

    public final IronSourceError b(IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        return a(qf.ISErrorLoadNetworkFailed, error);
    }

    public final IronSourceError b(String message) {
        return a(qf.ISErrorInterstitialLoadNoConfig, message);
    }

    public final IronSourceError c() {
        return a(this, qf.ISErrorInitInvalidResponse, null, 2, null);
    }

    public final IronSourceError c(IronSourceError networkError) {
        Intrinsics.checkNotNullParameter(networkError, "networkError");
        return a(qf.ISErrorShowNetworkFailed, networkError);
    }

    public final IronSourceError c(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        return a(qf.ISErrorLoadNetworkFailed, description);
    }

    public final IronSourceError d() {
        return a(this, qf.ISErrorLoadADMDecryptionFailure, null, 2, null);
    }

    public final IronSourceError d(String message) {
        return a(qf.ISErrorRewardedLoadNoConfig, message);
    }

    public final IronSourceError e() {
        return a(this, qf.ISErrorLoadADMEmptyServerData, null, 2, null);
    }

    public final IronSourceError f() {
        return a(this, qf.ISErrorLoadADMEmptyWaterfall, null, 2, null);
    }

    public final IronSourceError g() {
        return a(this, qf.ISErrorLoadADMInvalidConfigurationForRequestedNetwork, null, 2, null);
    }

    public final IronSourceError h() {
        return a(this, qf.ISErrorLoadADMInvalidJSON, null, 2, null);
    }

    public final IronSourceError i() {
        return a(this, qf.ISErrorLoadADMNoAuctionID, null, 2, null);
    }

    public final IronSourceError j() {
        return a(this, qf.ISErrorLoadADMNoConfigurationForRequestedNetwork, null, 2, null);
    }

    public final IronSourceError k() {
        return a(this, qf.ISErrorLoadBannerNetworkViewIsNull, null, 2, null);
    }

    public final IronSourceError l() {
        return a(this, qf.ISErrorLoadBannerNotSupportedSize, null, 2, null);
    }

    public final IronSourceError m() {
        return a(this, qf.ISErrorLoadBannerSizeIsNull, null, 2, null);
    }

    public final IronSourceError n() {
        return a(this, qf.ISErrorLoadBiddingInNonBidding, null, 2, null);
    }

    public final IronSourceError o() {
        return a(this, qf.ISErrorLoadInstanceNotInInitResponse, null, 2, null);
    }

    public final IronSourceError p() {
        return a(this, qf.ISErrorLoadNoAdFormatConfigurations, null, 2, null);
    }

    public final IronSourceError q() {
        return a(this, qf.ISErrorLoadNullADM, null, 2, null);
    }

    public final IronSourceError r() {
        return a(this, qf.ISErrorLoadSDKNotInitialized, null, 2, null);
    }

    public final IronSourceError s() {
        return a(this, qf.ISErrorLoadTimedOut, null, 2, null);
    }

    public final IronSourceError t() {
        return a(this, qf.ISErrorShowNotReadyToShowAd, null, 2, null);
    }
}
