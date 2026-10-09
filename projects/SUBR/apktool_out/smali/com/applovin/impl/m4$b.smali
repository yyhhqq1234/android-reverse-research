.class Lcom/applovin/impl/m4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/m4;->c(Lcom/applovin/impl/i4;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/k4;

.field final synthetic b:Lcom/applovin/impl/i4;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/applovin/impl/m4;


# direct methods
.method constructor <init>(Lcom/applovin/impl/m4;Lcom/applovin/impl/k4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/applovin/impl/m4$b;->d:Lcom/applovin/impl/m4;

    iput-object p2, p0, Lcom/applovin/impl/m4$b;->a:Lcom/applovin/impl/k4;

    iput-object p3, p0, Lcom/applovin/impl/m4$b;->b:Lcom/applovin/impl/i4;

    iput-object p4, p0, Lcom/applovin/impl/m4$b;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 218
    iget-object p2, p0, Lcom/applovin/impl/m4$b;->d:Lcom/applovin/impl/m4;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;)Lcom/applovin/impl/i4;

    .line 219
    iget-object p2, p0, Lcom/applovin/impl/m4$b;->d:Lcom/applovin/impl/m4;

    invoke-static {p2, v0}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/m4;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 222
    iget-object p2, p0, Lcom/applovin/impl/m4$b;->d:Lcom/applovin/impl/m4;

    iget-object v0, p0, Lcom/applovin/impl/m4$b;->a:Lcom/applovin/impl/k4;

    invoke-virtual {v0}, Lcom/applovin/impl/k4;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/m4;Ljava/lang/String;)Lcom/applovin/impl/i4;

    move-result-object p2

    if-nez p2, :cond_0

    .line 225
    iget-object p1, p0, Lcom/applovin/impl/m4$b;->d:Lcom/applovin/impl/m4;

    const-string p2, "Destination state for TOS/PP alert is null"

    invoke-static {p1, p2}, Lcom/applovin/impl/m4;->b(Lcom/applovin/impl/m4;Ljava/lang/String;)V

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/m4$b;->d:Lcom/applovin/impl/m4;

    iget-object v1, p0, Lcom/applovin/impl/m4$b;->b:Lcom/applovin/impl/i4;

    iget-object v2, p0, Lcom/applovin/impl/m4$b;->c:Landroid/app/Activity;

    invoke-static {v0, v1, p2, v2}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    .line 231
    invoke-virtual {p2}, Lcom/applovin/impl/i4;->c()Lcom/applovin/impl/i4$b;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/i4$b;->a:Lcom/applovin/impl/i4$b;

    if-eq p2, v0, :cond_1

    .line 233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    return-void
.end method
