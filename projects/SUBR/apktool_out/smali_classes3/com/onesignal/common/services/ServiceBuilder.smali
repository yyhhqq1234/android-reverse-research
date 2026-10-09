.class public final Lcom/onesignal/common/services/ServiceBuilder;
.super Ljava/lang/Object;
.source "ServiceBuilder.kt"

# interfaces
.implements Lcom/onesignal/common/services/IServiceBuilder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u001b\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0005\"\n\u0008\u0000\u0010\t\u0018\u0001*\u00020\nH\u0086\u0008J(\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0005\"\u0004\u0008\u0000\u0010\t2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u0002H\t0\u000cH\u0016J!\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0005\"\u0004\u0008\u0000\u0010\t2\u0006\u0010\u000e\u001a\u0002H\tH\u0016\u00a2\u0006\u0002\u0010\u000fJ\"\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0005\"\u0004\u0008\u0000\u0010\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0011H\u0016R\u0018\u0010\u0003\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onesignal/common/services/ServiceBuilder;",
        "Lcom/onesignal/common/services/IServiceBuilder;",
        "()V",
        "registrations",
        "",
        "Lcom/onesignal/common/services/ServiceRegistration;",
        "build",
        "Lcom/onesignal/common/services/ServiceProvider;",
        "register",
        "T",
        "",
        "create",
        "Lkotlin/Function1;",
        "Lcom/onesignal/common/services/IServiceProvider;",
        "obj",
        "(Ljava/lang/Object;)Lcom/onesignal/common/services/ServiceRegistration;",
        "c",
        "Ljava/lang/Class;",
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
.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/common/services/ServiceRegistration<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/onesignal/common/services/ServiceBuilder;->registrations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/onesignal/common/services/ServiceProvider;
    .locals 2

    .line 33
    new-instance v0, Lcom/onesignal/common/services/ServiceProvider;

    iget-object v1, p0, Lcom/onesignal/common/services/ServiceBuilder;->registrations:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic register()Lcom/onesignal/common/services/ServiceRegistration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/onesignal/common/services/ServiceRegistration<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x4

    const-string v1, "T"

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/onesignal/common/services/ServiceRegistration<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/onesignal/common/services/ServiceRegistrationReflection;

    invoke-direct {v0, p1}, Lcom/onesignal/common/services/ServiceRegistrationReflection;-><init>(Ljava/lang/Class;)V

    .line 16
    iget-object p1, p0, Lcom/onesignal/common/services/ServiceBuilder;->registrations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    check-cast v0, Lcom/onesignal/common/services/ServiceRegistration;

    return-object v0
.end method

.method public register(Ljava/lang/Object;)Lcom/onesignal/common/services/ServiceRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/onesignal/common/services/ServiceRegistration<",
            "TT;>;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/onesignal/common/services/ServiceRegistrationSingleton;

    invoke-direct {v0, p1}, Lcom/onesignal/common/services/ServiceRegistrationSingleton;-><init>(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/onesignal/common/services/ServiceBuilder;->registrations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    check-cast v0, Lcom/onesignal/common/services/ServiceRegistration;

    return-object v0
.end method

.method public register(Lkotlin/jvm/functions/Function1;)Lcom/onesignal/common/services/ServiceRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onesignal/common/services/IServiceProvider;",
            "+TT;>;)",
            "Lcom/onesignal/common/services/ServiceRegistration<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "create"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/onesignal/common/services/ServiceRegistrationLambda;

    invoke-direct {v0, p1}, Lcom/onesignal/common/services/ServiceRegistrationLambda;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 22
    iget-object p1, p0, Lcom/onesignal/common/services/ServiceBuilder;->registrations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    check-cast v0, Lcom/onesignal/common/services/ServiceRegistration;

    return-object v0
.end method
