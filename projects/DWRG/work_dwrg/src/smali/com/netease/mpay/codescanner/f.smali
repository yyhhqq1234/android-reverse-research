.class Lcom/netease/mpay/codescanner/f;
.super Lcom/netease/codescanner/CodeScanner;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/e;Landroid/content/Context;Landroid/view/SurfaceView;Lcom/netease/codescanner/widget/ViewfinderView;Lcom/netease/codescanner/CodeScanConfig;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/netease/codescanner/CodeScanner;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;Lcom/netease/codescanner/widget/ViewfinderView;Lcom/netease/codescanner/CodeScanConfig;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleDecodeError(Lcom/netease/codescanner/CodeScanner$DecodeResult;)V
    .locals 0

    return-void
.end method

.method public handleDecodeSuccess(Lcom/netease/codescanner/CodeScanner$DecodeResult;)V
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scanned result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/codescanner/CodeScanner$DecodeResult;->rawResult:Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/codescanner/CodeScanner$DecodeResult;->rawResult:Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->b(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/codescanner/d;->a()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->b(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/codescanner/d;->b()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v2, p1, Lcom/netease/codescanner/CodeScanner$DecodeResult;->rawResult:Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Ljava/lang/String;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Lcom/netease/mpay/codescanner/e$b;)Lcom/netease/mpay/codescanner/e$b;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->c(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/codescanner/e$c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/f/at;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v2}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/v;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v3}, Lcom/netease/mpay/codescanner/e;->c(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v3

    check-cast v3, Lcom/netease/mpay/codescanner/e$c;

    iget-object v3, v3, Lcom/netease/mpay/codescanner/e$c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v4}, Lcom/netease/mpay/codescanner/e;->c(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v4

    check-cast v4, Lcom/netease/mpay/codescanner/e$c;

    iget-object v4, v4, Lcom/netease/mpay/codescanner/e$c;->c:Ljava/lang/String;

    new-instance v5, Lcom/netease/mpay/codescanner/g;

    invoke-direct {v5, p0}, Lcom/netease/mpay/codescanner/g;-><init>(Lcom/netease/mpay/codescanner/f;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/at;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/at;->h()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->c(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/codescanner/e$d;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/netease/mpay/f/al;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v2, v0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/b/v;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->c(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/codescanner/e$d;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e$d;->b:Ljava/lang/String;

    new-instance v4, Lcom/netease/mpay/codescanner/h;

    invoke-direct {v4, p0}, Lcom/netease/mpay/codescanner/h;-><init>(Lcom/netease/mpay/codescanner/f;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/netease/mpay/f/al;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v1}, Lcom/netease/mpay/f/al;->h()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/v;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/v;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-virtual {v0}, Lcom/netease/mpay/codescanner/QrScannerOptions;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/v;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-virtual {v0}, Lcom/netease/mpay/codescanner/QrScannerOptions;->c()Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/codescanner/CodeScanner$DecodeResult;->rawResult:Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;->onFetchQrCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v1}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/v;->a()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cZ:I

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/cq;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->e(Lcom/netease/mpay/codescanner/e;)Lcom/netease/codescanner/CodeScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/codescanner/CodeScanner;->resumeDecode()V

    goto/16 :goto_0
.end method

.method public onFatalError()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->e(Lcom/netease/mpay/codescanner/e;)Lcom/netease/codescanner/CodeScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/codescanner/CodeScanner;->pause()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->f(Lcom/netease/mpay/codescanner/e;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Ljava/lang/String;Z)V

    return-void
.end method

.method protected onInitialized()V
    .locals 8

    const/16 v4, 0x5a

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aH:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->aI:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    iget-object v3, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$f;->aJ:I

    invoke-static {v3, v0, v4}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Landroid/view/View;I)I

    move-result v3

    iget-object v4, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$f;->aJ:I

    invoke-static {v4, v0, v5}, Lcom/netease/mpay/codescanner/e;->b(Lcom/netease/mpay/codescanner/e;Landroid/view/View;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsets = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v5}, Lcom/netease/mpay/codescanner/e;->e(Lcom/netease/mpay/codescanner/e;)Lcom/netease/codescanner/CodeScanner;

    move-result-object v5

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v2, v6

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {v5, v3, v4, v2, v0}, Lcom/netease/codescanner/CodeScanner;->setPreviewMask(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->e(Lcom/netease/mpay/codescanner/e;)Lcom/netease/codescanner/CodeScanner;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v3, v4}, Lcom/netease/codescanner/CodeScanner;->setPreviewMask(IIII)V

    goto :goto_0
.end method
