.class public Lcom/tencent/mna/base/d/b$a;
.super Ljava/lang/Object;
.source "LossRateCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-wide v0, p0, Lcom/tencent/mna/base/d/b$a;->a:J

    .line 181
    iput-wide v0, p0, Lcom/tencent/mna/base/d/b$a;->b:J

    .line 182
    iput-wide v0, p0, Lcom/tencent/mna/base/d/b$a;->c:J

    .line 183
    iput v2, p0, Lcom/tencent/mna/base/d/b$a;->d:I

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/base/d/b$a;->e:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/base/d/b$a;->f:Ljava/lang/String;

    .line 188
    iput-wide p1, p0, Lcom/tencent/mna/base/d/b$a;->a:J

    .line 189
    iput-wide p3, p0, Lcom/tencent/mna/base/d/b$a;->b:J

    .line 190
    iput-wide p5, p0, Lcom/tencent/mna/base/d/b$a;->c:J

    .line 191
    iput v2, p0, Lcom/tencent/mna/base/d/b$a;->d:I

    .line 192
    return-void
.end method
