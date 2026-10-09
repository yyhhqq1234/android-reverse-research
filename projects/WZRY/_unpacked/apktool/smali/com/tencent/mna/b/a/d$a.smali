.class Lcom/tencent/mna/b/a/d$a;
.super Ljava/lang/Object;
.source "AccelerateTesterFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:D

.field g:D

.field h:I

.field i:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v0, -0x1

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    iput v0, p0, Lcom/tencent/mna/b/a/d$a;->a:I

    .line 758
    iput v0, p0, Lcom/tencent/mna/b/a/d$a;->b:I

    .line 759
    iput v0, p0, Lcom/tencent/mna/b/a/d$a;->c:I

    .line 760
    iput v0, p0, Lcom/tencent/mna/b/a/d$a;->d:I

    .line 761
    iput v0, p0, Lcom/tencent/mna/b/a/d$a;->e:I

    .line 762
    iput-wide v2, p0, Lcom/tencent/mna/b/a/d$a;->f:D

    .line 763
    iput-wide v2, p0, Lcom/tencent/mna/b/a/d$a;->g:D

    .line 764
    const v0, 0xffff

    iput v0, p0, Lcom/tencent/mna/b/a/d$a;->h:I

    .line 765
    const-string v0, "-1"

    iput-object v0, p0, Lcom/tencent/mna/b/a/d$a;->i:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mna/b/a/d$1;)V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/tencent/mna/b/a/d$a;-><init>()V

    return-void
.end method
