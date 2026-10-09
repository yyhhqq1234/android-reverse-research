.class public Lcom/tencent/mna/base/d/b$c;
.super Ljava/lang/Object;
.source "LossRateCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput p1, p0, Lcom/tencent/mna/base/d/b$c;->a:I

    .line 506
    iput p2, p0, Lcom/tencent/mna/base/d/b$c;->b:I

    .line 507
    iput p3, p0, Lcom/tencent/mna/base/d/b$c;->d:I

    .line 508
    iput-wide p4, p0, Lcom/tencent/mna/base/d/b$c;->c:J

    .line 509
    return-void
.end method
