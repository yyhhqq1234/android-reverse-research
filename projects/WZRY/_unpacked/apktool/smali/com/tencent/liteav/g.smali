.class public Lcom/tencent/liteav/g;
.super Ljava/lang/Object;
.source "TXCPlayerConfig.java"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x3dcccccd    # 0.1f

    const/4 v1, 0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v2, p0, Lcom/tencent/liteav/g;->a:F

    .line 11
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/tencent/liteav/g;->b:F

    .line 13
    iput v2, p0, Lcom/tencent/liteav/g;->c:F

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/liteav/g;->d:I

    .line 17
    iput v1, p0, Lcom/tencent/liteav/g;->e:I

    .line 19
    iput-boolean v1, p0, Lcom/tencent/liteav/g;->f:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/g;->g:Z

    .line 23
    iput-boolean v1, p0, Lcom/tencent/liteav/g;->h:Z

    .line 25
    iput-boolean v1, p0, Lcom/tencent/liteav/g;->i:Z

    .line 27
    iput v1, p0, Lcom/tencent/liteav/g;->j:I

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/liteav/g;->o:I

    return-void
.end method
