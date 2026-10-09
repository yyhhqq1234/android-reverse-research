.class public final Lcom/onesignal/internal/OneSignalImp;
.super Ljava/lang/Object;
.source "OneSignalImp.kt"

# interfaces
.implements Lcom/onesignal/IOneSignal;
.implements Lcom/onesignal/common/services/IServiceProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOneSignalImp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneSignalImp.kt\ncom/onesignal/internal/OneSignalImp\n+ 2 ServiceProvider.kt\ncom/onesignal/common/services/ServiceProvider\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,494:1\n35#2:495\n35#2:496\n35#2:497\n35#2:498\n35#2:499\n35#2:500\n35#2:501\n35#2:502\n35#2:503\n35#2:504\n35#2:505\n35#2:506\n35#2:507\n35#2:508\n35#2:509\n35#2:512\n35#2:513\n288#3,2:510\n*S KotlinDebug\n*F\n+ 1 OneSignalImp.kt\ncom/onesignal/internal/OneSignalImp\n*L\n89#1:495\n97#1:496\n105#1:497\n113#1:498\n121#1:499\n133#1:500\n135#1:501\n137#1:502\n139#1:503\n203#1:504\n210#1:505\n211#1:506\n212#1:507\n299#1:508\n302#1:509\n460#1:512\n461#1:513\n450#1:510,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003JN\u0010P\u001a\u00020Q2\u0008\u0008\u0002\u0010R\u001a\u00020\u00052:\u0008\u0002\u0010S\u001a4\u0012\u0013\u0012\u00110U\u00a2\u0006\u000c\u0008V\u0012\u0008\u0008W\u0012\u0004\u0008\u0008(X\u0012\u0013\u0012\u00110Y\u00a2\u0006\u000c\u0008V\u0012\u0008\u0008W\u0012\u0004\u0008\u0008(Z\u0012\u0004\u0012\u00020Q\u0018\u00010TH\u0002J\"\u0010[\u001a\u0008\u0012\u0004\u0012\u0002H\\0(\"\u0004\u0008\u0000\u0010\\2\u000c\u0010]\u001a\u0008\u0012\u0004\u0012\u0002H\\0^H\u0016J!\u0010_\u001a\u0002H\\\"\u0004\u0008\u0000\u0010\\2\u000c\u0010]\u001a\u0008\u0012\u0004\u0012\u0002H\\0^H\u0016\u00a2\u0006\u0002\u0010`J#\u0010a\u001a\u0004\u0018\u0001H\\\"\u0004\u0008\u0000\u0010\\2\u000c\u0010]\u001a\u0008\u0012\u0004\u0012\u0002H\\0^H\u0016\u00a2\u0006\u0002\u0010`J\u001c\u0010b\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\\2\u000c\u0010]\u001a\u0008\u0012\u0004\u0012\u0002H\\0^H\u0016J\u001a\u0010c\u001a\u00020\u00052\u0006\u0010d\u001a\u00020e2\u0008\u0010f\u001a\u0004\u0018\u00010)H\u0016J\u001a\u0010g\u001a\u00020Q2\u0006\u0010h\u001a\u00020)2\u0008\u0010i\u001a\u0004\u0018\u00010)H\u0016J\u0008\u0010j\u001a\u00020QH\u0016R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00058V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00058V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00058V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u000e\"\u0004\u0008\u001a\u0010\u0010R\u0014\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010%\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000e\"\u0004\u0008&\u0010\u0010R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020+8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u000e\u0010.\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0002008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00105\u001a\u0002068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0014\u00109\u001a\u00020:8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<R\u0014\u0010=\u001a\u00020)X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?R\u000e\u0010@\u001a\u00020AX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010B\u001a\u00020C8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER\u0010\u0010F\u001a\u0004\u0018\u00010GX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010H\u001a\u00020I8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010KR\u0014\u0010L\u001a\u00020M8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010O\u00a8\u0006k"
    }
    d2 = {
        "Lcom/onesignal/internal/OneSignalImp;",
        "Lcom/onesignal/IOneSignal;",
        "Lcom/onesignal/common/services/IServiceProvider;",
        "()V",
        "_consentGiven",
        "",
        "Ljava/lang/Boolean;",
        "_consentRequired",
        "_disableGMSMissingPrompt",
        "configModel",
        "Lcom/onesignal/core/internal/config/ConfigModel;",
        "value",
        "consentGiven",
        "getConsentGiven",
        "()Z",
        "setConsentGiven",
        "(Z)V",
        "consentRequired",
        "getConsentRequired",
        "setConsentRequired",
        "debug",
        "Lcom/onesignal/debug/IDebugManager;",
        "getDebug",
        "()Lcom/onesignal/debug/IDebugManager;",
        "disableGMSMissingPrompt",
        "getDisableGMSMissingPrompt",
        "setDisableGMSMissingPrompt",
        "identityModelStore",
        "Lcom/onesignal/user/internal/identity/IdentityModelStore;",
        "getIdentityModelStore",
        "()Lcom/onesignal/user/internal/identity/IdentityModelStore;",
        "inAppMessages",
        "Lcom/onesignal/inAppMessages/IInAppMessagesManager;",
        "getInAppMessages",
        "()Lcom/onesignal/inAppMessages/IInAppMessagesManager;",
        "initLock",
        "",
        "isInitialized",
        "setInitialized",
        "listOfModules",
        "",
        "",
        "location",
        "Lcom/onesignal/location/ILocationManager;",
        "getLocation",
        "()Lcom/onesignal/location/ILocationManager;",
        "loginLock",
        "notifications",
        "Lcom/onesignal/notifications/INotificationsManager;",
        "getNotifications",
        "()Lcom/onesignal/notifications/INotificationsManager;",
        "operationRepo",
        "Lcom/onesignal/core/internal/operations/IOperationRepo;",
        "preferencesService",
        "Lcom/onesignal/core/internal/preferences/IPreferencesService;",
        "getPreferencesService",
        "()Lcom/onesignal/core/internal/preferences/IPreferencesService;",
        "propertiesModelStore",
        "Lcom/onesignal/user/internal/properties/PropertiesModelStore;",
        "getPropertiesModelStore",
        "()Lcom/onesignal/user/internal/properties/PropertiesModelStore;",
        "sdkVersion",
        "getSdkVersion",
        "()Ljava/lang/String;",
        "services",
        "Lcom/onesignal/common/services/ServiceProvider;",
        "session",
        "Lcom/onesignal/session/ISessionManager;",
        "getSession",
        "()Lcom/onesignal/session/ISessionManager;",
        "sessionModel",
        "Lcom/onesignal/session/internal/session/SessionModel;",
        "subscriptionModelStore",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;",
        "getSubscriptionModelStore",
        "()Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;",
        "user",
        "Lcom/onesignal/user/IUserManager;",
        "getUser",
        "()Lcom/onesignal/user/IUserManager;",
        "createAndSwitchToNewUser",
        "",
        "suppressBackendOperation",
        "modify",
        "Lkotlin/Function2;",
        "Lcom/onesignal/user/internal/identity/IdentityModel;",
        "Lkotlin/ParameterName;",
        "name",
        "identityModel",
        "Lcom/onesignal/user/internal/properties/PropertiesModel;",
        "propertiesModel",
        "getAllServices",
        "T",
        "c",
        "Ljava/lang/Class;",
        "getService",
        "(Ljava/lang/Class;)Ljava/lang/Object;",
        "getServiceOrNull",
        "hasService",
        "initWithContext",
        "context",
        "Landroid/content/Context;",
        "appId",
        "login",
        "externalId",
        "jwtBearerToken",
        "logout",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private _consentGiven:Ljava/lang/Boolean;

.field private _consentRequired:Ljava/lang/Boolean;

.field private _disableGMSMissingPrompt:Ljava/lang/Boolean;

.field private configModel:Lcom/onesignal/core/internal/config/ConfigModel;

.field private final debug:Lcom/onesignal/debug/IDebugManager;

.field private final initLock:Ljava/lang/Object;

.field private isInitialized:Z

.field private final listOfModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loginLock:Ljava/lang/Object;

.field private operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

.field private final sdkVersion:Ljava/lang/String;

.field private final services:Lcom/onesignal/common/services/ServiceProvider;

.field private sessionModel:Lcom/onesignal/session/internal/session/SessionModel;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "050124"

    .line 57
    iput-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->sdkVersion:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/onesignal/debug/internal/DebugManager;

    invoke-direct {v0}, Lcom/onesignal/debug/internal/DebugManager;-><init>()V

    check-cast v0, Lcom/onesignal/debug/IDebugManager;

    iput-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->debug:Lcom/onesignal/debug/IDebugManager;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->initLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->loginLock:Ljava/lang/Object;

    const-string v0, "com.onesignal.inAppMessages.InAppMessagesModule"

    const-string v1, "com.onesignal.location.LocationModule"

    const-string v2, "com.onesignal.notifications.NotificationsModule"

    .line 155
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->listOfModules:Ljava/util/List;

    .line 159
    new-instance v1, Lcom/onesignal/common/services/ServiceBuilder;

    invoke-direct {v1}, Lcom/onesignal/common/services/ServiceBuilder;-><init>()V

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 163
    new-instance v3, Lcom/onesignal/core/CoreModule;

    invoke-direct {v3}, Lcom/onesignal/core/CoreModule;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v3, Lcom/onesignal/session/SessionModule;

    invoke-direct {v3}, Lcom/onesignal/session/SessionModule;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v3, Lcom/onesignal/user/UserModule;

    invoke-direct {v3}, Lcom/onesignal/user/UserModule;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 168
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.onesignal.common.modules.IModule"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/onesignal/common/modules/IModule;

    .line 170
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 172
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 176
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/common/modules/IModule;

    .line 177
    invoke-interface {v2, v1}, Lcom/onesignal/common/modules/IModule;->register(Lcom/onesignal/common/services/ServiceBuilder;)V

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v1}, Lcom/onesignal/common/services/ServiceBuilder;->build()Lcom/onesignal/common/services/ServiceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    return-void
.end method

