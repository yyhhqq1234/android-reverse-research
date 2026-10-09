.class public Lcom/ryg/DLCallBackManager;
.super Ljava/lang/Object;
.source "DLCallBackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ryg/DLCallBackManager$Plugin2SDK;,
        Lcom/ryg/DLCallBackManager$SDK2Plugin;
    }
.end annotation


# static fields
.field static volatile manager:Lcom/ryg/DLCallBackManager;


# instance fields
.field callBackInstance:Lcom/ryg/DLCallBackManager$SDK2Plugin;

.field notificationCallBack:Lcom/ryg/DLCallBackManager$Plugin2SDK;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallBack()Lcom/ryg/DLCallBackManager$SDK2Plugin;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/ryg/DLCallBackManager;->instance()Lcom/ryg/DLCallBackManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ryg/DLCallBackManager;->callBackInstance:Lcom/ryg/DLCallBackManager$SDK2Plugin;

    return-object v0
.end method

.method public static getPluginCallback()Lcom/ryg/DLCallBackManager$Plugin2SDK;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/ryg/DLCallBackManager;->instance()Lcom/ryg/DLCallBackManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ryg/DLCallBackManager;->notificationCallBack:Lcom/ryg/DLCallBackManager$Plugin2SDK;

    return-object v0
.end method

.method public static instance()Lcom/ryg/DLCallBackManager;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/ryg/DLCallBackManager;->manager:Lcom/ryg/DLCallBackManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/ryg/DLCallBackManager;

    invoke-direct {v0}, Lcom/ryg/DLCallBackManager;-><init>()V

    sput-object v0, Lcom/ryg/DLCallBackManager;->manager:Lcom/ryg/DLCallBackManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/ryg/DLCallBackManager;->manager:Lcom/ryg/DLCallBackManager;

    return-object v0
.end method

.method public static setCallBack(Lcom/ryg/DLCallBackManager$SDK2Plugin;)V
    .locals 1
    .param p0, "callBack"    # Lcom/ryg/DLCallBackManager$SDK2Plugin;

    .prologue
    .line 27
    invoke-static {}, Lcom/ryg/DLCallBackManager;->instance()Lcom/ryg/DLCallBackManager;

    move-result-object v0

    iput-object p0, v0, Lcom/ryg/DLCallBackManager;->callBackInstance:Lcom/ryg/DLCallBackManager$SDK2Plugin;

    .line 28
    return-void
.end method

.method public static setPluginCallback(Lcom/ryg/DLCallBackManager$Plugin2SDK;)V
    .locals 1
    .param p0, "callback"    # Lcom/ryg/DLCallBackManager$Plugin2SDK;

    .prologue
    .line 35
    invoke-static {}, Lcom/ryg/DLCallBackManager;->instance()Lcom/ryg/DLCallBackManager;

    move-result-object v0

    iput-object p0, v0, Lcom/ryg/DLCallBackManager;->notificationCallBack:Lcom/ryg/DLCallBackManager$Plugin2SDK;

    .line 36
    return-void
.end method
