package com.onesignal.internal;

import android.content.Context;
import android.os.Build;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.ads.RequestConfiguration;
import com.onesignal.IOneSignal;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.DeviceUtils;
import com.onesignal.common.IDManager;
import com.onesignal.common.JSONObjectExtensionsKt;
import com.onesignal.common.OneSignalUtils;
import com.onesignal.common.modeling.IModelStore;
import com.onesignal.common.modeling.ISingletonModelStore;
import com.onesignal.common.modeling.ModelChangeTags;
import com.onesignal.common.modules.IModule;
import com.onesignal.common.services.IServiceProvider;
import com.onesignal.common.services.ServiceBuilder;
import com.onesignal.common.services.ServiceProvider;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.CoreModule;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.application.impl.ApplicationService;
import com.onesignal.core.internal.config.ConfigModel;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.operations.IOperationRepo;
import com.onesignal.core.internal.preferences.IPreferencesService;
import com.onesignal.core.internal.preferences.PreferenceOneSignalKeys;
import com.onesignal.core.internal.preferences.PreferenceStoreFix;
import com.onesignal.core.internal.preferences.PreferenceStores;
import com.onesignal.core.internal.startup.StartupService;
import com.onesignal.debug.IDebugManager;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.DebugManager;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.IInAppMessagesManager;
import com.onesignal.inAppMessages.internal.prompt.InAppMessagePromptTypes;
import com.onesignal.location.ILocationManager;
import com.onesignal.notifications.INotificationsManager;
import com.onesignal.session.ISessionManager;
import com.onesignal.session.SessionModule;
import com.onesignal.session.internal.outcomes.impl.OutcomeEventsTable;
import com.onesignal.session.internal.session.SessionModel;
import com.onesignal.session.internal.session.SessionModelStore;
import com.onesignal.user.IUserManager;
import com.onesignal.user.UserModule;
import com.onesignal.user.internal.backend.IdentityConstants;
import com.onesignal.user.internal.identity.IdentityModel;
import com.onesignal.user.internal.identity.IdentityModelStore;
import com.onesignal.user.internal.operations.LoginUserFromSubscriptionOperation;
import com.onesignal.user.internal.operations.LoginUserOperation;
import com.onesignal.user.internal.operations.TransferSubscriptionOperation;
import com.onesignal.user.internal.properties.PropertiesModel;
import com.onesignal.user.internal.properties.PropertiesModelStore;
import com.onesignal.user.internal.subscriptions.SubscriptionModel;
import com.onesignal.user.internal.subscriptions.SubscriptionModelStore;
import com.onesignal.user.internal.subscriptions.SubscriptionStatus;
import com.onesignal.user.internal.subscriptions.SubscriptionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.json.JSONObject;
import org.json.j5;

