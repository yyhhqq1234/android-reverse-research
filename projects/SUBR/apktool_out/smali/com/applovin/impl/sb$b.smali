.class Lcom/applovin/impl/sb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/o9$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sb;->a(Lcom/applovin/impl/sdk/ad/b;Landroid/view/ViewGroup;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/applovin/impl/sb;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sb;Landroid/content/Context;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;Landroid/view/ViewGroup;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/applovin/impl/sb$b;->d:Lcom/applovin/impl/sb;

    iput-object p2, p0, Lcom/applovin/impl/sb$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/applovin/impl/sb$b;->b:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    iput-object p4, p0, Lcom/applovin/impl/sb$b;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/o9;)V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/applovin/impl/sb$b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/impl/r;->a(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "InterstitialAdDialogWrapper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Failed to show interstitial: attempting to show ad when parent activity is finishing"

    .line 340
    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/n;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/applovin/impl/sb$b;->d:Lcom/applovin/impl/sb;

    invoke-static {v0}, Lcom/applovin/impl/sb;->a(Lcom/applovin/impl/sb;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sb$b;->d:Lcom/applovin/impl/sb;

    invoke-static {v1}, Lcom/applovin/impl/sb;->b(Lcom/applovin/impl/sb;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/applovin/impl/sb;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;Ljava/lang/Throwable;Lcom/applovin/adview/AppLovinFullscreenActivity;)V

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sb$b;->b:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->setPresenter(Lcom/applovin/impl/o9;)V

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sb$b;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/o9;->a(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to show interstitial: presenter threw exception "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/n;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/applovin/impl/sb$b;->d:Lcom/applovin/impl/sb;

    invoke-static {v0}, Lcom/applovin/impl/sb;->a(Lcom/applovin/impl/sb;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sb$b;->d:Lcom/applovin/impl/sb;

    invoke-static {v1}, Lcom/applovin/impl/sb;->b(Lcom/applovin/impl/sb;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/applovin/impl/sb;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;Ljava/lang/Throwable;Lcom/applovin/adview/AppLovinFullscreenActivity;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 717
    iget-object v0, p0, Lcom/applovin/impl/sb$b;->d:Lcom/applovin/impl/sb;

    invoke-static {v0}, Lcom/applovin/impl/sb;->a(Lcom/applovin/impl/sb;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sb$b;->d:Lcom/applovin/impl/sb;

    invoke-static {v1}, Lcom/applovin/impl/sb;->b(Lcom/applovin/impl/sb;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/applovin/impl/sb;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;Ljava/lang/Throwable;Lcom/applovin/adview/AppLovinFullscreenActivity;)V

    return-void
.end method
