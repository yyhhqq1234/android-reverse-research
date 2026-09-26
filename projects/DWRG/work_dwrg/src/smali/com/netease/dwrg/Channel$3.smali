.class final Lcom/netease/dwrg/Channel$3;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Channel;->popStartup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hideAnim1:Landroid/view/animation/AlphaAnimation;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/netease/dwrg/Channel$3;->val$imageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/netease/dwrg/Channel$3;->val$hideAnim1:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netease/dwrg/Channel$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/dwrg/Channel$3;->val$hideAnim1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    return-void
.end method
