.class public final Lcom/netease/mobile/link/d2;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/h2;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/h2;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/d2;->c:Lcom/netease/mobile/link/h2;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/netease/mobile/link/d2;->c:Lcom/netease/mobile/link/h2;

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/h2;->f:Lcom/netease/mobile/link/b2;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/netease/mobile/link/l3;->d:Lcom/netease/mobile/link/k3;

    invoke-virtual {p1}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mobile/link/d2;->c:Lcom/netease/mobile/link/h2;

    .line 4
    iget-object p1, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 5
    sget v0, Lcom/netease/mobile/link/R$string;->mobile_link__error_phone_null:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/d2;->c:Lcom/netease/mobile/link/h2;

    .line 6
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 7
    invoke-static {v0, p1}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/netease/mobile/link/d2;->c:Lcom/netease/mobile/link/h2;

    invoke-static {p1}, Lcom/netease/mobile/link/h2;->a(Lcom/netease/mobile/link/h2;)V

    return-void
.end method
