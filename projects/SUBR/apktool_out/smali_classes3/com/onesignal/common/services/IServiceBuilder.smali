.class public interface abstract Lcom/onesignal/common/services/IServiceBuilder;
.super Ljava/lang/Object;
.source "IServiceBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J(\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0000\u0010\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u00060\u0008H&J!\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0000\u0010\u00062\u0006\u0010\n\u001a\u0002H\u0006H&\u00a2\u0006\u0002\u0010\u000bJ\"\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0000\u0010\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\rH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onesignal/common/services/IServiceBuilder;",
        "",
        "build",
        "Lcom/onesignal/common/services/ServiceProvider;",
        "register",
        "Lcom/onesignal/common/services/ServiceRegistration;",
        "T",
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


# virtual methods
.method public abstract build()Lcom/onesignal/common/services/ServiceProvider;
.end method

.method public abstract register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;
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
.end method

.method public abstract register(Ljava/lang/Object;)Lcom/onesignal/common/services/ServiceRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/onesignal/common/services/ServiceRegistration<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract register(Lkotlin/jvm/functions/Function1;)Lcom/onesignal/common/services/ServiceRegistration;
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
.end method
