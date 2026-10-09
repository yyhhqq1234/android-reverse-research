.class public final Lcom/netease/mobile/link/w5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/w5$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobile/link/w5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(IIIZLandroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/mobile/link/w5$a;->a:I

    iput p2, p0, Lcom/netease/mobile/link/w5$a;->b:I

    iput p3, p0, Lcom/netease/mobile/link/w5$a;->c:I

    iput-object p5, p0, Lcom/netease/mobile/link/w5$a;->d:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/SpannableString;)Z
    .locals 5

    iget v0, p0, Lcom/netease/mobile/link/w5$a;->b:I

    iget v1, p0, Lcom/netease/mobile/link/w5$a;->a:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/w5$a;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mobile/link/w5$b;

    iget v1, p0, Lcom/netease/mobile/link/w5$a;->c:I

    iget-object v2, p0, Lcom/netease/mobile/link/w5$a;->d:Landroid/view/View$OnClickListener;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/netease/mobile/link/w5$b;-><init>(IZLandroid/view/View$OnClickListener;)V

    iget v1, p0, Lcom/netease/mobile/link/w5$a;->a:I

    iget v2, p0, Lcom/netease/mobile/link/w5$a;->b:I

    const/16 v4, 0x21

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return v3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
