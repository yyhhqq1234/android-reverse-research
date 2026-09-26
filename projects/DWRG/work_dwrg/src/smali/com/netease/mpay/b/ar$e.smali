.class public Lcom/netease/mpay/b/ar$e;
.super Lcom/netease/mpay/b/ar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/mpay/b/ar;-><init>(IILcom/netease/mpay/b/as;)V

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

.method private constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/ar;-><init>(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/ar$e;-><init>(Landroid/content/Intent;)V

    return-void
.end method
