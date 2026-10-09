.class Lcom/subao/common/e/ab$c;
.super Landroid/os/AsyncTask;
.source "PortalDataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/subao/common/e/ac;",
        "Ljava/lang/Void;",
        "Lcom/subao/common/e/ac;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/subao/common/e/ab;


# direct methods
.method constructor <init>(Lcom/subao/common/e/ab;)V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 494
    iput-object p1, p0, Lcom/subao/common/e/ab$c;->a:Lcom/subao/common/e/ab;

    .line 495
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/subao/common/e/ac;)Lcom/subao/common/e/ac;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/subao/common/e/ab$c;->a:Lcom/subao/common/e/ab;

    .line 500
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0, p1}, Lcom/subao/common/e/ab;->c([Lcom/subao/common/e/ac;)Lcom/subao/common/e/ac;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/subao/common/e/ac;)V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/subao/common/e/ab$c;->a:Lcom/subao/common/e/ab;

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0, p1}, Lcom/subao/common/e/ab;->a(Lcom/subao/common/e/ac;)V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subao/common/e/ab$c;->a:Lcom/subao/common/e/ab;

    .line 515
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 489
    check-cast p1, [Lcom/subao/common/e/ac;

    invoke-virtual {p0, p1}, Lcom/subao/common/e/ab$c;->a([Lcom/subao/common/e/ac;)Lcom/subao/common/e/ac;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 489
    check-cast p1, Lcom/subao/common/e/ac;

    invoke-virtual {p0, p1}, Lcom/subao/common/e/ab$c;->a(Lcom/subao/common/e/ac;)V

    return-void
.end method
