.class public final Lcom/netease/mobile/link/w5$b;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobile/link/w5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(IZLandroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lcom/netease/mobile/link/w5$b;->a:I

    iput-boolean p2, p0, Lcom/netease/mobile/link/w5$b;->b:Z

    iput-object p3, p0, Lcom/netease/mobile/link/w5$b;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/netease/mobile/link/widget/LinkTextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/netease/mobile/link/widget/LinkTextView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mobile/link/widget/LinkTextView;->isLinkClicked:Z

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/w5$b;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lcom/netease/mobile/link/w5$b;->a:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/netease/mobile/link/w5$b;->b:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
