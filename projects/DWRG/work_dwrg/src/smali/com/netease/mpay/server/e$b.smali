.class Lcom/netease/mpay/server/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/server/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/server/e;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/server/e;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/server/e$b;->b:Ljava/lang/String;

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


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    invoke-static {v0}, Lcom/netease/mpay/server/e;->a(Lcom/netease/mpay/server/e;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/ah;

    new-instance v3, Lcom/netease/mpay/b/a$a;

    iget-object v4, p0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    invoke-static {v4}, Lcom/netease/mpay/server/e;->c(Lcom/netease/mpay/server/e;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    invoke-static {v5}, Lcom/netease/mpay/server/e;->d(Lcom/netease/mpay/server/e;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/netease/mpay/hk;->a()Lcom/netease/mpay/hk;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    invoke-static {v7}, Lcom/netease/mpay/server/e;->c(Lcom/netease/mpay/server/e;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/mpay/hk;->a(Ljava/lang/String;)Lcom/netease/mpay/MpayConfig;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    sget-object v4, Lcom/netease/mpay/f/an$a;->b:Lcom/netease/mpay/f/an$a;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    iget-object v3, p0, Lcom/netease/mpay/server/e$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/b/ah;->a(Ljava/lang/String;)Lcom/netease/mpay/b/ah;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/server/f;

    invoke-direct {v3, p0}, Lcom/netease/mpay/server/f;-><init>(Lcom/netease/mpay/server/e$b;)V

    invoke-virtual {v2, v3}, Lcom/netease/mpay/b/ah;->a(Lcom/netease/mpay/server/e$a;)Lcom/netease/mpay/b/ah;

    move-result-object v2

    invoke-static {v0, v1, v2, v8, v8}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method
