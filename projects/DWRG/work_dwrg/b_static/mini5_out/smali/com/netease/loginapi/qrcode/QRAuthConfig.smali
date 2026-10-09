.class public Lcom/netease/loginapi/qrcode/QRAuthConfig;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/netease/loginapi/expose/Reserved;


# static fields
.field public static final SOURCE_AUTO:I = 0x3

.field public static final SOURCE_EXTERNAL:I = 0x2

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final serialVersionUID:J = -0x4017ad3ad889a674L


# instance fields
.field public barcodeSceneMode:Z

.field public continueFocus:Z

.field public exposure:Z

.field public invertScan:Z

.field public metering:Z

.field public tokenBundles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/loginapi/qrcode/TokenBundle;",
            ">;"
        }
    .end annotation
.end field

.field public tokenSource:I

.field public useAutoFocus:Z

.field public useTorch:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->useAutoFocus:Z

    .line 21
    iput-boolean v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->continueFocus:Z

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->useTorch:Z

    .line 23
    iput-boolean v1, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->invertScan:Z

    .line 24
    iput-boolean v1, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->barcodeSceneMode:Z

    .line 25
    iput-boolean v1, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->metering:Z

    .line 26
    iput-boolean v1, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->exposure:Z

    .line 28
    iput v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->tokenSource:I

    return-void
.end method


# virtual methods
.method public continueFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->continueFocus:Z

    return v0
.end method

.method public getTokenBundles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/loginapi/qrcode/TokenBundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->tokenBundles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTokenSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->tokenSource:I

    return v0
.end method

.method public isBarcodeSceneModeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->barcodeSceneMode:Z

    return v0
.end method

.method public isExposureEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->exposure:Z

    return v0
.end method

.method public isMeteringEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->metering:Z

    return v0
.end method

.method public setExternalTokens(Ljava/util/ArrayList;)Lcom/netease/loginapi/qrcode/QRAuthConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/loginapi/qrcode/TokenBundle;",
            ">;)",
            "Lcom/netease/loginapi/qrcode/QRAuthConfig;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->tokenSource:I

    .line 2
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->tokenBundles:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setTokenSource(I)Lcom/netease/loginapi/qrcode/QRAuthConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->tokenSource:I

    return-object p0
.end method

.method public startCapture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/netease/loginapi/qrcode/URSCaptureActivity;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    const-class p3, Lcom/netease/loginapi/qrcode/QRAuthConfig;

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p3, "product_flag"

    .line 3
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public useAutoFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->useAutoFocus:Z

    return v0
.end method

.method public useInvertScan()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->invertScan:Z

    return v0
.end method

.method public useTorch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/QRAuthConfig;->useTorch:Z

    return v0
.end method
