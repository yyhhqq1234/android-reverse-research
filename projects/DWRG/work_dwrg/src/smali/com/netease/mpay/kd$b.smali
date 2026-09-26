.class Lcom/netease/mpay/kd$b;
.super Lcom/netease/mpay/widget/bf$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/kd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/kd;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/kd;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/kd$b;->a:Lcom/netease/mpay/kd;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

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

.method synthetic constructor <init>(Lcom/netease/mpay/kd;Lcom/netease/mpay/ke;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/kd$b;-><init>(Lcom/netease/mpay/kd;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kd$b;->a:Lcom/netease/mpay/kd;

    invoke-static {v0}, Lcom/netease/mpay/kd;->h(Lcom/netease/mpay/kd;)V

    return-void
.end method
