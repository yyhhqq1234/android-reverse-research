.class public Lcom/subao/common/i/d$a;
.super Ljava/lang/Object;
.source "MessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z


# direct methods
.method public static a(ZZZZ)V
    .locals 5

    .prologue
    .line 27
    sput-boolean p0, Lcom/subao/common/i/d$a;->a:Z

    .line 28
    sput-boolean p1, Lcom/subao/common/i/d$a;->b:Z

    .line 29
    sput-boolean p2, Lcom/subao/common/i/d$a;->c:Z

    .line 30
    sput-boolean p3, Lcom/subao/common/i/d$a;->d:Z

    .line 32
    const-string v0, "SubaoMessage"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "SubaoMessage"

    const-string v1, "ReportAllow set: tg=%b, auth=%b, missedLink=%b, wifiAccelSwitch=%b"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 35
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 34
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/subao/common/i/d$a;->a:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/subao/common/i/d$a;->b:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/subao/common/i/d$a;->c:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/subao/common/i/d$a;->d:Z

    return v0
.end method
