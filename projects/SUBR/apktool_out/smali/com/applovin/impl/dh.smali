.class public final Lcom/applovin/impl/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/gj;


# instance fields
.field private a:Lcom/applovin/impl/e9;

.field private b:Lcom/applovin/impl/ho;

.field private c:Lcom/applovin/impl/qo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/applovin/impl/e9$b;

    invoke-direct {v0}, Lcom/applovin/impl/e9$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/applovin/impl/e9$b;->f(Ljava/lang/String;)Lcom/applovin/impl/e9$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/e9$b;->a()Lcom/applovin/impl/e9;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/dh;->a:Lcom/applovin/impl/e9;

    return-void
.end method

.method private a()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/applovin/impl/dh;->b:Lcom/applovin/impl/ho;

    invoke-static {v0}, Lcom/applovin/impl/b1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/applovin/impl/dh;->c:Lcom/applovin/impl/qo;

    invoke-static {v0}, Lcom/applovin/impl/xp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/ah;)V
    .locals 8

    .line 144
    invoke-direct {p0}, Lcom/applovin/impl/dh;->a()V

    .line 145
    iget-object v0, p0, Lcom/applovin/impl/dh;->b:Lcom/applovin/impl/ho;

    invoke-virtual {v0}, Lcom/applovin/impl/ho;->b()J

    move-result-wide v2

    .line 146
    iget-object v0, p0, Lcom/applovin/impl/dh;->b:Lcom/applovin/impl/ho;

    invoke-virtual {v0}, Lcom/applovin/impl/ho;->c()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/applovin/impl/dh;->a:Lcom/applovin/impl/e9;

    iget-wide v5, v4, Lcom/applovin/impl/e9;->q:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_1

    .line 152
    invoke-virtual {v4}, Lcom/applovin/impl/e9;->a()Lcom/applovin/impl/e9$b;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/applovin/impl/e9$b;->a(J)Lcom/applovin/impl/e9$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/e9$b;->a()Lcom/applovin/impl/e9;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/dh;->a:Lcom/applovin/impl/e9;

    .line 153
    iget-object v1, p0, Lcom/applovin/impl/dh;->c:Lcom/applovin/impl/qo;

    invoke-interface {v1, v0}, Lcom/applovin/impl/qo;->a(Lcom/applovin/impl/e9;)V

    .line 155
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/ah;->a()I

    move-result v5

    .line 156
    iget-object v0, p0, Lcom/applovin/impl/dh;->c:Lcom/applovin/impl/qo;

    invoke-interface {v0, p1, v5}, Lcom/applovin/impl/qo;->a(Lcom/applovin/impl/ah;I)V

    .line 157
    iget-object v1, p0, Lcom/applovin/impl/dh;->c:Lcom/applovin/impl/qo;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/applovin/impl/qo;->a(JIIILcom/applovin/impl/qo$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/applovin/impl/ho;Lcom/applovin/impl/l8;Lcom/applovin/impl/dp$d;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/applovin/impl/dh;->b:Lcom/applovin/impl/ho;

    .line 211
    invoke-virtual {p3}, Lcom/applovin/impl/dp$d;->a()V

    .line 212
    invoke-virtual {p3}, Lcom/applovin/impl/dp$d;->c()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lcom/applovin/impl/l8;->a(II)Lcom/applovin/impl/qo;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/dh;->c:Lcom/applovin/impl/qo;

    .line 215
    iget-object p2, p0, Lcom/applovin/impl/dh;->a:Lcom/applovin/impl/e9;

    invoke-interface {p1, p2}, Lcom/applovin/impl/qo;->a(Lcom/applovin/impl/e9;)V

    return-void
.end method
