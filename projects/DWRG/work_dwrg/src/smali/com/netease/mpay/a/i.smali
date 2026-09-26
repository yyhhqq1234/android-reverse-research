.class Lcom/netease/mpay/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/a/b$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/a/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/a/h;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/a/i;->c:Lcom/netease/mpay/a/h;

    iput-object p2, p0, Lcom/netease/mpay/a/i;->a:Lcom/netease/mpay/f/a/b$a;

    iput-object p3, p0, Lcom/netease/mpay/a/i;->b:Ljava/lang/String;

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


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/netease/mpay/a/i;->c:Lcom/netease/mpay/a/h;

    iget-object v0, v0, Lcom/netease/mpay/a/h;->a:Lcom/netease/mpay/a/f;

    iget-object v1, p0, Lcom/netease/mpay/a/i;->a:Lcom/netease/mpay/f/a/b$a;

    iget-object v2, p0, Lcom/netease/mpay/a/i;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/a/f;->a(Lcom/netease/mpay/a/f;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/a/i;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
