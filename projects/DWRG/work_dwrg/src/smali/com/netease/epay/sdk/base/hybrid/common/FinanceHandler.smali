.class public abstract Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;
.super Ljava/lang/Object;
.source "FinanceHandler.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/hybrid/HybridHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler$Protocol;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/epay/sdk/base/hybrid/HybridHandler;"
    }
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final HYBRID:I = 0x1

.field public static final SCHEMA:I = 0x2


# instance fields
.field protected command:Ljava/lang/String;

.field protected message:Lcom/netease/epay/sdk/base/hybrid/common/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/base/hybrid/common/Message",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected msg:Ljava/lang/String;

.field protected protocol:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->protocol:I

    return-void
.end method

.method private parseMessage(Ljava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/common/Message;
    .locals 4
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/epay/sdk/base/hybrid/common/Message",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;, "Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler<TT;>;"
    const/4 v1, 0x0

    .line 70
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/common/Message;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/hybrid/common/Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    const-string v1, "platformId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/epay/sdk/base/hybrid/common/Message;->platformId:Ljava/lang/String;

    .line 73
    const-string v1, "sign"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/epay/sdk/base/hybrid/common/Message;->sign:Ljava/lang/String;

    .line 74
    const-string v1, "v"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/epay/sdk/base/hybrid/common/Message;->v:I

    .line 75
    const-string v1, "msg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/epay/sdk/base/hybrid/common/Message;->msg:Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 81
    :goto_1
    const-string v2, "AbsHandler_setParams"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected abstract buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    .line 88
    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->message:Lcom/netease/epay/sdk/base/hybrid/common/Message;

    .line 89
    return-void
.end method

.method public createRep(ILorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;
    .locals 3
    .param p1, "state"    # I
    .param p2, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 92
    .local p0, "this":Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;, "Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler<TT;>;"
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->message:Lcom/netease/epay/sdk/base/hybrid/common/Message;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/hybrid/common/Message;->msg:Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    new-instance v1, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->command:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0, p2}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->message:Lcom/netease/epay/sdk/base/hybrid/common/Message;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/hybrid/common/Message;->msg:Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;->context:Ljava/lang/String;

    goto :goto_0
.end method

.method public final handle(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cmdName"    # Ljava/lang/String;
    .param p3, "data"    # Lorg/json/JSONObject;
    .param p4, "callback"    # Lcom/netease/epay/sdk/base/hybrid/JsCallback;

    .prologue
    .local p0, "this":Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;, "Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler<TT;>;"
    const/4 v1, 0x0

    .line 36
    const-string v0, "msg"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->msg:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->command:Ljava/lang/String;

    .line 38
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->parseMessage(Ljava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/common/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->message:Lcom/netease/epay/sdk/base/hybrid/common/Message;

    .line 39
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->message:Lcom/netease/epay/sdk/base/hybrid/common/Message;

    if-eqz v0, :cond_3

    .line 40
    iget v0, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->protocol:I

    iget-object v2, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->message:Lcom/netease/epay/sdk/base/hybrid/common/Message;

    iget v2, v2, Lcom/netease/epay/sdk/base/hybrid/common/Message;->v:I

    invoke-virtual {p0, v0, v2}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->isSupport(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x5

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->createRep(ILjava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallback;->confirm(Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;)V

    .line 43
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    :goto_0
    if-eqz v0, :cond_2

    .line 45
    iget-object v1, p0, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->message:Lcom/netease/epay/sdk/base/hybrid/common/Message;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/hybrid/common/Message;->msg:Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;->handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V

    .line 52
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 43
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x7

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->createRep(ILjava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallback;->confirm(Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;)V

    goto :goto_1

    .line 50
    :cond_3
    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->createRep(ILjava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallback;->confirm(Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;)V

    goto :goto_1
.end method

.method protected abstract handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/netease/epay/sdk/base/hybrid/JsCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected isSupport(II)Z
    .locals 2
    .param p1, "protocol"    # I
    .param p2, "protocolVersion"    # I

    .prologue
    .local p0, "this":Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;, "Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler<TT;>;"
    const/4 v0, 0x1

    .line 64
    if-ne p1, v0, :cond_0

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
