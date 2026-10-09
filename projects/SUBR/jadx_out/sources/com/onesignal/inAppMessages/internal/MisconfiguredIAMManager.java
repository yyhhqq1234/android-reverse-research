package com.onesignal.inAppMessages.internal;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.minification.KeepStub;
import com.onesignal.inAppMessages.IInAppMessageClickListener;
import com.onesignal.inAppMessages.IInAppMessageLifecycleListener;
import com.onesignal.inAppMessages.IInAppMessagesManager;
import java.util.Collection;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.y8;

/* JADX INFO: compiled from: MisconfiguredIAMManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@KeepStub
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0002\b\u0001\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0012H\u0016J\u001c\u0010\u0013\u001a\u00020\u000b2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u000bH\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000fH\u0016J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0016\u0010\u001a\u001a\u00020\u000b2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00120\u001cH\u0016R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u001e"}, d2 = {"Lcom/onesignal/inAppMessages/internal/MisconfiguredIAMManager;", "Lcom/onesignal/inAppMessages/IInAppMessagesManager;", "()V", "value", "", y8.h.e0, "getPaused", "()Z", "setPaused", "(Z)V", "addClickListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onesignal/inAppMessages/IInAppMessageClickListener;", "addLifecycleListener", "Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;", "addTrigger", y8.h.W, "", "addTriggers", "triggers", "", "clearTriggers", "removeClickListener", "removeLifecycleListener", "removeTrigger", "removeTriggers", "keys", "", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MisconfiguredIAMManager implements IInAppMessagesManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: addTriggers, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ void mo451addTriggers(Map map) throws Exception {
        addTriggers((Map<String, String>) map);
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: removeTriggers, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ void mo456removeTriggers(Collection collection) throws Exception {
        removeTriggers((Collection<String>) collection);
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    public boolean getPaused() throws Exception {
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    public void setPaused(boolean z) throws Exception {
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: addTrigger, reason: merged with bridge method [inline-methods] */
    public Void mo450addTrigger(String key, String value) throws Exception {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        throw INSTANCE.getEXCEPTION();
    }

    public Void addTriggers(Map<String, String> triggers) throws Exception {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: removeTrigger, reason: merged with bridge method [inline-methods] */
    public Void mo455removeTrigger(String key) throws Exception {
        Intrinsics.checkNotNullParameter(key, "key");
        throw INSTANCE.getEXCEPTION();
    }

    public Void removeTriggers(Collection<String> keys) throws Exception {
        Intrinsics.checkNotNullParameter(keys, "keys");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: clearTriggers, reason: merged with bridge method [inline-methods] */
    public Void mo452clearTriggers() throws Exception {
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: addLifecycleListener, reason: merged with bridge method [inline-methods] */
    public Void mo449addLifecycleListener(IInAppMessageLifecycleListener listener) throws Exception {
        Intrinsics.checkNotNullParameter(listener, "listener");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: removeLifecycleListener, reason: merged with bridge method [inline-methods] */
    public Void mo454removeLifecycleListener(IInAppMessageLifecycleListener listener) throws Exception {
        Intrinsics.checkNotNullParameter(listener, "listener");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: addClickListener, reason: merged with bridge method [inline-methods] */
    public Void mo448addClickListener(IInAppMessageClickListener listener) throws Exception {
        Intrinsics.checkNotNullParameter(listener, "listener");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: removeClickListener, reason: merged with bridge method [inline-methods] */
    public Void mo453removeClickListener(IInAppMessageClickListener listener) throws Exception {
        Intrinsics.checkNotNullParameter(listener, "listener");
        throw INSTANCE.getEXCEPTION();
    }

    /* JADX INFO: compiled from: MisconfiguredIAMManager.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0018\u0010\u0003\u001a\u00060\u0004j\u0002`\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/onesignal/inAppMessages/internal/MisconfiguredIAMManager$Companion;", "", "()V", "EXCEPTION", "Ljava/lang/Exception;", "Lkotlin/Exception;", "getEXCEPTION", "()Ljava/lang/Exception;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Exception getEXCEPTION() {
            return new Exception("Must include gradle module com.onesignal:InAppMessages in order to use this functionality!");
        }
    }
}
