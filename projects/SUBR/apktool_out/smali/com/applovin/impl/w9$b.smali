.class Lcom/applovin/impl/w9$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/w9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/w9;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/w9;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/applovin/impl/w9$b;->a:Lcom/applovin/impl/w9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/w9;Lcom/applovin/impl/w9$a;)V
    .locals 0

    .line 1122
    invoke-direct {p0, p1}, Lcom/applovin/impl/w9$b;-><init>(Lcom/applovin/impl/w9;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/applovin/impl/w9$b;->a:Lcom/applovin/impl/w9;

    invoke-static {v0}, Lcom/applovin/impl/w9;->a(Lcom/applovin/impl/w9;)Lcom/applovin/impl/adview/g;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 569
    iget-object p1, p0, Lcom/applovin/impl/w9$b;->a:Lcom/applovin/impl/w9;

    invoke-virtual {p1}, Lcom/applovin/impl/w9;->K()V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/w9$b;->a:Lcom/applovin/impl/w9;

    invoke-static {v0}, Lcom/applovin/impl/w9;->b(Lcom/applovin/impl/w9;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 573
    iget-object p1, p0, Lcom/applovin/impl/w9$b;->a:Lcom/applovin/impl/w9;

    invoke-virtual {p1}, Lcom/applovin/impl/w9;->L()V

    goto :goto_0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/w9$b;->a:Lcom/applovin/impl/w9;

    iget-object v0, v0, Lcom/applovin/impl/o9;->c:Lcom/applovin/impl/sdk/n;

    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/w9$b;->a:Lcom/applovin/impl/w9;

    iget-object v0, v0, Lcom/applovin/impl/o9;->c:Lcom/applovin/impl/sdk/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled click on widget: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
