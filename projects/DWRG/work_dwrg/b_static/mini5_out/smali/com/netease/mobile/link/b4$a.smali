.class public final Lcom/netease/mobile/link/b4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobile/link/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/Window;

.field public final synthetic c:Lcom/netease/mobile/link/b4;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/b4;Landroid/content/Context;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/b4$a;->c:Lcom/netease/mobile/link/b4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mobile/link/b4$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/mobile/link/b4$a;->b:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobile/link/b4$a;->c:Lcom/netease/mobile/link/b4;

    iget-object v1, p0, Lcom/netease/mobile/link/b4$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mobile/link/b4$a;->b:Landroid/view/Window;

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/netease/mobile/link/a4;->b(Landroid/content/Context;Landroid/view/Window;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
