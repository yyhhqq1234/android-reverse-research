.class Lcom/tencent/friday/uikit/d/d/e$1;
.super Ljava/lang/Object;
.source "JLoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/friday/uikit/d/d/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/friday/uikit/d/d/e;


# direct methods
.method constructor <init>(Lcom/tencent/friday/uikit/d/d/e;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/e$1;->a:Lcom/tencent/friday/uikit/d/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 121
    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/e$1;->a:Lcom/tencent/friday/uikit/d/d/e;

    invoke-static {v2}, Lcom/tencent/friday/uikit/d/d/e;->a(Lcom/tencent/friday/uikit/d/d/e;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/e$1;->a:Lcom/tencent/friday/uikit/d/d/e;

    invoke-static {v2}, Lcom/tencent/friday/uikit/d/d/e;->a(Lcom/tencent/friday/uikit/d/d/e;)Landroid/widget/ImageView;

    move-result-object v2

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 123
    :cond_0
    return-void
.end method
