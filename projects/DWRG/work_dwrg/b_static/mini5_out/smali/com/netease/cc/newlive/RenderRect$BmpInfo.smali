.class public Lcom/netease/cc/newlive/RenderRect$BmpInfo;
.super Ljava/lang/Object;
.source "RenderRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/newlive/RenderRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BmpInfo"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/cc/newlive/RenderRect;

.field public align:I

.field public bmp:Landroid/graphics/Bitmap;

.field public update:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/netease/cc/newlive/RenderRect;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->a:Lcom/netease/cc/newlive/RenderRect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 579
    iput-boolean p1, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->update:Z

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/newlive/RenderRect;Landroid/graphics/Bitmap;III)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->a:Lcom/netease/cc/newlive/RenderRect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->updateBmp(Landroid/graphics/Bitmap;III)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 597
    iput-boolean v0, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->update:Z

    .line 599
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 602
    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updateBmp(Landroid/graphics/Bitmap;III)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->bmp:Landroid/graphics/Bitmap;

    .line 589
    iput p2, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->x:I

    .line 590
    iput p3, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->y:I

    .line 591
    iput p4, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->align:I

    const/4 p1, 0x1

    .line 592
    iput-boolean p1, p0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->update:Z

    return-void
.end method
