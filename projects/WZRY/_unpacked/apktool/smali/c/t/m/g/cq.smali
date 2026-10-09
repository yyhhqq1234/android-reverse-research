.class public final Lc/t/m/g/cq;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lc/t/m/g/dh;",
            ">;"
        }
    .end annotation
.end field

.field b:Lc/t/m/g/di;

.field c:Lc/t/m/g/di;

.field d:F

.field e:F

.field f:J

.field g:Z

.field h:F

.field i:Lc/t/m/g/cr;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    .line 32
    iput-object v0, p0, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    .line 37
    iput-object v0, p0, Lc/t/m/g/cq;->c:Lc/t/m/g/di;

    .line 42
    iput v2, p0, Lc/t/m/g/cq;->d:F

    .line 47
    iput v2, p0, Lc/t/m/g/cq;->e:F

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/t/m/g/cq;->f:J

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/cq;->g:Z

    .line 62
    iput v2, p0, Lc/t/m/g/cq;->h:F

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    .line 74
    return-void
.end method
