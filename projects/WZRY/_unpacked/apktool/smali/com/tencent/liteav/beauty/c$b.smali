.class Lcom/tencent/liteav/beauty/c$b;
.super Ljava/lang/Object;
.source "TXCVideoPreprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/beauty/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Lcom/tencent/liteav/basic/d/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-boolean v1, p0, Lcom/tencent/liteav/beauty/c$b;->g:Z

    .line 159
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/liteav/beauty/c$b;->k:I

    .line 161
    iput v1, p0, Lcom/tencent/liteav/beauty/c$b;->l:I

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/beauty/c$b;->m:Lcom/tencent/liteav/basic/d/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/beauty/c$1;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/tencent/liteav/beauty/c$b;-><init>()V

    return-void
.end method
