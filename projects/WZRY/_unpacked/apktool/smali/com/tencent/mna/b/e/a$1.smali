.class final Lcom/tencent/mna/b/e/a$1;
.super Ljava/lang/Object;
.source "NetworkQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/e/a;->a(Lcom/tencent/mna/b/e/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/b/e/a$a;


# direct methods
.method constructor <init>(Lcom/tencent/mna/b/e/a$a;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    :try_start_0
    sget-object v0, Lcom/tencent/mna/base/c/c;->h:Lcom/tencent/mna/base/c/c;

    invoke-static {v0}, Lcom/tencent/mna/base/c/f;->a(Lcom/tencent/mna/base/c/c;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    .line 104
    const-string v1, "openid"

    sget-object v2, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "netssid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget-object v3, v3, Lcom/tencent/mna/b/e/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "queryNetType"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->b:I

    .line 106
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "signal"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->c:I

    .line 107
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "routerdelay"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->d:I

    .line 108
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string/jumbo v1, "terminals"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->e:I

    .line 109
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "sendnum"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->f:I

    .line 110
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "recvnum"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->g:I

    .line 111
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "snd_drops"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->h:I

    .line 112
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "rcv_drops"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->i:I

    .line 113
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "snd_errs"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->j:I

    .line 114
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "rcv_errs"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->k:I

    .line 115
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "noportsnum"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->l:I

    .line 116
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "inerrorsnum"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->m:I

    .line 117
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "rcvbuferrornum"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->n:I

    .line 118
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "sndbuferrornum"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->o:I

    .line 119
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "edgedelay"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->p:I

    .line 120
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "edgeip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget-object v3, v3, Lcom/tencent/mna/b/e/a$a;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "mobileType"

    iget-object v2, p0, Lcom/tencent/mna/b/e/a$1;->a:Lcom/tencent/mna/b/e/a$a;

    iget v2, v2, Lcom/tencent/mna/b/e/a$a;->r:I

    .line 122
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Lcom/tencent/mna/base/c/d;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportQueryNetworkEvent failed, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
