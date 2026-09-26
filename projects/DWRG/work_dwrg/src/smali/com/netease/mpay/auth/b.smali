.class public Lcom/netease/mpay/auth/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/auth/b$b;,
        Lcom/netease/mpay/auth/b$c;,
        Lcom/netease/mpay/auth/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/mpay/auth/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/netease/mpay/auth/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/netease/mpay/auth/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netease/mpay/sharer/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