/* JADX INFO: compiled from: OneSignalImp.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003JN\u0010P\u001a\u00020Q2\b\b\u0002\u0010R\u001a\u00020\u00052:\b\u0002\u0010S\u001a4\u0012\u0013\u0012\u00110U¢\u0006\f\bV\u0012\b\bW\u0012\u0004\b\b(X\u0012\u0013\u0012\u00110Y¢\u0006\f\bV\u0012\b\bW\u0012\u0004\b\b(Z\u0012\u0004\u0012\u00020Q\u0018\u00010TH\u0002J\"\u0010[\u001a\b\u0012\u0004\u0012\u0002H\\0(\"\u0004\b\u0000\u0010\\2\f\u0010]\u001a\b\u0012\u0004\u0012\u0002H\\0^H\u0016J!\u0010_\u001a\u0002H\\\"\u0004\b\u0000\u0010\\2\f\u0010]\u001a\b\u0012\u0004\u0012\u0002H\\0^H\u0016¢\u0006\u0002\u0010`J#\u0010a\u001a\u0004\u0018\u0001H\\\"\u0004\b\u0000\u0010\\2\f\u0010]\u001a\b\u0012\u0004\u0012\u0002H\\0^H\u0016¢\u0006\u0002\u0010`J\u001c\u0010b\u001a\u00020\u0005\"\u0004\b\u0000\u0010\\2\f\u0010]\u001a\b\u0012\u0004\u0012\u0002H\\0^H\u0016J\u001a\u0010c\u001a\u00020\u00052\u0006\u0010d\u001a\u00020e2\b\u0010f\u001a\u0004\u0018\u00010)H\u0016J\u001a\u0010g\u001a\u00020Q2\u0006\u0010h\u001a\u00020)2\b\u0010i\u001a\u0004\u0018\u00010)H\u0016J\b\u0010j\u001a\u00020QH\u0016R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00058V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00058V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u0015X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00058V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u000e\"\u0004\b\u001a\u0010\u0010R\u0014\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020 8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010%\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u000e\"\u0004\b&\u0010\u0010R\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020+8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u000e\u0010.\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0002008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u00102R\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00105\u001a\u0002068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b7\u00108R\u0014\u00109\u001a\u00020:8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0014\u0010=\u001a\u00020)X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u000e\u0010@\u001a\u00020AX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010B\u001a\u00020C8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010ER\u0010\u0010F\u001a\u0004\u0018\u00010GX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010H\u001a\u00020I8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010KR\u0014\u0010L\u001a\u00020M8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bN\u0010O¨\u0006k"}, d2 = {"Lcom/onesignal/internal/OneSignalImp;", "Lcom/onesignal/IOneSignal;", "Lcom/onesignal/common/services/IServiceProvider;", "()V", "_consentGiven", "", "Ljava/lang/Boolean;", "_consentRequired", "_disableGMSMissingPrompt", "configModel", "Lcom/onesignal/core/internal/config/ConfigModel;", "value", "consentGiven", "getConsentGiven", "()Z", "setConsentGiven", "(Z)V", "consentRequired", "getConsentRequired", "setConsentRequired", "debug", "Lcom/onesignal/debug/IDebugManager;", "getDebug", "()Lcom/onesignal/debug/IDebugManager;", "disableGMSMissingPrompt", "getDisableGMSMissingPrompt", "setDisableGMSMissingPrompt", "identityModelStore", "Lcom/onesignal/user/internal/identity/IdentityModelStore;", "getIdentityModelStore", "()Lcom/onesignal/user/internal/identity/IdentityModelStore;", "inAppMessages", "Lcom/onesignal/inAppMessages/IInAppMessagesManager;", "getInAppMessages", "()Lcom/onesignal/inAppMessages/IInAppMessagesManager;", "initLock", "", "isInitialized", "setInitialized", "listOfModules", "", "", InAppMessagePromptTypes.LOCATION_PROMPT_KEY, "Lcom/onesignal/location/ILocationManager;", "getLocation", "()Lcom/onesignal/location/ILocationManager;", "loginLock", j5.x, "Lcom/onesignal/notifications/INotificationsManager;", "getNotifications", "()Lcom/onesignal/notifications/INotificationsManager;", "operationRepo", "Lcom/onesignal/core/internal/operations/IOperationRepo;", "preferencesService", "Lcom/onesignal/core/internal/preferences/IPreferencesService;", "getPreferencesService", "()Lcom/onesignal/core/internal/preferences/IPreferencesService;", "propertiesModelStore", "Lcom/onesignal/user/internal/properties/PropertiesModelStore;", "getPropertiesModelStore", "()Lcom/onesignal/user/internal/properties/PropertiesModelStore;", "sdkVersion", "getSdkVersion", "()Ljava/lang/String;", "services", "Lcom/onesignal/common/services/ServiceProvider;", OutcomeEventsTable.COLUMN_NAME_SESSION, "Lcom/onesignal/session/ISessionManager;", "getSession", "()Lcom/onesignal/session/ISessionManager;", "sessionModel", "Lcom/onesignal/session/internal/session/SessionModel;", "subscriptionModelStore", "Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;", "getSubscriptionModelStore", "()Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;", "user", "Lcom/onesignal/user/IUserManager;", "getUser", "()Lcom/onesignal/user/IUserManager;", "createAndSwitchToNewUser", "", "suppressBackendOperation", "modify", "Lkotlin/Function2;", "Lcom/onesignal/user/internal/identity/IdentityModel;", "Lkotlin/ParameterName;", "name", "identityModel", "Lcom/onesignal/user/internal/properties/PropertiesModel;", "propertiesModel", "getAllServices", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "c", "Ljava/lang/Class;", "getService", "(Ljava/lang/Class;)Ljava/lang/Object;", "getServiceOrNull", "hasService", "initWithContext", "context", "Landroid/content/Context;", "appId", AppLovinEventTypes.USER_LOGGED_IN, "externalId", "jwtBearerToken", "logout", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OneSignalImp implements IOneSignal, IServiceProvider {
    private Boolean _consentGiven;
    private Boolean _consentRequired;
    private Boolean _disableGMSMissingPrompt;
    private ConfigModel configModel;
    private boolean isInitialized;
    private final List<String> listOfModules;
    private IOperationRepo operationRepo;
    private final ServiceProvider services;
    private SessionModel sessionModel;
    private final String sdkVersion = OneSignalUtils.SDK_VERSION;
    private final IDebugManager debug = new DebugManager();
    private final Object initLock = new Object();
    private final Object loginLock = new Object();

    public OneSignalImp() throws IllegalAccessException, InstantiationException {
        List<String> listListOf = CollectionsKt.listOf((Object[]) new String[]{"com.onesignal.notifications.NotificationsModule", "com.onesignal.inAppMessages.InAppMessagesModule", "com.onesignal.location.LocationModule"});
        this.listOfModules = listListOf;
        ServiceBuilder serviceBuilder = new ServiceBuilder();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new CoreModule());
        arrayList.add(new SessionModule());
        arrayList.add(new UserModule());
        Iterator<String> it = listListOf.iterator();
        while (it.hasNext()) {
            try {
                Object objNewInstance = Class.forName(it.next()).newInstance();
                Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type com.onesignal.common.modules.IModule");
                arrayList.add((IModule) objNewInstance);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((IModule) it2.next()).register(serviceBuilder);
        }
        this.services = serviceBuilder.build();
    }

    @Override // com.onesignal.IOneSignal
    public void login(String str) {
        IOneSignal.DefaultImpls.login(this, str);
    }

    @Override // com.onesignal.IOneSignal
    public String getSdkVersion() {
        return this.sdkVersion;
    }

    @Override // com.onesignal.IOneSignal
    /* JADX INFO: renamed from: isInitialized, reason: from getter */
    public boolean getIsInitialized() {
        return this.isInitialized;
    }

    public void setInitialized(boolean z) {
        this.isInitialized = z;
    }

    @Override // com.onesignal.IOneSignal
    public boolean getConsentRequired() {
        Boolean consentRequired;
        ConfigModel configModel = this.configModel;
        return (configModel == null || (consentRequired = configModel.getConsentRequired()) == null) ? Intrinsics.areEqual((Object) this._consentRequired, (Object) true) : consentRequired.booleanValue();
    }

    @Override // com.onesignal.IOneSignal
    public void setConsentRequired(boolean z) {
        this._consentRequired = Boolean.valueOf(z);
        ConfigModel configModel = this.configModel;
        if (configModel == null) {
            return;
        }
        configModel.setConsentRequired(Boolean.valueOf(z));
    }

    @Override // com.onesignal.IOneSignal
    public boolean getConsentGiven() {
        Boolean consentGiven;
        ConfigModel configModel = this.configModel;
        return (configModel == null || (consentGiven = configModel.getConsentGiven()) == null) ? Intrinsics.areEqual((Object) this._consentGiven, (Object) true) : consentGiven.booleanValue();
    }

    @Override // com.onesignal.IOneSignal
    public void setConsentGiven(boolean z) {
        IOperationRepo iOperationRepo;
        Boolean bool = this._consentGiven;
        this._consentGiven = Boolean.valueOf(z);
        ConfigModel configModel = this.configModel;
        if (configModel != null) {
            configModel.setConsentGiven(Boolean.valueOf(z));
        }
        if (Intrinsics.areEqual(bool, Boolean.valueOf(z)) || !z || (iOperationRepo = this.operationRepo) == null) {
            return;
        }
        iOperationRepo.forceExecuteOperations();
    }

    @Override // com.onesignal.IOneSignal
    public boolean getDisableGMSMissingPrompt() {
        ConfigModel configModel = this.configModel;
        return configModel != null ? configModel.getDisableGMSMissingPrompt() : Intrinsics.areEqual((Object) this._disableGMSMissingPrompt, (Object) true);
    }

    @Override // com.onesignal.IOneSignal
    public void setDisableGMSMissingPrompt(boolean z) {
        this._disableGMSMissingPrompt = Boolean.valueOf(z);
        ConfigModel configModel = this.configModel;
        if (configModel == null) {
            return;
        }
        configModel.setDisableGMSMissingPrompt(z);
    }

    @Override // com.onesignal.IOneSignal
    public IDebugManager getDebug() {
        return this.debug;
    }

    @Override // com.onesignal.IOneSignal
    public ISessionManager getSession() throws Exception {
        if (!getIsInitialized()) {
            throw new Exception("Must call 'initWithContext' before use");
        }
        return (ISessionManager) this.services.getService(ISessionManager.class);
    }

    @Override // com.onesignal.IOneSignal
    public INotificationsManager getNotifications() throws Exception {
        if (!getIsInitialized()) {
            throw new Exception("Must call 'initWithContext' before use");
        }
        return (INotificationsManager) this.services.getService(INotificationsManager.class);
    }

    @Override // com.onesignal.IOneSignal
    public ILocationManager getLocation() throws Exception {
        if (!getIsInitialized()) {
            throw new Exception("Must call 'initWithContext' before use");
        }
        return (ILocationManager) this.services.getService(ILocationManager.class);
    }

    @Override // com.onesignal.IOneSignal
    public IInAppMessagesManager getInAppMessages() throws Exception {
        if (!getIsInitialized()) {
            throw new Exception("Must call 'initWithContext' before use");
        }
        return (IInAppMessagesManager) this.services.getService(IInAppMessagesManager.class);
    }

    @Override // com.onesignal.IOneSignal
    public IUserManager getUser() throws Exception {
        if (!getIsInitialized()) {
            throw new Exception("Must call 'initWithContext' before use");
        }
        return (IUserManager) this.services.getService(IUserManager.class);
    }

    private final IdentityModelStore getIdentityModelStore() {
        return (IdentityModelStore) this.services.getService(IdentityModelStore.class);
    }

    private final PropertiesModelStore getPropertiesModelStore() {
        return (PropertiesModelStore) this.services.getService(PropertiesModelStore.class);
    }

    private final SubscriptionModelStore getSubscriptionModelStore() {
        return (SubscriptionModelStore) this.services.getService(SubscriptionModelStore.class);
    }

    private final IPreferencesService getPreferencesService() {
        return (IPreferencesService) this.services.getService(IPreferencesService.class);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0166 A[Catch: all -> 0x02d5, TryCatch #0 {, blocks: (B:4:0x002c, B:6:0x0033, B:9:0x003c, B:11:0x0097, B:13:0x00a4, B:17:0x00ad, B:19:0x00ba, B:24:0x00cd, B:26:0x00d7, B:28:0x00db, B:29:0x00e8, B:31:0x00ec, B:32:0x00f9, B:34:0x00fd, B:35:0x010e, B:37:0x011a, B:40:0x0130, B:77:0x02cd, B:41:0x0152, B:43:0x0166, B:44:0x01b0, B:46:0x01d3, B:51:0x01fa, B:58:0x020c, B:61:0x0219, B:63:0x021e, B:65:0x022a, B:66:0x022c, B:68:0x0235, B:71:0x025c, B:74:0x0277, B:76:0x0293, B:67:0x0230, B:54:0x0203, B:49:0x01f4), top: B:83:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:44:0x01b0 A[Catch: all -> 0x02d5, TryCatch #0 {, blocks: (B:4:0x002c, B:6:0x0033, B:9:0x003c, B:11:0x0097, B:13:0x00a4, B:17:0x00ad, B:19:0x00ba, B:24:0x00cd, B:26:0x00d7, B:28:0x00db, B:29:0x00e8, B:31:0x00ec, B:32:0x00f9, B:34:0x00fd, B:35:0x010e, B:37:0x011a, B:40:0x0130, B:77:0x02cd, B:41:0x0152, B:43:0x0166, B:44:0x01b0, B:46:0x01d3, B:51:0x01fa, B:58:0x020c, B:61:0x0219, B:63:0x021e, B:65:0x022a, B:66:0x022c, B:68:0x0235, B:71:0x025c, B:74:0x0277, B:76:0x0293, B:67:0x0230, B:54:0x0203, B:49:0x01f4), top: B:83:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:46:0x01d3 A[Catch: all -> 0x02d5, TryCatch #0 {, blocks: (B:4:0x002c, B:6:0x0033, B:9:0x003c, B:11:0x0097, B:13:0x00a4, B:17:0x00ad, B:19:0x00ba, B:24:0x00cd, B:26:0x00d7, B:28:0x00db, B:29:0x00e8, B:31:0x00ec, B:32:0x00f9, B:34:0x00fd, B:35:0x010e, B:37:0x011a, B:40:0x0130, B:77:0x02cd, B:41:0x0152, B:43:0x0166, B:44:0x01b0, B:46:0x01d3, B:51:0x01fa, B:58:0x020c, B:61:0x0219, B:63:0x021e, B:65:0x022a, B:66:0x022c, B:68:0x0235, B:71:0x025c, B:74:0x0277, B:76:0x0293, B:67:0x0230, B:54:0x0203, B:49:0x01f4), top: B:83:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:57:0x020b  */
    /* JADX WARN: Code duplicated, block: B:60:0x0217  */
    /* JADX WARN: Code duplicated, block: B:63:0x021e A[Catch: all -> 0x02d5, TryCatch #0 {, blocks: (B:4:0x002c, B:6:0x0033, B:9:0x003c, B:11:0x0097, B:13:0x00a4, B:17:0x00ad, B:19:0x00ba, B:24:0x00cd, B:26:0x00d7, B:28:0x00db, B:29:0x00e8, B:31:0x00ec, B:32:0x00f9, B:34:0x00fd, B:35:0x010e, B:37:0x011a, B:40:0x0130, B:77:0x02cd, B:41:0x0152, B:43:0x0166, B:44:0x01b0, B:46:0x01d3, B:51:0x01fa, B:58:0x020c, B:61:0x0219, B:63:0x021e, B:65:0x022a, B:66:0x022c, B:68:0x0235, B:71:0x025c, B:74:0x0277, B:76:0x0293, B:67:0x0230, B:54:0x0203, B:49:0x01f4), top: B:83:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:65:0x022a A[Catch: all -> 0x02d5, TryCatch #0 {, blocks: (B:4:0x002c, B:6:0x0033, B:9:0x003c, B:11:0x0097, B:13:0x00a4, B:17:0x00ad, B:19:0x00ba, B:24:0x00cd, B:26:0x00d7, B:28:0x00db, B:29:0x00e8, B:31:0x00ec, B:32:0x00f9, B:34:0x00fd, B:35:0x010e, B:37:0x011a, B:40:0x0130, B:77:0x02cd, B:41:0x0152, B:43:0x0166, B:44:0x01b0, B:46:0x01d3, B:51:0x01fa, B:58:0x020c, B:61:0x0219, B:63:0x021e, B:65:0x022a, B:66:0x022c, B:68:0x0235, B:71:0x025c, B:74:0x0277, B:76:0x0293, B:67:0x0230, B:54:0x0203, B:49:0x01f4), top: B:83:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0230 A[Catch: all -> 0x02d5, TryCatch #0 {, blocks: (B:4:0x002c, B:6:0x0033, B:9:0x003c, B:11:0x0097, B:13:0x00a4, B:17:0x00ad, B:19:0x00ba, B:24:0x00cd, B:26:0x00d7, B:28:0x00db, B:29:0x00e8, B:31:0x00ec, B:32:0x00f9, B:34:0x00fd, B:35:0x010e, B:37:0x011a, B:40:0x0130, B:77:0x02cd, B:41:0x0152, B:43:0x0166, B:44:0x01b0, B:46:0x01d3, B:51:0x01fa, B:58:0x020c, B:61:0x0219, B:63:0x021e, B:65:0x022a, B:66:0x022c, B:68:0x0235, B:71:0x025c, B:74:0x0277, B:76:0x0293, B:67:0x0230, B:54:0x0203, B:49:0x01f4), top: B:83:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:70:0x025a  */
    /* JADX WARN: Code duplicated, block: B:73:0x0275  */
    /* JADX WARN: Code duplicated, block: B:75:0x0292  */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x01b0, please report this as an issue */
    @Override // com.onesignal.IOneSignal
    public boolean initWithContext(Context context, String appId) {
        boolean z;
        String string$default;
        String string$default2;
        boolean z2;
        Integer numSafeInt;
        SubscriptionModel subscriptionModel;
        boolean z3;
        String strSafeString;
        String carrierName;
        String appVersion;
        SubscriptionStatus subscriptionStatusFromInt;
        Intrinsics.checkNotNullParameter(context, "context");
        Logging.log(LogLevel.DEBUG, "initWithContext(context: " + context + ", appId: " + appId + ')');
        synchronized (this.initLock) {
            if (getIsInitialized()) {
                Logging.log(LogLevel.DEBUG, "initWithContext: SDK already initialized");
                return true;
            }
            Logging.log(LogLevel.DEBUG, "initWithContext: SDK initializing");
            PreferenceStoreFix.INSTANCE.ensureNoObfuscatedPrefStore(context);
            IApplicationService iApplicationService = (IApplicationService) this.services.getService(IApplicationService.class);
            Intrinsics.checkNotNull(iApplicationService, "null cannot be cast to non-null type com.onesignal.core.internal.application.impl.ApplicationService");
            ((ApplicationService) iApplicationService).start(context);
            Logging.INSTANCE.setApplicationService(iApplicationService);
            this.configModel = ((ConfigModelStore) this.services.getService(ConfigModelStore.class)).getModel();
            this.sessionModel = ((SessionModelStore) this.services.getService(SessionModelStore.class)).getModel();
            this.operationRepo = (IOperationRepo) this.services.getService(IOperationRepo.class);
            if (appId == null) {
                ConfigModel configModel = this.configModel;
                Intrinsics.checkNotNull(configModel);
                if (!configModel.hasProperty("appId")) {
                    Logging.warn$default("initWithContext called without providing appId, and no appId has been established!", null, 2, null);
                    return false;
                }
            }
            if (appId != null) {
                ConfigModel configModel2 = this.configModel;
                Intrinsics.checkNotNull(configModel2);
                if (configModel2.hasProperty("appId")) {
                    ConfigModel configModel3 = this.configModel;
                    Intrinsics.checkNotNull(configModel3);
                    z = !Intrinsics.areEqual(configModel3.getAppId(), appId);
                }
                ConfigModel configModel4 = this.configModel;
                Intrinsics.checkNotNull(configModel4);
                configModel4.setAppId(appId);
            } else {
                z = false;
            }
            if (this._consentRequired != null) {
                ConfigModel configModel5 = this.configModel;
                Intrinsics.checkNotNull(configModel5);
                Boolean bool = this._consentRequired;
                Intrinsics.checkNotNull(bool);
                configModel5.setConsentRequired(bool);
            }
            if (this._consentGiven != null) {
                ConfigModel configModel6 = this.configModel;
                Intrinsics.checkNotNull(configModel6);
                Boolean bool2 = this._consentGiven;
                Intrinsics.checkNotNull(bool2);
                configModel6.setConsentGiven(bool2);
            }
            if (this._disableGMSMissingPrompt != null) {
                ConfigModel configModel7 = this.configModel;
                Intrinsics.checkNotNull(configModel7);
                Boolean bool3 = this._disableGMSMissingPrompt;
                Intrinsics.checkNotNull(bool3);
                configModel7.setDisableGMSMissingPrompt(bool3.booleanValue());
            }
            StartupService startupService = new StartupService(this.services);
            startupService.bootstrap();
            if (!z) {
                IdentityModelStore identityModelStore = getIdentityModelStore();
                Intrinsics.checkNotNull(identityModelStore);
                if (!identityModelStore.getModel().hasProperty(IdentityConstants.ONESIGNAL_ID)) {
                    IPreferencesService preferencesService = getPreferencesService();
                    Intrinsics.checkNotNull(preferencesService);
                    string$default = IPreferencesService.DefaultImpls.getString$default(preferencesService, PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_LEGACY_PLAYER_ID, null, 4, null);
                    if (string$default == null) {
                        Logging.debug$default("initWithContext: creating new device-scoped user", null, 2, null);
                        createAndSwitchToNewUser$default(this, false, null, 3, null);
                        IOperationRepo iOperationRepo = this.operationRepo;
                        Intrinsics.checkNotNull(iOperationRepo);
                        ConfigModel configModel8 = this.configModel;
                        Intrinsics.checkNotNull(configModel8);
                        String appId2 = configModel8.getAppId();
                        IdentityModelStore identityModelStore2 = getIdentityModelStore();
                        Intrinsics.checkNotNull(identityModelStore2);
                        String onesignalId = identityModelStore2.getModel().getOnesignalId();
                        IdentityModelStore identityModelStore3 = getIdentityModelStore();
                        Intrinsics.checkNotNull(identityModelStore3);
                        IOperationRepo.DefaultImpls.enqueue$default(iOperationRepo, new LoginUserOperation(appId2, onesignalId, identityModelStore3.getModel().getExternalId(), null, 8, null), false, 2, null);
                    } else {
                        Logging.debug$default("initWithContext: creating user linked to subscription " + string$default, null, 2, null);
                        IPreferencesService preferencesService2 = getPreferencesService();
                        Intrinsics.checkNotNull(preferencesService2);
                        string$default2 = IPreferencesService.DefaultImpls.getString$default(preferencesService2, PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_LEGACY_USER_SYNCVALUES, null, 4, null);
                        if (string$default2 != null) {
                            JSONObject jSONObject = new JSONObject(string$default2);
                            numSafeInt = JSONObjectExtensionsKt.safeInt(jSONObject, "notification_types");
                            subscriptionModel = new SubscriptionModel();
                            subscriptionModel.setId(string$default);
                            subscriptionModel.setType(SubscriptionType.PUSH);
                            int value = SubscriptionStatus.NO_PERMISSION.getValue();
                            if (numSafeInt != null && numSafeInt.intValue() == value) {
                                z3 = false;
                            } else {
                                int value2 = SubscriptionStatus.UNSUBSCRIBE.getValue();
                                if (numSafeInt != null && numSafeInt.intValue() == value2) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                            }
                            subscriptionModel.setOptedIn(z3);
                            strSafeString = JSONObjectExtensionsKt.safeString(jSONObject, "identifier");
                            if (strSafeString == null) {
                                strSafeString = "";
                            }
                            subscriptionModel.setAddress(strSafeString);
                            if (numSafeInt != null) {
                                subscriptionStatusFromInt = SubscriptionStatus.INSTANCE.fromInt(numSafeInt.intValue());
                                if (subscriptionStatusFromInt == null) {
                                    subscriptionStatusFromInt = SubscriptionStatus.NO_PERMISSION;
                                }
                                subscriptionModel.setStatus(subscriptionStatusFromInt);
                            } else {
                                subscriptionModel.setStatus(SubscriptionStatus.SUBSCRIBED);
                            }
                            subscriptionModel.setSdk(OneSignalUtils.SDK_VERSION);
                            String RELEASE = Build.VERSION.RELEASE;
                            Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
                            subscriptionModel.setDeviceOS(RELEASE);
                            carrierName = DeviceUtils.INSTANCE.getCarrierName(((IApplicationService) this.services.getService(IApplicationService.class)).getAppContext());
                            if (carrierName == null) {
                                carrierName = "";
                            }
                            subscriptionModel.setCarrier(carrierName);
                            appVersion = AndroidUtils.INSTANCE.getAppVersion(((IApplicationService) this.services.getService(IApplicationService.class)).getAppContext());
                            if (appVersion == null) {
                                appVersion = "";
                            }
                            subscriptionModel.setAppVersion(appVersion);
                            ConfigModel configModel9 = this.configModel;
                            Intrinsics.checkNotNull(configModel9);
                            configModel9.setPushSubscriptionId(string$default);
                            SubscriptionModelStore subscriptionModelStore = getSubscriptionModelStore();
                            Intrinsics.checkNotNull(subscriptionModelStore);
                            subscriptionModelStore.add(subscriptionModel, ModelChangeTags.NO_PROPOGATE);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        createAndSwitchToNewUser$default(this, z2, null, 2, null);
                        IOperationRepo iOperationRepo2 = this.operationRepo;
                        Intrinsics.checkNotNull(iOperationRepo2);
                        ConfigModel configModel10 = this.configModel;
                        Intrinsics.checkNotNull(configModel10);
                        String appId3 = configModel10.getAppId();
                        IdentityModelStore identityModelStore4 = getIdentityModelStore();
                        Intrinsics.checkNotNull(identityModelStore4);
                        IOperationRepo.DefaultImpls.enqueue$default(iOperationRepo2, new LoginUserFromSubscriptionOperation(appId3, identityModelStore4.getModel().getOnesignalId(), string$default), false, 2, null);
                        IPreferencesService preferencesService3 = getPreferencesService();
                        Intrinsics.checkNotNull(preferencesService3);
                        preferencesService3.saveString(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_LEGACY_PLAYER_ID, null);
                    }
                } else {
                    StringBuilder sb = new StringBuilder("initWithContext: using cached user ");
                    IdentityModelStore identityModelStore5 = getIdentityModelStore();
                    Intrinsics.checkNotNull(identityModelStore5);
                    sb.append(identityModelStore5.getModel().getOnesignalId());
                    Logging.debug$default(sb.toString(), null, 2, null);
                }
            } else {
                IPreferencesService preferencesService4 = getPreferencesService();
                Intrinsics.checkNotNull(preferencesService4);
                string$default = IPreferencesService.DefaultImpls.getString$default(preferencesService4, PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_LEGACY_PLAYER_ID, null, 4, null);
                if (string$default == null) {
                    Logging.debug$default("initWithContext: creating new device-scoped user", null, 2, null);
                    createAndSwitchToNewUser$default(this, false, null, 3, null);
                    IOperationRepo iOperationRepo3 = this.operationRepo;
                    Intrinsics.checkNotNull(iOperationRepo3);
                    ConfigModel configModel11 = this.configModel;
                    Intrinsics.checkNotNull(configModel11);
                    String appId4 = configModel11.getAppId();
                    IdentityModelStore identityModelStore6 = getIdentityModelStore();
                    Intrinsics.checkNotNull(identityModelStore6);
                    String onesignalId2 = identityModelStore6.getModel().getOnesignalId();
                    IdentityModelStore identityModelStore7 = getIdentityModelStore();
                    Intrinsics.checkNotNull(identityModelStore7);
                    IOperationRepo.DefaultImpls.enqueue$default(iOperationRepo3, new LoginUserOperation(appId4, onesignalId2, identityModelStore7.getModel().getExternalId(), null, 8, null), false, 2, null);
                } else {
                    Logging.debug$default("initWithContext: creating user linked to subscription " + string$default, null, 2, null);
                    IPreferencesService preferencesService5 = getPreferencesService();
                    Intrinsics.checkNotNull(preferencesService5);
                    string$default2 = IPreferencesService.DefaultImpls.getString$default(preferencesService5, PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_LEGACY_USER_SYNCVALUES, null, 4, null);
                    if (string$default2 != null) {
                        JSONObject jSONObject2 = new JSONObject(string$default2);
                        numSafeInt = JSONObjectExtensionsKt.safeInt(jSONObject2, "notification_types");
                        subscriptionModel = new SubscriptionModel();
                        subscriptionModel.setId(string$default);
                        subscriptionModel.setType(SubscriptionType.PUSH);
                        int value3 = SubscriptionStatus.NO_PERMISSION.getValue();
                        if (numSafeInt != null) {
                            z3 = false;
                            subscriptionModel.setOptedIn(z3);
                            strSafeString = JSONObjectExtensionsKt.safeString(jSONObject2, "identifier");
                            if (strSafeString == null) {
                                strSafeString = "";
                            }
                            subscriptionModel.setAddress(strSafeString);
                            if (numSafeInt != null) {
                                subscriptionStatusFromInt = SubscriptionStatus.INSTANCE.fromInt(numSafeInt.intValue());
                                if (subscriptionStatusFromInt == null) {
                                    subscriptionStatusFromInt = SubscriptionStatus.NO_PERMISSION;
                                }
                                subscriptionModel.setStatus(subscriptionStatusFromInt);
                            } else {
                                subscriptionModel.setStatus(SubscriptionStatus.SUBSCRIBED);
                            }
                            subscriptionModel.setSdk(OneSignalUtils.SDK_VERSION);
                            String RELEASE2 = Build.VERSION.RELEASE;
                            Intrinsics.checkNotNullExpressionValue(RELEASE2, "RELEASE");
                            subscriptionModel.setDeviceOS(RELEASE2);
                            carrierName = DeviceUtils.INSTANCE.getCarrierName(((IApplicationService) this.services.getService(IApplicationService.class)).getAppContext());
                            if (carrierName == null) {
                                carrierName = "";
                            }
                            subscriptionModel.setCarrier(carrierName);
                            appVersion = AndroidUtils.INSTANCE.getAppVersion(((IApplicationService) this.services.getService(IApplicationService.class)).getAppContext());
                            if (appVersion == null) {
                                appVersion = "";
                            }
                            subscriptionModel.setAppVersion(appVersion);
                            ConfigModel configModel12 = this.configModel;
                            Intrinsics.checkNotNull(configModel12);
                            configModel12.setPushSubscriptionId(string$default);
                            SubscriptionModelStore subscriptionModelStore2 = getSubscriptionModelStore();
                            Intrinsics.checkNotNull(subscriptionModelStore2);
                            subscriptionModelStore2.add(subscriptionModel, ModelChangeTags.NO_PROPOGATE);
                            z2 = true;
                        }
                        int value4 = SubscriptionStatus.UNSUBSCRIBE.getValue();
                        if (numSafeInt != null) {
                            z3 = false;
                            subscriptionModel.setOptedIn(z3);
                            strSafeString = JSONObjectExtensionsKt.safeString(jSONObject2, "identifier");
                            if (strSafeString == null) {
                                strSafeString = "";
                            }
                            subscriptionModel.setAddress(strSafeString);
                            if (numSafeInt != null) {
                                subscriptionStatusFromInt = SubscriptionStatus.INSTANCE.fromInt(numSafeInt.intValue());
                                if (subscriptionStatusFromInt == null) {
                                    subscriptionStatusFromInt = SubscriptionStatus.NO_PERMISSION;
                                }
                                subscriptionModel.setStatus(subscriptionStatusFromInt);
                            } else {
                                subscriptionModel.setStatus(SubscriptionStatus.SUBSCRIBED);
                            }
                            subscriptionModel.setSdk(OneSignalUtils.SDK_VERSION);
                            String RELEASE3 = Build.VERSION.RELEASE;
                            Intrinsics.checkNotNullExpressionValue(RELEASE3, "RELEASE");
                            subscriptionModel.setDeviceOS(RELEASE3);
                            carrierName = DeviceUtils.INSTANCE.getCarrierName(((IApplicationService) this.services.getService(IApplicationService.class)).getAppContext());
                            if (carrierName == null) {
                                carrierName = "";
                            }
                            subscriptionModel.setCarrier(carrierName);
                            appVersion = AndroidUtils.INSTANCE.getAppVersion(((IApplicationService) this.services.getService(IApplicationService.class)).getAppContext());
                            if (appVersion == null) {
                                appVersion = "";
                            }
                            subscriptionModel.setAppVersion(appVersion);
                            ConfigModel configModel13 = this.configModel;
                            Intrinsics.checkNotNull(configModel13);
                            configModel13.setPushSubscriptionId(string$default);
                            SubscriptionModelStore subscriptionModelStore3 = getSubscriptionModelStore();
                            Intrinsics.checkNotNull(subscriptionModelStore3);
                            subscriptionModelStore3.add(subscriptionModel, ModelChangeTags.NO_PROPOGATE);
                            z2 = true;
                        }
                        z3 = true;
                        subscriptionModel.setOptedIn(z3);
                        strSafeString = JSONObjectExtensionsKt.safeString(jSONObject2, "identifier");
                        if (strSafeString == null) {
                            strSafeString = "";
                        }
                        subscriptionModel.setAddress(strSafeString);
                        if (numSafeInt != null) {
                            subscriptionStatusFromInt = SubscriptionStatus.INSTANCE.fromInt(numSafeInt.intValue());
                            if (subscriptionStatusFromInt == null) {
                                subscriptionStatusFromInt = SubscriptionStatus.NO_PERMISSION;
                            }
                            subscriptionModel.setStatus(subscriptionStatusFromInt);
                        } else {
                            subscriptionModel.setStatus(SubscriptionStatus.SUBSCRIBED);
                        }
                        subscriptionModel.setSdk(OneSignalUtils.SDK_VERSION);
                        String RELEASE4 = Build.VERSION.RELEASE;
                        Intrinsics.checkNotNullExpressionValue(RELEASE4, "RELEASE");
                        subscriptionModel.setDeviceOS(RELEASE4);
                        carrierName = DeviceUtils.INSTANCE.getCarrierName(((IApplicationService) this.services.getService(IApplicationService.class)).getAppContext());
                        if (carrierName == null) {
                            carrierName = "";
                        }
                        subscriptionModel.setCarrier(carrierName);
                        appVersion = AndroidUtils.INSTANCE.getAppVersion(((IApplicationService) this.services.getService(IApplicationService.class)).getAppContext());
                        if (appVersion == null) {
                            appVersion = "";
                        }
                        subscriptionModel.setAppVersion(appVersion);
                        ConfigModel configModel14 = this.configModel;
                        Intrinsics.checkNotNull(configModel14);
                        configModel14.setPushSubscriptionId(string$default);
                        SubscriptionModelStore subscriptionModelStore4 = getSubscriptionModelStore();
                        Intrinsics.checkNotNull(subscriptionModelStore4);
                        subscriptionModelStore4.add(subscriptionModel, ModelChangeTags.NO_PROPOGATE);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    createAndSwitchToNewUser$default(this, z2, null, 2, null);
                    IOperationRepo iOperationRepo4 = this.operationRepo;
                    Intrinsics.checkNotNull(iOperationRepo4);
                    ConfigModel configModel15 = this.configModel;
                    Intrinsics.checkNotNull(configModel15);
                    String appId5 = configModel15.getAppId();
                    IdentityModelStore identityModelStore8 = getIdentityModelStore();
                    Intrinsics.checkNotNull(identityModelStore8);
                    IOperationRepo.DefaultImpls.enqueue$default(iOperationRepo4, new LoginUserFromSubscriptionOperation(appId5, identityModelStore8.getModel().getOnesignalId(), string$default), false, 2, null);
                    IPreferencesService preferencesService6 = getPreferencesService();
                    Intrinsics.checkNotNull(preferencesService6);
                    preferencesService6.saveString(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_LEGACY_PLAYER_ID, null);
                }
            }
            startupService.scheduleStart();
            setInitialized(true);
            return true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v9, types: [T, java.lang.String] */
    @Override // com.onesignal.IOneSignal
    public void login(final String externalId, String jwtBearerToken) throws Exception {
        Intrinsics.checkNotNullParameter(externalId, "externalId");
        Logging.log(LogLevel.DEBUG, "login(externalId: " + externalId + ", jwtBearerToken: " + jwtBearerToken + ')');
        if (!getIsInitialized()) {
            throw new Exception("Must call 'initWithContext' before 'login'");
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        objectRef3.element = "";
        synchronized (this.loginLock) {
            IdentityModelStore identityModelStore = getIdentityModelStore();
            Intrinsics.checkNotNull(identityModelStore);
            objectRef.element = identityModelStore.getModel().getExternalId();
            IdentityModelStore identityModelStore2 = getIdentityModelStore();
            Intrinsics.checkNotNull(identityModelStore2);
            objectRef2.element = identityModelStore2.getModel().getOnesignalId();
            if (Intrinsics.areEqual(objectRef.element, externalId)) {
                return;
            }
            createAndSwitchToNewUser$default(this, false, new Function2<IdentityModel, PropertiesModel, Unit>() { // from class: com.onesignal.internal.OneSignalImp$login$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(IdentityModel identityModel, PropertiesModel propertiesModel) {
                    invoke2(identityModel, propertiesModel);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(IdentityModel identityModel, PropertiesModel propertiesModel) {
                    Intrinsics.checkNotNullParameter(identityModel, "identityModel");
                    Intrinsics.checkNotNullParameter(propertiesModel, "<anonymous parameter 1>");
                    identityModel.setExternalId(externalId);
                }
            }, 1, null);
            IdentityModelStore identityModelStore3 = getIdentityModelStore();
            Intrinsics.checkNotNull(identityModelStore3);
            objectRef3.element = identityModelStore3.getModel().getOnesignalId();
            Unit unit = Unit.INSTANCE;
            ThreadUtilsKt.suspendifyOnThread$default(0, new AnonymousClass2(objectRef3, externalId, objectRef, objectRef2, null), 1, null);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.internal.OneSignalImp$login$2, reason: invalid class name */
    /* JADX INFO: compiled from: OneSignalImp.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.internal.OneSignalImp$login$2", f = "OneSignalImp.kt", i = {}, l = {380}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<String> $currentIdentityExternalId;
        final /* synthetic */ Ref.ObjectRef<String> $currentIdentityOneSignalId;
        final /* synthetic */ String $externalId;
        final /* synthetic */ Ref.ObjectRef<String> $newIdentityOneSignalId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Ref.ObjectRef<String> objectRef, String str, Ref.ObjectRef<String> objectRef2, Ref.ObjectRef<String> objectRef3, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.$newIdentityOneSignalId = objectRef;
            this.$externalId = str;
            this.$currentIdentityExternalId = objectRef2;
            this.$currentIdentityOneSignalId = objectRef3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return OneSignalImp.this.new AnonymousClass2(this.$newIdentityOneSignalId, this.$externalId, this.$currentIdentityExternalId, this.$currentIdentityOneSignalId, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                IOperationRepo iOperationRepo = OneSignalImp.this.operationRepo;
                Intrinsics.checkNotNull(iOperationRepo);
                ConfigModel configModel = OneSignalImp.this.configModel;
                Intrinsics.checkNotNull(configModel);
                String appId = configModel.getAppId();
                String str = this.$newIdentityOneSignalId.element;
                String str2 = this.$externalId;
                String str3 = this.$currentIdentityExternalId.element == null ? this.$currentIdentityOneSignalId.element : null;
                this.label = 1;
                obj = IOperationRepo.DefaultImpls.enqueueAndWait$default(iOperationRepo, new LoginUserOperation(appId, str, str2, str3), false, this, 2, null);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                Logging.log(LogLevel.ERROR, "Could not login user");
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.IOneSignal
    public void logout() throws Exception {
        Logging.log(LogLevel.DEBUG, "logout()");
        if (!getIsInitialized()) {
            throw new Exception("Must call 'initWithContext' before 'logout'");
        }
        synchronized (this.loginLock) {
            IdentityModelStore identityModelStore = getIdentityModelStore();
            Intrinsics.checkNotNull(identityModelStore);
            if (identityModelStore.getModel().getExternalId() == null) {
                return;
            }
            createAndSwitchToNewUser$default(this, false, null, 3, null);
            IOperationRepo iOperationRepo = this.operationRepo;
            Intrinsics.checkNotNull(iOperationRepo);
            ConfigModel configModel = this.configModel;
            Intrinsics.checkNotNull(configModel);
            String appId = configModel.getAppId();
            IdentityModelStore identityModelStore2 = getIdentityModelStore();
            Intrinsics.checkNotNull(identityModelStore2);
            String onesignalId = identityModelStore2.getModel().getOnesignalId();
            IdentityModelStore identityModelStore3 = getIdentityModelStore();
            Intrinsics.checkNotNull(identityModelStore3);
            IOperationRepo.DefaultImpls.enqueue$default(iOperationRepo, new LoginUserOperation(appId, onesignalId, identityModelStore3.getModel().getExternalId(), null, 8, null), false, 2, null);
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void createAndSwitchToNewUser$default(OneSignalImp oneSignalImp, boolean z, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            function2 = null;
        }
        oneSignalImp.createAndSwitchToNewUser(z, function2);
    }

    private final void createAndSwitchToNewUser(boolean suppressBackendOperation, Function2<? super IdentityModel, ? super PropertiesModel, Unit> modify) {
        Object next;
        String strCreateLocalId;
        String address;
        SubscriptionStatus status;
        String id;
        ConfigModel configModel;
        Logging.debug$default("createAndSwitchToNewUser()", null, 2, null);
        String strCreateLocalId2 = IDManager.INSTANCE.createLocalId();
        IdentityModel identityModel = new IdentityModel();
        identityModel.setOnesignalId(strCreateLocalId2);
        PropertiesModel propertiesModel = new PropertiesModel();
        propertiesModel.setOnesignalId(strCreateLocalId2);
        if (modify != null) {
            modify.invoke(identityModel, propertiesModel);
        }
        ArrayList arrayList = new ArrayList();
        SubscriptionModelStore subscriptionModelStore = getSubscriptionModelStore();
        Intrinsics.checkNotNull(subscriptionModelStore);
        Iterator it = subscriptionModelStore.list().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            id = ((SubscriptionModel) next).getId();
            configModel = this.configModel;
            Intrinsics.checkNotNull(configModel);
        } while (!Intrinsics.areEqual(id, configModel.getPushSubscriptionId()));
        SubscriptionModel subscriptionModel = (SubscriptionModel) next;
        SubscriptionModel subscriptionModel2 = new SubscriptionModel();
        if (subscriptionModel == null || (strCreateLocalId = subscriptionModel.getId()) == null) {
            strCreateLocalId = IDManager.INSTANCE.createLocalId();
        }
        subscriptionModel2.setId(strCreateLocalId);
        subscriptionModel2.setType(SubscriptionType.PUSH);
        subscriptionModel2.setOptedIn(subscriptionModel != null ? subscriptionModel.getOptedIn() : true);
        if (subscriptionModel == null || (address = subscriptionModel.getAddress()) == null) {
            address = "";
        }
        subscriptionModel2.setAddress(address);
        if (subscriptionModel == null || (status = subscriptionModel.getStatus()) == null) {
            status = SubscriptionStatus.NO_PERMISSION;
        }
        subscriptionModel2.setStatus(status);
        subscriptionModel2.setSdk(OneSignalUtils.SDK_VERSION);
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        subscriptionModel2.setDeviceOS(RELEASE);
        String carrierName = DeviceUtils.INSTANCE.getCarrierName(((IApplicationService) this.services.getService(IApplicationService.class)).getAppContext());
        if (carrierName == null) {
            carrierName = "";
        }
        subscriptionModel2.setCarrier(carrierName);
        String appVersion = AndroidUtils.INSTANCE.getAppVersion(((IApplicationService) this.services.getService(IApplicationService.class)).getAppContext());
        subscriptionModel2.setAppVersion(appVersion != null ? appVersion : "");
        ConfigModel configModel2 = this.configModel;
        Intrinsics.checkNotNull(configModel2);
        configModel2.setPushSubscriptionId(subscriptionModel2.getId());
        arrayList.add(subscriptionModel2);
        SubscriptionModelStore subscriptionModelStore2 = getSubscriptionModelStore();
        Intrinsics.checkNotNull(subscriptionModelStore2);
        subscriptionModelStore2.clear(ModelChangeTags.NO_PROPOGATE);
        IdentityModelStore identityModelStore = getIdentityModelStore();
        Intrinsics.checkNotNull(identityModelStore);
        ISingletonModelStore.DefaultImpls.replace$default(identityModelStore, identityModel, null, 2, null);
        PropertiesModelStore propertiesModelStore = getPropertiesModelStore();
        Intrinsics.checkNotNull(propertiesModelStore);
        ISingletonModelStore.DefaultImpls.replace$default(propertiesModelStore, propertiesModel, null, 2, null);
        if (suppressBackendOperation) {
            SubscriptionModelStore subscriptionModelStore3 = getSubscriptionModelStore();
            Intrinsics.checkNotNull(subscriptionModelStore3);
            subscriptionModelStore3.replaceAll(arrayList, ModelChangeTags.NO_PROPOGATE);
        } else {
            if (subscriptionModel != null) {
                IOperationRepo iOperationRepo = this.operationRepo;
                Intrinsics.checkNotNull(iOperationRepo);
                ConfigModel configModel3 = this.configModel;
                Intrinsics.checkNotNull(configModel3);
                IOperationRepo.DefaultImpls.enqueue$default(iOperationRepo, new TransferSubscriptionOperation(configModel3.getAppId(), subscriptionModel.getId(), strCreateLocalId2), false, 2, null);
                SubscriptionModelStore subscriptionModelStore4 = getSubscriptionModelStore();
                Intrinsics.checkNotNull(subscriptionModelStore4);
                subscriptionModelStore4.replaceAll(arrayList, ModelChangeTags.NO_PROPOGATE);
                return;
            }
            SubscriptionModelStore subscriptionModelStore5 = getSubscriptionModelStore();
            Intrinsics.checkNotNull(subscriptionModelStore5);
            IModelStore.DefaultImpls.replaceAll$default(subscriptionModelStore5, arrayList, null, 2, null);
        }
    }

    @Override // com.onesignal.common.services.IServiceProvider
    public <T> boolean hasService(Class<T> c) {
        Intrinsics.checkNotNullParameter(c, "c");
        return this.services.hasService(c);
    }

    @Override // com.onesignal.common.services.IServiceProvider
    public <T> T getService(Class<T> c) {
        Intrinsics.checkNotNullParameter(c, "c");
        return (T) this.services.getService(c);
    }

    @Override // com.onesignal.common.services.IServiceProvider
    public <T> T getServiceOrNull(Class<T> c) {
        Intrinsics.checkNotNullParameter(c, "c");
        return (T) this.services.getServiceOrNull(c);
    }

    @Override // com.onesignal.common.services.IServiceProvider
    public <T> List<T> getAllServices(Class<T> c) {
        Intrinsics.checkNotNullParameter(c, "c");
        return this.services.getAllServices(c);
    }
}
