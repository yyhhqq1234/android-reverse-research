.class public final Lcom/netease/mobile/link/d1;
.super Lcom/netease/mobile/link/l3;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lcom/netease/mobile/link/g1;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/g1;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/d1;->i:Lcom/netease/mobile/link/g1;

    invoke-direct {p0, p2, p3}, Lcom/netease/mobile/link/l3;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mobile/link/b0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/netease/mobile/link/d1;->i:Lcom/netease/mobile/link/g1;

    invoke-static {p1}, Lcom/netease/mobile/link/g1;->a(Lcom/netease/mobile/link/g1;)V

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/d1;->i:Lcom/netease/mobile/link/g1;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    const-string v1, "next_kb"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/netease/mobile/link/z5;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/d1;->i:Lcom/netease/mobile/link/g1;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 2
    sget v1, Lcom/netease/mobile/link/R$string;->mobile_link__input_current_phone_hint:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 0

    return-void
.end method
