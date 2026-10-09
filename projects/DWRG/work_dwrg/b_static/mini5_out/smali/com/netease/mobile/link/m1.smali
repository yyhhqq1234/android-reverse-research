.class public final Lcom/netease/mobile/link/m1;
.super Lcom/netease/mobile/link/l3;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lcom/netease/mobile/link/s1;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/s1;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/m1;->i:Lcom/netease/mobile/link/s1;

    invoke-direct {p0, p2, p3}, Lcom/netease/mobile/link/l3;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mobile/link/b0;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->b()Lcom/netease/mobile/link/t;

    move-result-object v0

    iget-boolean v1, v0, Lcom/netease/mobile/link/t;->d:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netease/mobile/link/t;->e:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mobile/link/m1;->i:Lcom/netease/mobile/link/s1;

    .line 1
    iget-object v1, v1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    const-string v2, "get_sms_kb"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/netease/mobile/link/z5;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mobile/link/m1;->i:Lcom/netease/mobile/link/s1;

    .line 3
    iget-object p1, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 4
    sget v0, Lcom/netease/mobile/link/R$string;->mobile_link__error_phone_null:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/m1;->i:Lcom/netease/mobile/link/s1;

    .line 5
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 6
    invoke-static {v0, p1}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/m1;->i:Lcom/netease/mobile/link/s1;

    .line 7
    iget-object v0, p1, Lcom/netease/mobile/link/s1;->g:Lcom/netease/mobile/link/m5;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p1}, Lcom/netease/mobile/link/s1;->a(Lcom/netease/mobile/link/s1;)V

    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/m1;->i:Lcom/netease/mobile/link/s1;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 2
    sget v1, Lcom/netease/mobile/link/R$string;->mobile_link__input_phone_hint:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 0

    return-void
.end method
