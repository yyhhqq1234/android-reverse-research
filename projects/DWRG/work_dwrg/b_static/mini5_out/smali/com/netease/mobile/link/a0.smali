.class public final Lcom/netease/mobile/link/a0;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/a0$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/widget/TextView;

.field public final c:Ljava/lang/String;

.field public d:Lcom/netease/mobile/link/a0$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;Lcom/netease/mobile/link/a0$a;)V
    .locals 7

    const-string v3, "s"

    const/16 v4, 0x3c

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/netease/mobile/link/a0;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;IILcom/netease/mobile/link/a0$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;IILcom/netease/mobile/link/a0$a;)V
    .locals 2

    const p3, 0xea60

    int-to-long p3, p3

    const/16 p5, 0x3de

    int-to-long v0, p5

    invoke-direct {p0, p3, p4, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object p1, p0, Lcom/netease/mobile/link/a0;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mobile/link/a0;->b:Landroid/widget/TextView;

    const-string p1, "s"

    iput-object p1, p0, Lcom/netease/mobile/link/a0;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mobile/link/a0;->d:Lcom/netease/mobile/link/a0$a;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mobile/link/a0;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/netease/mobile/link/a0;->b:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mobile/link/a0;->d:Lcom/netease/mobile/link/a0$a;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/netease/mobile/link/m5$a;

    .line 3
    iget-object v2, v0, Lcom/netease/mobile/link/m5$a;->b:Lcom/netease/mobile/link/m5;

    iget-object v0, v0, Lcom/netease/mobile/link/m5$a;->a:Landroid/app/Activity;

    .line 4
    iget-object v3, v2, Lcom/netease/mobile/link/m5;->c:Lcom/netease/mobile/link/a0;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v3, v2, Lcom/netease/mobile/link/m5;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-static {v0}, Lcom/netease/mobile/link/j5;->a(Landroid/content/Context;)Lcom/netease/mobile/link/j5;

    move-result-object v0

    iget-object v1, v2, Lcom/netease/mobile/link/m5;->d:Landroid/widget/TextView;

    sget v3, Lcom/netease/mobile/link/R$color;->mobile_link__font_h9:I

    invoke-virtual {v0, v1, v3}, Lcom/netease/mobile/link/j5;->a(Landroid/view/View;I)V

    iget-object v0, v2, Lcom/netease/mobile/link/m5;->d:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/netease/mobile/link/m5;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mobile/link/R$string;->mobile_link__send_again:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/netease/mobile/link/a0;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/netease/mobile/link/a0;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mobile/link/a0;->d:Lcom/netease/mobile/link/a0$a;

    :cond_2
    :goto_1
    return-void
.end method

.method public final onTick(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/netease/mobile/link/a0;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/netease/mobile/link/a0;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0xf

    const-string v7, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mobile/link/a0;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr p1, v5

    div-long/2addr p1, v3

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/netease/mobile/link/a0;->b:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr p1, v5

    div-long/2addr p1, v3

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "%s"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/mobile/link/a0;->c:Ljava/lang/String;

    aput-object v1, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/netease/mobile/link/a0;->a:Landroid/app/Activity;

    iput-object p1, p0, Lcom/netease/mobile/link/a0;->b:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mobile/link/a0;->d:Lcom/netease/mobile/link/a0$a;

    :goto_2
    return-void
.end method
