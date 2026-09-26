.class Lcom/netease/mpay/c/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/c/a$b;

.field final synthetic b:Lcom/netease/mpay/c/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/c/a;Lcom/netease/mpay/c/a$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/c/a$c;->b:Lcom/netease/mpay/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/c/a$c;->a:Lcom/netease/mpay/c/a$b;

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
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/c/a$c;->b:Lcom/netease/mpay/c/a;

    iget-object v1, p0, Lcom/netease/mpay/c/a$c;->a:Lcom/netease/mpay/c/a$b;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/c/a;->a(Lcom/netease/mpay/c/a$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/c/a$c;->b:Lcom/netease/mpay/c/a;

    iget-object v1, p0, Lcom/netease/mpay/c/a$c;->a:Lcom/netease/mpay/c/a$b;

    iget-object v1, v1, Lcom/netease/mpay/c/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/c/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/c/a$c;->b:Lcom/netease/mpay/c/a;

    iget-object v2, p0, Lcom/netease/mpay/c/a$c;->a:Lcom/netease/mpay/c/a$b;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/c/a;->a(Lcom/netease/mpay/c/a$b;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mpay/c/a$a;

    iget-object v2, p0, Lcom/netease/mpay/c/a$c;->b:Lcom/netease/mpay/c/a;

    iget-object v3, p0, Lcom/netease/mpay/c/a$c;->a:Lcom/netease/mpay/c/a$b;

    invoke-direct {v1, v2, v0, v3}, Lcom/netease/mpay/c/a$a;-><init>(Lcom/netease/mpay/c/a;Landroid/graphics/Bitmap;Lcom/netease/mpay/c/a$b;)V

    iget-object v0, p0, Lcom/netease/mpay/c/a$c;->b:Lcom/netease/mpay/c/a;

    invoke-static {v0}, Lcom/netease/mpay/c/a;->a(Lcom/netease/mpay/c/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
