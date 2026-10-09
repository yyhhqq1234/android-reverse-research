.class public final Lcom/netease/mobile/link/e3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobile/link/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/e3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/e3;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/e3$a;->a:Lcom/netease/mobile/link/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/e3$a;->a:Lcom/netease/mobile/link/e3;

    .line 1
    iget-object v1, v0, Lcom/netease/mobile/link/e3;->a:Landroid/view/View;

    .line 2
    iget-object v0, v0, Lcom/netease/mobile/link/e3;->g:Landroid/view/animation/AlphaAnimation;

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
