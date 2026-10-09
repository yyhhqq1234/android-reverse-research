.class public final Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;
.super Ljava/lang/Object;
.source "TrackGooglePurchase.kt"

# interfaces
.implements Lcom/onesignal/core/internal/startup/IStartableService;
.implements Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \'2\u00020\u00012\u00020\u0002:\u0001\'B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0012H\u0016J\u0008\u0010\u001e\u001a\u00020\u001cH\u0016J\u0008\u0010\u001f\u001a\u00020\u001cH\u0002J8\u0010 \u001a\u00020\u001c2\u0016\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u001a0\"j\u0008\u0012\u0004\u0012\u00020\u001a`#2\u0016\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\u001a0\"j\u0008\u0012\u0004\u0012\u00020\u001a`#H\u0002J\u0008\u0010%\u001a\u00020\u001cH\u0016J\u0008\u0010&\u001a\u00020\u001cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;",
        "Lcom/onesignal/core/internal/startup/IStartableService;",
        "Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "_prefs",
        "Lcom/onesignal/core/internal/preferences/IPreferencesService;",
        "_operationRepo",
        "Lcom/onesignal/core/internal/operations/IOperationRepo;",
        "_configModelStore",
        "Lcom/onesignal/core/internal/config/ConfigModelStore;",
        "_identityModelStore",
        "Lcom/onesignal/user/internal/identity/IdentityModelStore;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/preferences/IPreferencesService;Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/identity/IdentityModelStore;)V",
        "getPurchasesMethod",
        "Ljava/lang/reflect/Method;",
        "getSkuDetailsMethod",
        "isWaitingForPurchasesRequest",
        "",
        "mIInAppBillingService",
        "",
        "mServiceConn",
        "Landroid/content/ServiceConnection;",
        "newAsExisting",
        "purchaseTokens",
        "",
        "",
        "onFocus",
        "",
        "firedOnSubscribe",
        "onUnfocused",
        "queryBoughtItems",
        "sendPurchases",
        "skusToAdd",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "newPurchaseTokens",
        "start",
        "trackIAP",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;

.field private static iInAppBillingServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static iapEnabled:I


# instance fields
.field private final _applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final _configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

.field private final _identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

.field private final _operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

.field private final _prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

.field private getPurchasesMethod:Ljava/lang/reflect/Method;

.field private getSkuDetailsMethod:Ljava/lang/reflect/Method;

.field private isWaitingForPurchasesRequest:Z

.field private mIInAppBillingService:Ljava/lang/Object;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private newAsExisting:Z

.field private final purchaseTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3s5fjJ2VPt5k6BkHMCH4I9-rBFc(Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;)V
    .locals 0

    invoke-static {p0}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->queryBoughtItems$lambda-0(Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->Companion:Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;

    const/16 v0, -0x63

    .line 265
    sput v0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->iapEnabled:I

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/preferences/IPreferencesService;Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/identity/IdentityModelStore;)V
    .locals 1

    const-string v0, "_applicationService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_prefs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_operationRepo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_configModelStore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_identityModelStore"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 56
    iput-object p2, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    .line 57
    iput-object p3, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    .line 58
    iput-object p4, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    .line 59
    iput-object p5, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->purchaseTokens:Ljava/util/List;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->newAsExisting:Z

    return-void
.end method

.method public static final synthetic access$getIapEnabled$cp()I
    .locals 1

    .line 54
    sget v0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->iapEnabled:I

    return v0
.end method

