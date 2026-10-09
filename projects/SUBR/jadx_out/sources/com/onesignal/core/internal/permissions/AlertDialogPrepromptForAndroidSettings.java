package com.onesignal.core.internal.permissions;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.WindowManager;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.R;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.j5;

/* JADX INFO: compiled from: AlertDialogPrepromptForAndroidSettings.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b¨\u0006\r"}, d2 = {"Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings;", "", "()V", j5.v, "", "activity", "Landroid/app/Activity;", "titlePrefix", "", "previouslyDeniedPostfix", "callback", "Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings$Callback;", "Callback", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AlertDialogPrepromptForAndroidSettings {
    public static final AlertDialogPrepromptForAndroidSettings INSTANCE = new AlertDialogPrepromptForAndroidSettings();

    /* JADX INFO: compiled from: AlertDialogPrepromptForAndroidSettings.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings$Callback;", "", "onAccept", "", "onDecline", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface Callback {
        void onAccept();

        void onDecline();
    }

    private AlertDialogPrepromptForAndroidSettings() {
    }

    public final void show(Activity activity, String titlePrefix, String previouslyDeniedPostfix, final Callback callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(titlePrefix, "titlePrefix");
        Intrinsics.checkNotNullParameter(previouslyDeniedPostfix, "previouslyDeniedPostfix");
        Intrinsics.checkNotNullParameter(callback, "callback");
        String string = activity.getString(R.string.permission_not_available_title);
        Intrinsics.checkNotNullExpressionValue(string, "activity.getString(R.str…sion_not_available_title)");
        String str = String.format(string, Arrays.copyOf(new Object[]{titlePrefix}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(this, *args)");
        String string2 = activity.getString(R.string.permission_not_available_message);
        Intrinsics.checkNotNullExpressionValue(string2, "activity.getString(R.str…on_not_available_message)");
        String str2 = String.format(string2, Arrays.copyOf(new Object[]{previouslyDeniedPostfix}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(this, *args)");
        try {
            new AlertDialog.Builder(activity).setTitle(str).setMessage(str2).setPositiveButton(R.string.permission_not_available_open_settings_option, new DialogInterface.OnClickListener() { // from class: com.onesignal.core.internal.permissions.AlertDialogPrepromptForAndroidSettings$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    AlertDialogPrepromptForAndroidSettings.m441show$lambda0(callback, dialogInterface, i);
                }
            }).setNegativeButton(android.R.string.no, new DialogInterface.OnClickListener() { // from class: com.onesignal.core.internal.permissions.AlertDialogPrepromptForAndroidSettings$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    AlertDialogPrepromptForAndroidSettings.m442show$lambda1(callback, dialogInterface, i);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.onesignal.core.internal.permissions.AlertDialogPrepromptForAndroidSettings$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    AlertDialogPrepromptForAndroidSettings.m443show$lambda2(callback, dialogInterface);
                }
            }).show();
        } catch (WindowManager.BadTokenException unused) {
            Logging.log(LogLevel.ERROR, "Alert dialog for Android settings was skipped because the activity was unavailable to display it.");
            callback.onDecline();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: show$lambda-0, reason: not valid java name */
    public static final void m441show$lambda0(Callback callback, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        callback.onAccept();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: show$lambda-1, reason: not valid java name */
    public static final void m442show$lambda1(Callback callback, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        callback.onDecline();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: show$lambda-2, reason: not valid java name */
    public static final void m443show$lambda2(Callback callback, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        callback.onDecline();
    }
}
