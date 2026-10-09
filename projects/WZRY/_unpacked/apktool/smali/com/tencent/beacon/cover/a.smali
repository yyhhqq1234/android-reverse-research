.class final Lcom/tencent/beacon/cover/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/cover/a;->g:Ljava/lang/String;

    .line 285
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/cover/a;->h:Ljava/lang/String;

    return-void
.end method
