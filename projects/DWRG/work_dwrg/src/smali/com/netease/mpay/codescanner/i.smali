.class Lcom/netease/mpay/codescanner/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/codescanner/camera/CameraConfigurationManager$CalculatePreviewSizeCallback;


# instance fields
.field final synthetic a:Landroid/util/DisplayMetrics;

.field final synthetic b:Lcom/netease/mpay/codescanner/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/e;Landroid/util/DisplayMetrics;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/i;->b:Lcom/netease/mpay/codescanner/e;

    iput-object p2, p0, Lcom/netease/mpay/codescanner/i;->a:Landroid/util/DisplayMetrics;

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
.method public calculatePreviewSize(Ljava/util/List;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-lt v2, v3, :cond_1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/netease/mpay/codescanner/i;->a:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v3, p0, Lcom/netease/mpay/codescanner/i;->a:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v3, p0, Lcom/netease/mpay/codescanner/i;->a:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/netease/mpay/codescanner/i;->a:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
