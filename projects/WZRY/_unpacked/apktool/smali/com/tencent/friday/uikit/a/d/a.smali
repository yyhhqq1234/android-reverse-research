.class public Lcom/tencent/friday/uikit/a/d/a;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "Friday"

    sput-object v0, Lcom/tencent/friday/uikit/a/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lcom/tencent/friday/uikit/a/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/tencent/friday/uikit/a/d/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/tencent/friday/uikit/a/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/tencent/friday/uikit/a/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/tencent/friday/uikit/a/d/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/tencent/friday/uikit/a/d/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method
