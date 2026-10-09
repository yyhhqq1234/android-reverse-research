.class Lcom/applovin/impl/m4$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/i4;

.field final synthetic b:Lcom/applovin/impl/m4;


# direct methods
.method constructor <init>(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/applovin/impl/m4$g;->b:Lcom/applovin/impl/m4;

    iput-object p2, p0, Lcom/applovin/impl/m4$g;->a:Lcom/applovin/impl/i4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/applovin/impl/m4$g;->b:Lcom/applovin/impl/m4;

    invoke-static {v0}, Lcom/applovin/impl/m4;->c(Lcom/applovin/impl/m4;)Lcom/applovin/impl/i4;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/m4$g;->a:Lcom/applovin/impl/i4;

    iget-object v3, p0, Lcom/applovin/impl/m4$g;->b:Lcom/applovin/impl/m4;

    invoke-static {v3}, Lcom/applovin/impl/m4;->d(Lcom/applovin/impl/m4;)Lcom/applovin/impl/sdk/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->m0()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    return-void
.end method
