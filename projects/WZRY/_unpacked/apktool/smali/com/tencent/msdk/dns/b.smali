.class public Lcom/tencent/msdk/dns/b;
.super Ljava/lang/Object;
.source "DNSRequest.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:J

.field public p:J

.field public q:J

.field public r:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "-1"

    iput-object v0, p0, Lcom/tencent/msdk/dns/b;->g:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/tencent/msdk/dns/b;->j:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/tencent/msdk/dns/b;->k:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/msdk/dns/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/tencent/msdk/dns/b;->q:J

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/msdk/dns/b;->h:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/msdk/dns/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/tencent/msdk/dns/b;->r:J

    .line 80
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tencent/msdk/dns/b;->f:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/msdk/dns/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tencent/msdk/dns/b;->g:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/msdk/dns/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/msdk/dns/b;->e:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/msdk/dns/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tencent/msdk/dns/b;->a:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/tencent/msdk/dns/b;->q:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/tencent/msdk/dns/b;->r:J

    return-wide v0
.end method
