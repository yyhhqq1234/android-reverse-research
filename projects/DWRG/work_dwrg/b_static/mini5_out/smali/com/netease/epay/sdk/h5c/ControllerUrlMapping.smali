.class public abstract Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;
.super Ljava/lang/Object;
.source "ControllerUrlMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/h5c/ControllerUrlMapping$PreAction;
    }
.end annotation


# instance fields
.field protected action:Lcom/netease/epay/sdk/h5c/ControllerUrlMapping$PreAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/h5c/ControllerUrlMapping$PreAction<",
            "*>;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attachContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;->context:Landroid/content/Context;

    return-void
.end method

.method public abstract convert(Lorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method public getAction()Lcom/netease/epay/sdk/h5c/ControllerUrlMapping$PreAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/netease/epay/sdk/controller/BaseController;",
            ">()",
            "Lcom/netease/epay/sdk/h5c/ControllerUrlMapping$PreAction<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;->action:Lcom/netease/epay/sdk/h5c/ControllerUrlMapping$PreAction;

    return-object v0
.end method

.method public getH5cUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;->getLocalRouteMapping()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;->getUrlMappingKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getLocalRouteMapping()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->h5cRoutes:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/epay/sdk/base/model/H5cRoute;

    .line 16
    iget v3, v2, Lcom/netease/epay/sdk/base/model/H5cRoute;->hitResult:I

    if-lez v3, :cond_0

    .line 17
    iget-object v3, v2, Lcom/netease/epay/sdk/base/model/H5cRoute;->scene:Ljava/lang/String;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/model/H5cRoute;->h5Url:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUrlMappingKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;->key:Ljava/lang/String;

    return-object v0
.end method

.method public hasBeforeAction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;->action:Lcom/netease/epay/sdk/h5c/ControllerUrlMapping$PreAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
