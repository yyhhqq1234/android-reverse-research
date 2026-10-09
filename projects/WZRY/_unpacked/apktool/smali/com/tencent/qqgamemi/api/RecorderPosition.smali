.class public Lcom/tencent/qqgamemi/api/RecorderPosition;
.super Ljava/lang/Object;
.source "RecorderPosition.java"


# instance fields
.field public X:F

.field public Y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/tencent/qqgamemi/api/RecorderPosition;->X:F

    .line 14
    iput p2, p0, Lcom/tencent/qqgamemi/api/RecorderPosition;->Y:F

    .line 15
    return-void
.end method