.method public static final synthetic access$queryBoughtItems(Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->queryBoughtItems()V

    return-void
.end method

.method public static final synthetic access$setIInAppBillingServiceClass$cp(Ljava/lang/Class;)V
    .locals 0

    .line 54
    sput-object p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->iInAppBillingServiceClass:Ljava/lang/Class;

    return-void
.end method

.method public static final synthetic access$setIapEnabled$cp(I)V
    .locals 0

    .line 54
    sput p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->iapEnabled:I

    return-void
.end method

.method public static final synthetic access$setMIInAppBillingService$p(Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;Ljava/lang/Object;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    return-void
.end method

.method private final queryBoughtItems()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 194
    new-instance v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$$ExternalSyntheticLambda0;-><init>(Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;)V

    .line 144
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final queryBoughtItems$lambda-0(Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;)V
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z

    const/4 v1, 0x0

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 148
    sget-object v2, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->Companion:Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;

    sget-object v3, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->iInAppBillingServiceClass:Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;->access$getGetPurchasesMethod(Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;

    .line 149
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 153
    iget-object v3, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    .line 154
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    .line 155
    iget-object v6, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v6}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v0, "inapp"

    const/4 v6, 0x2

    aput-object v0, v4, v6

    const/4 v0, 0x0

    aput-object v0, v4, v5

    .line 152
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.os.Bundle"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "RESPONSE_CODE"

    .line 159
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "INAPP_PURCHASE_ITEM_LIST"

    .line 162
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "INAPP_PURCHASE_DATA_LIST"

    .line 163
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 165
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 166
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 167
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "purchaseToken"

    .line 168
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 169
    iget-object v9, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->purchaseTokens:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 170
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 174
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 179
    invoke-direct {p0, v2, v3}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->sendPurchases(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 184
    iput-boolean v1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->newAsExisting:Z

    .line 185
    iget-object v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v2, "GTPlayerPurchases"

    const-string v3, "ExistingPurchases"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveBool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 193
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z

    return-void
.end method

.method private final sendPurchases(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "GTPlayerPurchases"

    .line 202
    :try_start_0
    iget-object v2, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->getSkuDetailsMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 203
    sget-object v2, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->Companion:Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;

    sget-object v4, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->iInAppBillingServiceClass:Ljava/lang/Class;

    invoke-static {v2, v4}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;->access$getGetSkuDetailsMethod(Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->getSkuDetailsMethod:Ljava/lang/reflect/Method;

    .line 204
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 206
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ITEM_ID_LIST"

    move-object/from16 v5, p1

    .line 207
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 209
    iget-object v4, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->getSkuDetailsMethod:Ljava/lang/reflect/Method;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 210
    iget-object v6, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x3

    .line 211
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v7, v10

    .line 212
    iget-object v9, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v9}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    const-string v9, "inapp"

    const/4 v11, 0x2

    aput-object v9, v7, v11

    aput-object v2, v7, v8

    .line 209
    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.os.Bundle"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/os/Bundle;

    const-string v4, "RESPONSE_CODE"

    .line 216
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "DETAILS_LIST"

    .line 218
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 219
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 221
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 222
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "productId"

    .line 223
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "price_currency_code"

    .line 224
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 225
    new-instance v9, Ljava/math/BigDecimal;

    const-string v12, "price_amount_micros"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance v7, Ljava/math/BigDecimal;

    const v12, 0xf4240

    invoke-direct {v7, v12}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v9, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    const-string v9, "price.divide(BigDecimal(1000000))"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "sku"

    .line 228
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/onesignal/user/internal/operations/PurchaseInfo;

    const-string v12, "iso"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v6, v8, v7}, Lcom/onesignal/user/internal/operations/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 231
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 232
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 233
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 234
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_4

    .line 239
    iget-object v4, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    .line 240
    new-instance v5, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;

    .line 241
    iget-object v6, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v6}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v6

    check-cast v6, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v6}, Lcom/onesignal/core/internal/config/ConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v13

    .line 242
    iget-object v6, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v6

    check-cast v6, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/identity/IdentityModel;->getOnesignalId()Ljava/lang/String;

    move-result-object v14

    .line 243
    iget-boolean v15, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->newAsExisting:Z

    .line 244
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v10}, Ljava/math/BigDecimal;-><init>(I)V

    move-object v12, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    .line 240
    invoke-direct/range {v12 .. v17}, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/math/BigDecimal;Ljava/util/List;)V

    check-cast v5, Lcom/onesignal/core/internal/operations/Operation;

    const/4 v2, 0x0

    .line 239
    invoke-static {v4, v5, v10, v11, v2}, Lcom/onesignal/core/internal/operations/IOperationRepo$DefaultImpls;->enqueue$default(Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/operations/Operation;ZILjava/lang/Object;)V

    .line 248
    iget-object v2, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->purchaseTokens:Ljava/util/List;

    move-object/from16 v4, p2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object v2, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v4, "purchaseTokens"

    .line 252
    iget-object v5, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->purchaseTokens:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-interface {v2, v0, v4, v5}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v4, "ExistingPurchases"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v4, v3}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveBool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 255
    iput-boolean v10, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->newAsExisting:Z

    .line 256
    iput-boolean v10, v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v2, "Failed to track IAP purchases"

    .line 260
    invoke-static {v2, v0}, Lcom/onesignal/debug/internal/logging/Logging;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final trackIAP()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->mServiceConn:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$trackIAP$serviceConn$1;

    invoke-direct {v0, p0}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$trackIAP$serviceConn$1;-><init>(Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;)V

    .line 132
    check-cast v0, Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->mServiceConn:Landroid/content/ServiceConnection;

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v2, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v2}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->queryBoughtItems()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onFocus(Z)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->trackIAP()V

    return-void
.end method

.method public onUnfocused()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 7

    const-string v0, "GTPlayerPurchases"

    .line 73
    sget-object v1, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->Companion:Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;

    iget-object v2, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v2}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase$Companion;->canTrack(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v2, "purchaseTokens"

    const-string v3, "[]"

    invoke-interface {v1, v0, v2, v3}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 87
    iget-object v5, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->purchaseTokens:Ljava/util/List;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->newAsExisting:Z

    if-eqz v3, :cond_3

    .line 91
    iget-object v1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v3, "ExistingPurchases"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v3, v2}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->getBool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->newAsExisting:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 97
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    move-object v1, p0

    check-cast v1, Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;

    invoke-interface {v0, v1}, Lcom/onesignal/core/internal/application/IApplicationService;->addApplicationLifecycleHandler(Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;)V

    .line 98
    invoke-direct {p0}, Lcom/onesignal/core/internal/purchases/impl/TrackGooglePurchase;->trackIAP()V

    return-void
.end method