.method public static final synthetic access$getConfigModel$p(Lcom/onesignal/internal/OneSignalImp;)Lcom/onesignal/core/internal/config/ConfigModel;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    return-object p0
.end method

.method public static final synthetic access$getOperationRepo$p(Lcom/onesignal/internal/OneSignalImp;)Lcom/onesignal/core/internal/operations/IOperationRepo;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/onesignal/internal/OneSignalImp;->operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    return-object p0
.end method

.method private final createAndSwitchToNewUser(ZLkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onesignal/user/internal/identity/IdentityModel;",
            "-",
            "Lcom/onesignal/user/internal/properties/PropertiesModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "createAndSwitchToNewUser()"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 427
    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 430
    sget-object v0, Lcom/onesignal/common/IDManager;->INSTANCE:Lcom/onesignal/common/IDManager;

    invoke-virtual {v0}, Lcom/onesignal/common/IDManager;->createLocalId()Ljava/lang/String;

    move-result-object v0

    .line 432
    new-instance v3, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-direct {v3}, Lcom/onesignal/user/internal/identity/IdentityModel;-><init>()V

    .line 433
    invoke-virtual {v3, v0}, Lcom/onesignal/user/internal/identity/IdentityModel;->setOnesignalId(Ljava/lang/String;)V

    .line 435
    new-instance v4, Lcom/onesignal/user/internal/properties/PropertiesModel;

    invoke-direct {v4}, Lcom/onesignal/user/internal/properties/PropertiesModel;-><init>()V

    .line 436
    invoke-virtual {v4, v0}, Lcom/onesignal/user/internal/properties/PropertiesModel;->setOnesignalId(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 439
    invoke-interface {p2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    .line 450
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getSubscriptionModelStore()Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;->list()Ljava/util/Collection;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 510
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    .line 450
    invoke-virtual {v7}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/onesignal/core/internal/config/ConfigModel;->getPushSubscriptionId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_0
    check-cast v6, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    .line 451
    new-instance v5, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    invoke-direct {v5}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;-><init>()V

    if-eqz v6, :cond_3

    .line 453
    invoke-virtual {v6}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    sget-object v7, Lcom/onesignal/common/IDManager;->INSTANCE:Lcom/onesignal/common/IDManager;

    invoke-virtual {v7}, Lcom/onesignal/common/IDManager;->createLocalId()Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-virtual {v5, v7}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setId(Ljava/lang/String;)V

    .line 454
    sget-object v7, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->PUSH:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    invoke-virtual {v5, v7}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setType(Lcom/onesignal/user/internal/subscriptions/SubscriptionType;)V

    if-eqz v6, :cond_5

    .line 455
    invoke-virtual {v6}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getOptedIn()Z

    move-result v7

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v5, v7}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setOptedIn(Z)V

    const-string v7, ""

    if-eqz v6, :cond_6

    .line 456
    invoke-virtual {v6}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getAddress()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    :cond_6
    move-object v8, v7

    :cond_7
    invoke-virtual {v5, v8}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setAddress(Ljava/lang/String;)V

    if-eqz v6, :cond_8

    .line 457
    invoke-virtual {v6}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getStatus()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    move-result-object v8

    if-nez v8, :cond_9

    :cond_8
    sget-object v8, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->NO_PERMISSION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    :cond_9
    invoke-virtual {v5, v8}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setStatus(Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)V

    const-string v8, "050124"

    .line 458
    invoke-virtual {v5, v8}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setSdk(Ljava/lang/String;)V

    .line 459
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v9, "RELEASE"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setDeviceOS(Ljava/lang/String;)V

    .line 460
    sget-object v8, Lcom/onesignal/common/DeviceUtils;->INSTANCE:Lcom/onesignal/common/DeviceUtils;

    iget-object v9, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 512
    const-class v10, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-virtual {v9, v10}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 460
    check-cast v9, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v9}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/onesignal/common/DeviceUtils;->getCarrierName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a

    move-object v8, v7

    :cond_a
    invoke-virtual {v5, v8}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setCarrier(Ljava/lang/String;)V

    .line 461
    sget-object v8, Lcom/onesignal/common/AndroidUtils;->INSTANCE:Lcom/onesignal/common/AndroidUtils;

    iget-object v9, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 513
    const-class v10, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-virtual {v9, v10}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 461
    check-cast v9, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v9}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/onesignal/common/AndroidUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_b

    goto :goto_2

    :cond_b
    move-object v7, v8

    :goto_2
    invoke-virtual {v5, v7}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setAppVersion(Ljava/lang/String;)V

    .line 464
    iget-object v7, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/onesignal/core/internal/config/ConfigModel;->setPushSubscriptionId(Ljava/lang/String;)V

    .line 466
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getSubscriptionModelStore()Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "NO_PROPOGATE"

    invoke-virtual {v5, v7}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;->clear(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/onesignal/common/modeling/ISingletonModelStore;

    check-cast v3, Lcom/onesignal/common/modeling/Model;

    invoke-static {v5, v3, v1, v2, v1}, Lcom/onesignal/common/modeling/ISingletonModelStore$DefaultImpls;->replace$default(Lcom/onesignal/common/modeling/ISingletonModelStore;Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/Object;)V

    .line 474
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getPropertiesModelStore()Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/onesignal/common/modeling/ISingletonModelStore;

    check-cast v4, Lcom/onesignal/common/modeling/Model;

    invoke-static {v3, v4, v1, v2, v1}, Lcom/onesignal/common/modeling/ISingletonModelStore$DefaultImpls;->replace$default(Lcom/onesignal/common/modeling/ISingletonModelStore;Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p1, :cond_c

    .line 477
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getSubscriptionModelStore()Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v7}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;->replaceAll(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    if-eqz v6, :cond_d

    .line 479
    iget-object p1, p0, Lcom/onesignal/internal/OneSignalImp;->operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/onesignal/user/internal/operations/TransferSubscriptionOperation;

    iget-object v4, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/onesignal/core/internal/config/ConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/onesignal/user/internal/operations/TransferSubscriptionOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Lcom/onesignal/core/internal/operations/Operation;

    const/4 v0, 0x0

    invoke-static {p1, v3, v0, v2, v1}, Lcom/onesignal/core/internal/operations/IOperationRepo$DefaultImpls;->enqueue$default(Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/operations/Operation;ZILjava/lang/Object;)V

    .line 480
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getSubscriptionModelStore()Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v7}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;->replaceAll(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    .line 482
    :cond_d
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getSubscriptionModelStore()Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/onesignal/common/modeling/IModelStore;

    invoke-static {p1, p2, v1, v2, v1}, Lcom/onesignal/common/modeling/IModelStore$DefaultImpls;->replaceAll$default(Lcom/onesignal/common/modeling/IModelStore;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method static synthetic createAndSwitchToNewUser$default(Lcom/onesignal/internal/OneSignalImp;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 421
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onesignal/internal/OneSignalImp;->createAndSwitchToNewUser(ZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 500
    const-class v1, Lcom/onesignal/user/internal/identity/IdentityModelStore;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/internal/identity/IdentityModelStore;

    return-object v0
.end method

.method private final getPreferencesService()Lcom/onesignal/core/internal/preferences/IPreferencesService;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 503
    const-class v1, Lcom/onesignal/core/internal/preferences/IPreferencesService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/preferences/IPreferencesService;

    return-object v0
.end method

.method private final getPropertiesModelStore()Lcom/onesignal/user/internal/properties/PropertiesModelStore;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 501
    const-class v1, Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    return-object v0
.end method

.method private final getSubscriptionModelStore()Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 502
    const-class v1, Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;

    return-object v0
.end method


# virtual methods
.method public getAllServices(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/services/ServiceProvider;->getAllServices(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getConsentGiven()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getConsentGiven()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->_consentGiven:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getConsentRequired()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getConsentRequired()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->_consentRequired:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getDebug()Lcom/onesignal/debug/IDebugManager;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->debug:Lcom/onesignal/debug/IDebugManager;

    return-object v0
.end method

.method public getDisableGMSMissingPrompt()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getDisableGMSMissingPrompt()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->_disableGMSMissingPrompt:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getInAppMessages()Lcom/onesignal/inAppMessages/IInAppMessagesManager;
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/onesignal/internal/OneSignalImp;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 498
    const-class v1, Lcom/onesignal/inAppMessages/IInAppMessagesManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/inAppMessages/IInAppMessagesManager;

    return-object v0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Must call \'initWithContext\' before use"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocation()Lcom/onesignal/location/ILocationManager;
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/onesignal/internal/OneSignalImp;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 497
    const-class v1, Lcom/onesignal/location/ILocationManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/location/ILocationManager;

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Must call \'initWithContext\' before use"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNotifications()Lcom/onesignal/notifications/INotificationsManager;
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/onesignal/internal/OneSignalImp;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 496
    const-class v1, Lcom/onesignal/notifications/INotificationsManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/notifications/INotificationsManager;

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Must call \'initWithContext\' before use"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getServiceOrNull(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/services/ServiceProvider;->getServiceOrNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSession()Lcom/onesignal/session/ISessionManager;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/onesignal/internal/OneSignalImp;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 495
    const-class v1, Lcom/onesignal/session/ISessionManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/session/ISessionManager;

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Must call \'initWithContext\' before use"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUser()Lcom/onesignal/user/IUserManager;
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/onesignal/internal/OneSignalImp;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 499
    const-class v1, Lcom/onesignal/user/IUserManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/IUserManager;

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Must call \'initWithContext\' before use"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasService(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/services/ServiceProvider;->hasService(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public initWithContext(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13

    const-string v0, "initWithContext: using cached user "

    const-string v1, "initWithContext: creating user linked to subscription "

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-object v2, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initWithContext(context: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", appId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/onesignal/internal/OneSignalImp;->initLock:Ljava/lang/Object;

    monitor-enter v2

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/internal/OneSignalImp;->isInitialized()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 192
    sget-object p1, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    const-string p2, "initWithContext: SDK already initialized"

    invoke-static {p1, p2}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit v2

    return v4

    .line 196
    :cond_0
    :try_start_1
    sget-object v3, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    const-string v5, "initWithContext: SDK initializing"

    invoke-static {v3, v5}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V

    .line 198
    sget-object v3, Lcom/onesignal/core/internal/preferences/PreferenceStoreFix;->INSTANCE:Lcom/onesignal/core/internal/preferences/PreferenceStoreFix;

    invoke-virtual {v3, p1}, Lcom/onesignal/core/internal/preferences/PreferenceStoreFix;->ensureNoObfuscatedPrefStore(Landroid/content/Context;)V

    .line 203
    iget-object v3, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 504
    const-class v5, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-virtual {v3, v5}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    check-cast v3, Lcom/onesignal/core/internal/application/IApplicationService;

    const-string v5, "null cannot be cast to non-null type com.onesignal.core.internal.application.impl.ApplicationService"

    .line 204
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lcom/onesignal/core/internal/application/impl/ApplicationService;

    invoke-virtual {v5, p1}, Lcom/onesignal/core/internal/application/impl/ApplicationService;->start(Landroid/content/Context;)V

    .line 207
    sget-object p1, Lcom/onesignal/debug/internal/logging/Logging;->INSTANCE:Lcom/onesignal/debug/internal/logging/Logging;

    invoke-virtual {p1, v3}, Lcom/onesignal/debug/internal/logging/Logging;->setApplicationService(Lcom/onesignal/core/internal/application/IApplicationService;)V

    .line 210
    iget-object p1, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 505
    const-class v3, Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {p1, v3}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/config/ConfigModelStore;

    .line 210
    invoke-virtual {p1}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/config/ConfigModel;

    iput-object p1, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    .line 211
    iget-object p1, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 506
    const-class v3, Lcom/onesignal/session/internal/session/SessionModelStore;

    invoke-virtual {p1, v3}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/session/internal/session/SessionModelStore;

    .line 211
    invoke-virtual {p1}, Lcom/onesignal/session/internal/session/SessionModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object p1

    check-cast p1, Lcom/onesignal/session/internal/session/SessionModel;

    iput-object p1, p0, Lcom/onesignal/internal/OneSignalImp;->sessionModel:Lcom/onesignal/session/internal/session/SessionModel;

    .line 212
    iget-object p1, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 507
    const-class v3, Lcom/onesignal/core/internal/operations/IOperationRepo;

    invoke-virtual {p1, v3}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/operations/IOperationRepo;

    .line 212
    iput-object p1, p0, Lcom/onesignal/internal/OneSignalImp;->operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    const/4 p1, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_1

    .line 217
    iget-object v6, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "appId"

    invoke-virtual {v6, v7}, Lcom/onesignal/core/internal/config/ConfigModel;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string p2, "initWithContext called without providing appId, and no appId has been established!"

    .line 218
    invoke-static {p2, v5, p1, v5}, Lcom/onesignal/debug/internal/logging/Logging;->warn$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    monitor-exit v2

    return v3

    :cond_1
    if-eqz p2, :cond_4

    .line 225
    :try_start_2
    iget-object v6, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "appId"

    invoke-virtual {v6, v7}, Lcom/onesignal/core/internal/config/ConfigModel;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/onesignal/core/internal/config/ConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    .line 228
    :goto_1
    iget-object v7, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, p2}, Lcom/onesignal/core/internal/config/ConfigModel;->setAppId(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 232
    :goto_2
    iget-object p2, p0, Lcom/onesignal/internal/OneSignalImp;->_consentRequired:Ljava/lang/Boolean;

    if-eqz p2, :cond_5

    .line 233
    iget-object p2, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/onesignal/internal/OneSignalImp;->_consentRequired:Ljava/lang/Boolean;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Lcom/onesignal/core/internal/config/ConfigModel;->setConsentRequired(Ljava/lang/Boolean;)V

    .line 237
    :cond_5
    iget-object p2, p0, Lcom/onesignal/internal/OneSignalImp;->_consentGiven:Ljava/lang/Boolean;

    if-eqz p2, :cond_6

    .line 238
    iget-object p2, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/onesignal/internal/OneSignalImp;->_consentGiven:Ljava/lang/Boolean;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Lcom/onesignal/core/internal/config/ConfigModel;->setConsentGiven(Ljava/lang/Boolean;)V

    .line 241
    :cond_6
    iget-object p2, p0, Lcom/onesignal/internal/OneSignalImp;->_disableGMSMissingPrompt:Ljava/lang/Boolean;

    if-eqz p2, :cond_7

    .line 242
    iget-object p2, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/onesignal/internal/OneSignalImp;->_disableGMSMissingPrompt:Ljava/lang/Boolean;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p2, v7}, Lcom/onesignal/core/internal/config/ConfigModel;->setDisableGMSMissingPrompt(Z)V

    .line 245
    :cond_7
    new-instance p2, Lcom/onesignal/core/internal/startup/StartupService;

    iget-object v7, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    invoke-direct {p2, v7}, Lcom/onesignal/core/internal/startup/StartupService;-><init>(Lcom/onesignal/common/services/ServiceProvider;)V

    .line 248
    invoke-virtual {p2}, Lcom/onesignal/core/internal/startup/StartupService;->bootstrap()V

    if-nez v6, :cond_9

    .line 250
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v6

    check-cast v6, Lcom/onesignal/user/internal/identity/IdentityModel;

    const-string v7, "onesignal_id"

    invoke-virtual {v6, v7}, Lcom/onesignal/user/internal/identity/IdentityModel;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    .line 329
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v0}, Lcom/onesignal/user/internal/identity/IdentityModel;->getOnesignalId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, p1, v5}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 252
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getPreferencesService()Lcom/onesignal/core/internal/preferences/IPreferencesService;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "OneSignal"

    const-string v8, "GT_PLAYER_ID"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/onesignal/core/internal/preferences/IPreferencesService$DefaultImpls;->getString$default(Lcom/onesignal/core/internal/preferences/IPreferencesService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "initWithContext: creating new device-scoped user"

    .line 257
    invoke-static {v0, v5, p1, v5}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x3

    .line 258
    invoke-static {p0, v3, v5, v0, v5}, Lcom/onesignal/internal/OneSignalImp;->createAndSwitchToNewUser$default(Lcom/onesignal/internal/OneSignalImp;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 260
    new-instance v1, Lcom/onesignal/user/internal/operations/LoginUserOperation;

    .line 261
    iget-object v6, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/onesignal/core/internal/config/ConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v7

    .line 262
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v6

    check-cast v6, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/identity/IdentityModel;->getOnesignalId()Ljava/lang/String;

    move-result-object v8

    .line 263
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v6

    check-cast v6, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/identity/IdentityModel;->getExternalId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v6, v1

    .line 260
    invoke-direct/range {v6 .. v12}, Lcom/onesignal/user/internal/operations/LoginUserOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/onesignal/core/internal/operations/Operation;

    .line 259
    invoke-static {v0, v1, v3, p1, v5}, Lcom/onesignal/core/internal/operations/IOperationRepo$DefaultImpls;->enqueue$default(Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/operations/Operation;ZILjava/lang/Object;)V

    goto/16 :goto_9

    .line 267
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5, p1, v5}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 273
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getPreferencesService()Lcom/onesignal/core/internal/preferences/IPreferencesService;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "OneSignal"

    const-string v8, "ONESIGNAL_USERSTATE_SYNCVALYES_CURRENT_STATE"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/onesignal/core/internal/preferences/IPreferencesService$DefaultImpls;->getString$default(Lcom/onesignal/core/internal/preferences/IPreferencesService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 280
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "notification_types"

    .line 281
    invoke-static {v6, v1}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 283
    new-instance v7, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    invoke-direct {v7}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;-><init>()V

    .line 284
    invoke-virtual {v7, v0}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setId(Ljava/lang/String;)V

    .line 285
    sget-object v8, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->PUSH:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    invoke-virtual {v7, v8}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setType(Lcom/onesignal/user/internal/subscriptions/SubscriptionType;)V

    .line 287
    sget-object v8, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->NO_PERMISSION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-virtual {v8}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->getValue()I

    move-result v8

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_d

    :goto_4
    sget-object v8, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->UNSUBSCRIBE:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-virtual {v8}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->getValue()I

    move-result v8

    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_d

    :goto_5
    const/4 v8, 0x1

    goto :goto_6

    :cond_d
    const/4 v8, 0x0

    .line 286
    :goto_6
    invoke-virtual {v7, v8}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setOptedIn(Z)V

    const-string v8, "identifier"

    .line 289
    invoke-static {v6, v8}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    const-string v6, ""

    .line 288
    :cond_e
    invoke-virtual {v7, v6}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setAddress(Ljava/lang/String;)V

    if-eqz v1, :cond_10

    .line 291
    sget-object v6, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->Companion:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion;->fromInt(I)Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->NO_PERMISSION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    :cond_f
    invoke-virtual {v7, v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setStatus(Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)V

    goto :goto_7

    .line 293
    :cond_10
    sget-object v1, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->SUBSCRIBED:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-virtual {v7, v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setStatus(Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)V

    :goto_7
    const-string v1, "050124"

    .line 296
    invoke-virtual {v7, v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setSdk(Ljava/lang/String;)V

    .line 297
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v6, "RELEASE"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setDeviceOS(Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/onesignal/common/DeviceUtils;->INSTANCE:Lcom/onesignal/common/DeviceUtils;

    .line 299
    iget-object v6, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 508
    const-class v8, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-virtual {v6, v8}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 299
    check-cast v6, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v6}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v6

    .line 298
    invoke-virtual {v1, v6}, Lcom/onesignal/common/DeviceUtils;->getCarrierName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, ""

    :cond_11
    invoke-virtual {v7, v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setCarrier(Ljava/lang/String;)V

    .line 301
    sget-object v1, Lcom/onesignal/common/AndroidUtils;->INSTANCE:Lcom/onesignal/common/AndroidUtils;

    .line 302
    iget-object v6, p0, Lcom/onesignal/internal/OneSignalImp;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 509
    const-class v8, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-virtual {v6, v8}, Lcom/onesignal/common/services/ServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 302
    check-cast v6, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v6}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v6

    .line 301
    invoke-virtual {v1, v6}, Lcom/onesignal/common/AndroidUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v1, ""

    :cond_12
    invoke-virtual {v7, v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setAppVersion(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->setPushSubscriptionId(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getSubscriptionModelStore()Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 307
    check-cast v7, Lcom/onesignal/common/modeling/Model;

    const-string v6, "NO_PROPOGATE"

    .line 306
    invoke-virtual {v1, v7, v6}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;->add(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    .line 313
    :goto_8
    invoke-static {p0, v1, v5, p1, v5}, Lcom/onesignal/internal/OneSignalImp;->createAndSwitchToNewUser$default(Lcom/onesignal/internal/OneSignalImp;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 315
    iget-object v1, p0, Lcom/onesignal/internal/OneSignalImp;->operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 316
    new-instance v6, Lcom/onesignal/user/internal/operations/LoginUserFromSubscriptionOperation;

    .line 317
    iget-object v7, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/onesignal/core/internal/config/ConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v8

    check-cast v8, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v8}, Lcom/onesignal/user/internal/identity/IdentityModel;->getOnesignalId()Ljava/lang/String;

    move-result-object v8

    .line 316
    invoke-direct {v6, v7, v8, v0}, Lcom/onesignal/user/internal/operations/LoginUserFromSubscriptionOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v6, Lcom/onesignal/core/internal/operations/Operation;

    .line 315
    invoke-static {v1, v6, v3, p1, v5}, Lcom/onesignal/core/internal/operations/IOperationRepo$DefaultImpls;->enqueue$default(Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/operations/Operation;ZILjava/lang/Object;)V

    .line 322
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getPreferencesService()Lcom/onesignal/core/internal/preferences/IPreferencesService;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "OneSignal"

    const-string v1, "GT_PLAYER_ID"

    invoke-interface {p1, v0, v1, v5}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_9
    invoke-virtual {p2}, Lcom/onesignal/core/internal/startup/StartupService;->scheduleStart()V

    .line 335
    invoke-virtual {p0, v4}, Lcom/onesignal/internal/OneSignalImp;->setInitialized(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    monitor-exit v2

    return v4

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1
.end method

.method public isInitialized()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/onesignal/internal/OneSignalImp;->isInitialized:Z

    return v0
.end method

.method public login(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/onesignal/IOneSignal$DefaultImpls;->login(Lcom/onesignal/IOneSignal;Ljava/lang/String;)V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "externalId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login(externalId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", jwtBearerToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/onesignal/internal/OneSignalImp;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 350
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 351
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 352
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string p2, ""

    iput-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 355
    iget-object p2, p0, Lcom/onesignal/internal/OneSignalImp;->loginLock:Ljava/lang/Object;

    monitor-enter p2

    .line 356
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v0}, Lcom/onesignal/user/internal/identity/IdentityModel;->getExternalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 357
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v0}, Lcom/onesignal/user/internal/identity/IdentityModel;->getOnesignalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 359
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 360
    monitor-exit p2

    return-void

    .line 364
    :cond_0
    :try_start_1
    new-instance v0, Lcom/onesignal/internal/OneSignalImp$login$1$1;

    invoke-direct {v0, p1}, Lcom/onesignal/internal/OneSignalImp$login$1$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p0, v9, v0, v8, v7}, Lcom/onesignal/internal/OneSignalImp;->createAndSwitchToNewUser$default(Lcom/onesignal/internal/OneSignalImp;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 368
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v0}, Lcom/onesignal/user/internal/identity/IdentityModel;->getOnesignalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 369
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    monitor-exit p2

    .line 372
    new-instance p2, Lcom/onesignal/internal/OneSignalImp$login$2;

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/onesignal/internal/OneSignalImp$login$2;-><init>(Lcom/onesignal/internal/OneSignalImp;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {v9, p2, v8, v7}, Lcom/onesignal/common/threading/ThreadUtilsKt;->suspendifyOnThread$default(ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 355
    monitor-exit p2

    throw p1

    .line 347
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Must call \'initWithContext\' before \'login\'"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logout()V
    .locals 12

    .line 396
    sget-object v0, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    const-string v1, "logout()"

    invoke-static {v0, v1}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/onesignal/internal/OneSignalImp;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->loginLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v1

    check-cast v1, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v1}, Lcom/onesignal/user/internal/identity/IdentityModel;->getExternalId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 405
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 408
    :try_start_1
    invoke-static {p0, v2, v3, v1, v3}, Lcom/onesignal/internal/OneSignalImp;->createAndSwitchToNewUser$default(Lcom/onesignal/internal/OneSignalImp;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lcom/onesignal/internal/OneSignalImp;->operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 410
    new-instance v11, Lcom/onesignal/user/internal/operations/LoginUserOperation;

    .line 411
    iget-object v4, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/onesignal/core/internal/config/ConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v4

    check-cast v4, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v4}, Lcom/onesignal/user/internal/identity/IdentityModel;->getOnesignalId()Ljava/lang/String;

    move-result-object v6

    .line 413
    invoke-direct {p0}, Lcom/onesignal/internal/OneSignalImp;->getIdentityModelStore()Lcom/onesignal/user/internal/identity/IdentityModelStore;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v4

    check-cast v4, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v4}, Lcom/onesignal/user/internal/identity/IdentityModel;->getExternalId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, v11

    .line 410
    invoke-direct/range {v4 .. v10}, Lcom/onesignal/user/internal/operations/LoginUserOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v11, Lcom/onesignal/core/internal/operations/Operation;

    const/4 v4, 0x2

    .line 409
    invoke-static {v1, v11, v2, v4, v3}, Lcom/onesignal/core/internal/operations/IOperationRepo$DefaultImpls;->enqueue$default(Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/operations/Operation;ZILjava/lang/Object;)V

    .line 418
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 399
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Must call \'initWithContext\' before \'logout\'"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConsentGiven(Z)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->_consentGiven:Ljava/lang/Boolean;

    .line 71
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/internal/OneSignalImp;->_consentGiven:Ljava/lang/Boolean;

    .line 72
    iget-object v1, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onesignal/core/internal/config/ConfigModel;->setConsentGiven(Ljava/lang/Boolean;)V

    .line 73
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/onesignal/internal/OneSignalImp;->operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/onesignal/core/internal/operations/IOperationRepo;->forceExecuteOperations()V

    :cond_1
    return-void
.end method

.method public setConsentRequired(Z)V
    .locals 1

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->_consentRequired:Ljava/lang/Boolean;

    .line 64
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onesignal/core/internal/config/ConfigModel;->setConsentRequired(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method public setDisableGMSMissingPrompt(Z)V
    .locals 1

    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->_disableGMSMissingPrompt:Ljava/lang/Boolean;

    .line 82
    iget-object v0, p0, Lcom/onesignal/internal/OneSignalImp;->configModel:Lcom/onesignal/core/internal/config/ConfigModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onesignal/core/internal/config/ConfigModel;->setDisableGMSMissingPrompt(Z)V

    :goto_0
    return-void
.end method

.method public setInitialized(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/onesignal/internal/OneSignalImp;->isInitialized:Z

    return-void
.end method
