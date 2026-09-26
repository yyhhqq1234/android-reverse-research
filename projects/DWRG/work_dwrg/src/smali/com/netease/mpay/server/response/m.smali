.class public Lcom/netease/mpay/server/response/m;
.super Lcom/netease/mpay/server/response/ac;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:J

.field public u:Ljava/lang/Boolean;

.field public v:Lcom/netease/mpay/server/response/ai;

.field public w:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/netease/mpay/server/response/ac;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/server/response/m;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/netease/mpay/server/response/m;->g:Z

    iput v0, p0, Lcom/netease/mpay/server/response/m;->h:I

    iput-object v1, p0, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/server/response/m;->j:Z

    iput-object v1, p0, Lcom/netease/mpay/server/response/m;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/mpay/server/response/m;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/mpay/server/response/m;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/mpay/server/response/m;->n:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/mpay/server/response/m;->o:I

    iput-object v1, p0, Lcom/netease/mpay/server/response/m;->p:Ljava/lang/String;

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
.method public a(Lcom/netease/mpay/server/response/ai;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netease/mpay/server/response/ai;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netease/mpay/server/response/ai$a;->d:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/server/response/ai;->b(Lcom/netease/mpay/server/response/ai$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    sget-object v1, Lcom/netease/mpay/server/response/ai$a;->d:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/ai;->a(Lcom/netease/mpay/server/response/ai$a;)V

    :cond_3
    sget-object v0, Lcom/netease/mpay/server/response/ai$a;->a:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/server/response/ai;->b(Lcom/netease/mpay/server/response/ai$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    sget-object v1, Lcom/netease/mpay/server/response/ai$a;->a:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/ai;->a(Lcom/netease/mpay/server/response/ai$a;)V

    :cond_4
    sget-object v0, Lcom/netease/mpay/server/response/ai$a;->b:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/server/response/ai;->b(Lcom/netease/mpay/server/response/ai$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    sget-object v1, Lcom/netease/mpay/server/response/ai$a;->b:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/ai;->a(Lcom/netease/mpay/server/response/ai$a;)V

    :cond_5
    sget-object v0, Lcom/netease/mpay/server/response/ai$a;->c:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/server/response/ai;->b(Lcom/netease/mpay/server/response/ai$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    sget-object v1, Lcom/netease/mpay/server/response/ai$a;->c:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/ai;->a(Lcom/netease/mpay/server/response/ai$a;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    sget-object v1, Lcom/netease/mpay/server/response/ai$a;->d:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/ai;->b(Lcom/netease/mpay/server/response/ai$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    invoke-virtual {v0}, Lcom/netease/mpay/server/response/ai;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    invoke-virtual {v0}, Lcom/netease/mpay/server/response/ai;->b()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/server/response/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/server/response/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    invoke-virtual {v0}, Lcom/netease/mpay/server/response/ai;->b()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
