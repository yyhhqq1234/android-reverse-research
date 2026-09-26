.class abstract Lcom/netease/mpay/d/a/a/r$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/d/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/a/r;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/d/a/a/r;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/r$a;->a:Lcom/netease/mpay/d/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method synthetic constructor <init>(Lcom/netease/mpay/d/a/a/r;Lcom/netease/mpay/d/a/a/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/d/a/a/r$a;-><init>(Lcom/netease/mpay/d/a/a/r;)V

    return-void
.end method


# virtual methods
.method abstract a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract a(Landroid/view/View;)V
.end method
