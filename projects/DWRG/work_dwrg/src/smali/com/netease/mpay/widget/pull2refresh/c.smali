.class Lcom/netease/mpay/widget/pull2refresh/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/pull2refresh/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/pull2refresh/a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/c;->a:Lcom/netease/mpay/widget/pull2refresh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    float-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL    # 0.2

    sub-double v4, v8, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double v4, v8, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double v4, v8, v4

    sub-double v6, v8, v2

    mul-double/2addr v4, v6

    sub-double v0, v8, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    sub-double v0, v8, v0

    double-to-float v0, v0

    return v0
.end method
