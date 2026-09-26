.class public Lcom/netease/mpay/MpayConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mCustomActivityClass:Ljava/lang/Class;

.field public mScreenOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/mpay/MpayConfig;->mScreenOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/MpayConfig;->mCustomActivityClass:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public removePermission(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/mpay/bk;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/mpay/bk;->n:Ljava/util/ArrayList;

    :cond_1
    sget-object v0, Lcom/netease/mpay/bk;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setActivityClass(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "Enter setActivityClass"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/MpayConfig;->mCustomActivityClass:Ljava/lang/Class;

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/mpay/do;->a(Z)V

    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter setScreenOrientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iput p1, p0, Lcom/netease/mpay/MpayConfig;->mScreenOrientation:I

    return-void
.end method

.method public setSkin(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Enter setSkin"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    sput-object p1, Lcom/netease/mpay/bk;->l:Ljava/lang/String;

    return-void
.end method

.method public setTVMode(Z)V
    .locals 1

    const-string v0, "Enter setTVMode"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/bk;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public setWelcomeWindow(I)V
    .locals 0

    sput p1, Lcom/netease/mpay/bk;->e:I

    return-void
.end method
