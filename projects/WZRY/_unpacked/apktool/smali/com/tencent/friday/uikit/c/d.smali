.class public Lcom/tencent/friday/uikit/c/d;
.super Ljava/lang/Object;
.source "MsgSender.java"


# instance fields
.field private a:Lcom/tencent/friday/uikit/IFridayCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/c/d;->a:Lcom/tencent/friday/uikit/IFridayCallBack;

    .line 53
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/d;->a:Lcom/tencent/friday/uikit/IFridayCallBack;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/d;->a:Lcom/tencent/friday/uikit/IFridayCallBack;

    invoke-interface {v0, p1}, Lcom/tencent/friday/uikit/IFridayCallBack;->onSceneStatusChange(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
    .locals 2

    .prologue
    .line 45
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/qq/taf/jce/JceStruct;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Lcom/qq/taf/jce/JceStruct;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/friday/uikit/c/d;->a([B[B)V

    .line 46
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/IFridayCallBack;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/tencent/friday/uikit/c/d;->a:Lcom/tencent/friday/uikit/IFridayCallBack;

    .line 21
    return-void
.end method

.method public a([B[B)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/d;->a:Lcom/tencent/friday/uikit/IFridayCallBack;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/d;->a:Lcom/tencent/friday/uikit/IFridayCallBack;

    invoke-interface {v0, p1, p2}, Lcom/tencent/friday/uikit/IFridayCallBack;->callback([B[B)V

    goto :goto_0
.end method
