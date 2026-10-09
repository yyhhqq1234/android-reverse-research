.class public Lcom/tencent/mna/base/f/r$a;
.super Ljava/lang/Object;
.source "WifiUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/f/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mna/base/f/r$a;-><init>(II)V

    .line 217
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p1, p0, Lcom/tencent/mna/base/f/r$a;->a:I

    .line 212
    iput p2, p0, Lcom/tencent/mna/base/f/r$a;->b:I

    .line 213
    return-void
.end method
