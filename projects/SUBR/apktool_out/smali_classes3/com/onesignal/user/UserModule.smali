.class public final Lcom/onesignal/user/UserModule;
.super Ljava/lang/Object;
.source "UserModule.kt"

# interfaces
.implements Lcom/onesignal/common/modules/IModule;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserModule.kt\ncom/onesignal/user/UserModule\n+ 2 ServiceBuilder.kt\ncom/onesignal/common/services/ServiceBuilder\n+ 3 ServiceRegistration.kt\ncom/onesignal/common/services/ServiceRegistration\n*L\n1#1,82:1\n11#2:83\n11#2:85\n11#2:87\n11#2:89\n11#2:91\n11#2:93\n11#2:95\n11#2:98\n11#2:100\n11#2:102\n11#2:104\n11#2:107\n11#2:109\n11#2:111\n11#2:113\n11#2:116\n11#2:118\n11#2:120\n11#2:122\n11#2:124\n11#2:126\n11#2:128\n15#3:84\n15#3:86\n15#3:88\n15#3:90\n15#3:92\n15#3:94\n15#3:96\n15#3:97\n15#3:99\n15#3:101\n15#3:103\n15#3:105\n15#3:106\n15#3:108\n15#3:110\n15#3:112\n15#3:114\n15#3:115\n15#3:117\n15#3:119\n15#3:121\n15#3:123\n15#3:125\n15#3:127\n15#3:129\n*S KotlinDebug\n*F\n+ 1 UserModule.kt\ncom/onesignal/user/UserModule\n*L\n40#1:83\n43#1:85\n44#1:87\n47#1:89\n48#1:91\n49#1:93\n50#1:95\n55#1:98\n56#1:100\n57#1:102\n58#1:104\n61#1:107\n64#1:109\n65#1:111\n66#1:113\n69#1:116\n70#1:118\n71#1:120\n72#1:122\n74#1:124\n76#1:126\n79#1:128\n40#1:84\n43#1:86\n44#1:88\n47#1:90\n48#1:92\n49#1:94\n51#1:96\n52#1:97\n55#1:99\n56#1:101\n57#1:103\n59#1:105\n60#1:106\n61#1:108\n64#1:110\n65#1:112\n67#1:114\n68#1:115\n69#1:117\n70#1:119\n71#1:121\n72#1:123\n74#1:125\n76#1:127\n79#1:129\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onesignal/user/UserModule;",
        "Lcom/onesignal/common/modules/IModule;",
        "()V",
        "register",
        "",
        "builder",
        "Lcom/onesignal/common/services/ServiceBuilder;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Lcom/onesignal/common/services/ServiceBuilder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-class v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 84
    const-class v1, Lcom/onesignal/common/consistency/models/IConsistencyManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 85
    const-class v0, Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 86
    const-class v1, Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 87
    const-class v0, Lcom/onesignal/user/internal/operations/impl/listeners/PropertiesModelStoreListener;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 88
    const-class v1, Lcom/onesignal/core/internal/startup/IBootstrapService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 89
    const-class v0, Lcom/onesignal/user/internal/identity/IdentityModelStore;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 90
    const-class v1, Lcom/onesignal/user/internal/identity/IdentityModelStore;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 91
    const-class v0, Lcom/onesignal/user/internal/operations/impl/listeners/IdentityModelStoreListener;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 92
    const-class v1, Lcom/onesignal/core/internal/startup/IBootstrapService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 93
    const-class v0, Lcom/onesignal/user/internal/backend/impl/IdentityBackendService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 94
    const-class v1, Lcom/onesignal/user/internal/backend/IIdentityBackendService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 95
    const-class v0, Lcom/onesignal/user/internal/operations/impl/executors/IdentityOperationExecutor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 96
    const-class v1, Lcom/onesignal/user/internal/operations/impl/executors/IdentityOperationExecutor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 97
    const-class v1, Lcom/onesignal/core/internal/operations/IOperationExecutor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 98
    const-class v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 99
    const-class v1, Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 100
    const-class v0, Lcom/onesignal/user/internal/operations/impl/listeners/SubscriptionModelStoreListener;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 101
    const-class v1, Lcom/onesignal/core/internal/startup/IBootstrapService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 102
    const-class v0, Lcom/onesignal/user/internal/backend/impl/SubscriptionBackendService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 103
    const-class v1, Lcom/onesignal/user/internal/backend/ISubscriptionBackendService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 104
    const-class v0, Lcom/onesignal/user/internal/operations/impl/executors/SubscriptionOperationExecutor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 105
    const-class v1, Lcom/onesignal/user/internal/operations/impl/executors/SubscriptionOperationExecutor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 106
    const-class v1, Lcom/onesignal/core/internal/operations/IOperationExecutor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 107
    const-class v0, Lcom/onesignal/user/internal/subscriptions/impl/SubscriptionManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 108
    const-class v1, Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 109
    const-class v0, Lcom/onesignal/user/internal/builduser/impl/RebuildUserService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 110
    const-class v1, Lcom/onesignal/user/internal/builduser/IRebuildUserService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 111
    const-class v0, Lcom/onesignal/user/internal/backend/impl/UserBackendService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 112
    const-class v1, Lcom/onesignal/user/internal/backend/IUserBackendService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 113
    const-class v0, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 114
    const-class v1, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 115
    const-class v1, Lcom/onesignal/core/internal/operations/IOperationExecutor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 116
    const-class v0, Lcom/onesignal/user/internal/operations/impl/executors/LoginUserOperationExecutor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 117
    const-class v1, Lcom/onesignal/core/internal/operations/IOperationExecutor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 118
    const-class v0, Lcom/onesignal/user/internal/operations/impl/executors/LoginUserFromSubscriptionOperationExecutor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 119
    const-class v1, Lcom/onesignal/core/internal/operations/IOperationExecutor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 120
    const-class v0, Lcom/onesignal/user/internal/operations/impl/executors/RefreshUserOperationExecutor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 121
    const-class v1, Lcom/onesignal/core/internal/operations/IOperationExecutor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 122
    const-class v0, Lcom/onesignal/user/internal/UserManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 123
    const-class v1, Lcom/onesignal/user/IUserManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 124
    const-class v0, Lcom/onesignal/user/internal/service/UserRefreshService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 125
    const-class v1, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 126
    const-class v0, Lcom/onesignal/user/internal/migrations/RecoverFromDroppedLoginBug;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 127
    const-class v1, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 128
    const-class v0, Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object p1

    .line 129
    const-class v0, Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    return-void
.end method
