.class public Lcom/netease/mpay/server/response/e;
.super Lcom/netease/mpay/server/response/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/server/response/e$c;,
        Lcom/netease/mpay/server/response/e$a;,
        Lcom/netease/mpay/server/response/e$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/server/response/ac;-><init>()V

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

.method public static a(Ljava/lang/String;)Lcom/netease/mpay/server/response/e$b;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "alipay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/mpay/server/response/e$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/server/response/e$a;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ecard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netease/mpay/server/response/e$c;

    invoke-direct {v0, p0}, Lcom/netease/mpay/server/response/e$c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/server/response/e$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/server/response/e$b;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
