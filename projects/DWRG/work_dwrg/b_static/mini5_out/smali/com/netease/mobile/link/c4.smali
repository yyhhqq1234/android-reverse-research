.class public abstract Lcom/netease/mobile/link/c4;
.super Lcom/netease/mobile/link/a4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/a4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mobile/link/a4;->b(Landroid/content/Context;Landroid/view/Window;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mobile/link/a4$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/mobile/link/a4;->b(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mobile/link/a4$a;)V

    return-void
.end method
