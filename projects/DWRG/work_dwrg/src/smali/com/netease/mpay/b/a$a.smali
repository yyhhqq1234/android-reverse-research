.class public Lcom/netease/mpay/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/netease/mpay/MpayConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/b/a$a;->b:Ljava/lang/String;

    if-eqz p3, :cond_1

    :goto_0
    iput-object p3, p0, Lcom/netease/mpay/b/a$a;->c:Lcom/netease/mpay/MpayConfig;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p3, Lcom/netease/mpay/MpayConfig;

    invoke-direct {p3}, Lcom/netease/mpay/MpayConfig;-><init>()V

    goto :goto_0
.end method
