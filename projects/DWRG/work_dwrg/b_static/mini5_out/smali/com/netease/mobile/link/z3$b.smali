.class public final Lcom/netease/mobile/link/z3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/z3;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/netease/mobile/link/z3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/z3;I)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/z3$b;->b:Lcom/netease/mobile/link/z3;

    iput p2, p0, Lcom/netease/mobile/link/z3$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/z3$b;->b:Lcom/netease/mobile/link/z3;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/z3;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/netease/mobile/link/z3$b;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/netease/mobile/link/z3$b;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/z3$b;->b:Lcom/netease/mobile/link/z3;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/netease/mobile/link/z3;->f:Z

    :cond_0
    return-void
.end method
