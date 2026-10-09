.class public Lcom/tencent/msdk/dns/d;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "WGGetHostByName"

    sput-object v0, Lcom/tencent/msdk/dns/d;->b:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/msdk/dns/d;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lcom/tencent/msdk/dns/d;->a:Z

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcom/tencent/msdk/dns/d;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/tencent/msdk/dns/d;->a:Z

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/tencent/msdk/dns/d;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/tencent/msdk/dns/d;->a:Z

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/tencent/msdk/dns/d;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/tencent/msdk/dns/d;->a:Z

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/tencent/msdk/dns/d;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
.end method
