.class public Lcom/subao/common/d;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/d$a;,
        Lcom/subao/common/d$b;
    }
.end annotation


# static fields
.field private static a:Lcom/subao/common/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/subao/common/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subao/common/d$a;-><init>(Lcom/subao/common/d$1;)V

    sput-object v0, Lcom/subao/common/d;->a:Lcom/subao/common/d$b;

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    if-eqz p2, :cond_0

    .line 25
    invoke-static {p0, p1}, Lcom/subao/common/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p1, p0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/subao/common/d;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/subao/common/d;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/subao/common/d;->a:Lcom/subao/common/d$b;

    invoke-interface {v0, p0, p1}, Lcom/subao/common/d$b;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lcom/subao/common/d;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x6

    invoke-static {p0, v0, p1}, Lcom/subao/common/d;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    return-void
.end method
