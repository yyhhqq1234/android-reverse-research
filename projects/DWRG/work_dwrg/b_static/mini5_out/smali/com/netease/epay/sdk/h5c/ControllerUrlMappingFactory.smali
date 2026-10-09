.class public Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;
.super Ljava/lang/Object;
.source "ControllerUrlMappingFactory.java"


# static fields
.field private static sMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->sMapping:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->sMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.netease.epay.sdk.h5c.H5CController"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    sget-object v1, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->sMapping:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 13
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    const-string p0, "H5C"

    const-string v1, "H5CController not found, ignore it."

    .line 16
    invoke-static {p0, v1}, Lcom/netease/epay/sdk/base/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static register(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->sMapping:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
