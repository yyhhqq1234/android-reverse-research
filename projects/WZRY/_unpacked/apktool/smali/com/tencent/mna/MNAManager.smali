.class public Lcom/tencent/mna/MNAManager;
.super Ljava/lang/Object;
.source "MNAManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/content/Context;Ljava/lang/String;ZIZZ)I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 17
    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/tencent/mna/MNAPlatform;->MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZLjava/lang/String;)V

    .line 19
    if-eqz p5, :cond_0

    .line 20
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/mna/base/f/p;->a(Landroid/content/Context;Z)I

    move-result v5

    .line 22
    :cond_0
    return v5
.end method

.method public static QueryKartin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatform;->MNAQueryKartin(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static SetObserver(Lcom/tencent/mna/GHObserver;)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatform;->MNASetGHObserver(Lcom/tencent/mna/GHObserver;)V

    .line 27
    return-void
.end method

.method public static SetUserName(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatform;->MNASetUserName(ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public static StartWifiActivity(Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/tencent/mna/base/f/p;->a(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method
