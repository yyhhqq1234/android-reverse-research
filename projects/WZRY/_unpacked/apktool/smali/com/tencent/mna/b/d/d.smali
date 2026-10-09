.class final Lcom/tencent/mna/b/d/d;
.super Ljava/lang/Object;
.source "DiagnoseSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/b/d/d$a;
    }
.end annotation


# direct methods
.method static a(ILcom/tencent/mna/b/d/d$a;)Z
    .locals 1

    .prologue
    .line 25
    iget v0, p1, Lcom/tencent/mna/b/d/d$a;->f:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
