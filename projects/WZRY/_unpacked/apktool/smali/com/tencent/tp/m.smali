.class public Lcom/tencent/tp/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/tp/ITssNativeMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-static {}, Lcom/tencent/tp/m;->e()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0}, Lcom/tencent/tp/ITssNativeMethod;->setcancelupdaterootkit()V

    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 1

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0, p0}, Lcom/tencent/tp/ITssNativeMethod;->setrootkittipstate(I)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0, p0}, Lcom/tencent/tp/ITssNativeMethod;->loadConfig(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/tencent/tp/m;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0, p0}, Lcom/tencent/tp/ITssNativeMethod;->hasMatchRate(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0}, Lcom/tencent/tp/ITssNativeMethod;->forceExit()V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0, p0}, Lcom/tencent/tp/ITssNativeMethod;->loadRootkitTipStr(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0, p0}, Lcom/tencent/tp/ITssNativeMethod;->onRuntimeInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c()I
    .locals 1

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0}, Lcom/tencent/tp/ITssNativeMethod;->isToastEnabled()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0, p0}, Lcom/tencent/tp/ITssNativeMethod;->loadMessageBoxInfo(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0, p0}, Lcom/tencent/tp/ITssNativeMethod;->sendStringToSvr(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d()I
    .locals 1

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    invoke-interface {v0}, Lcom/tencent/tp/ITssNativeMethod;->isRookitRunning()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()V
    .locals 1

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.tencent.tp.TssNativeMethodImp"

    invoke-static {v0}, Lcom/tencent/tp/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tp/ITssNativeMethod;

    sput-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/ITssNativeMethod;

    if-nez v0, :cond_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
