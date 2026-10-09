.class Lcom/netease/dwrg/SdkUtils$1;
.super Ljava/lang/Object;
.source "SdkUtils.java"

# interfaces
.implements Lcom/bytedance/hume/readapk/IApkPathFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/SdkUtils;->getAttributionExFromApk(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchApkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object p1
.end method
