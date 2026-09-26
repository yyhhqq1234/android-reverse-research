.class Lcom/netease/epay/sdk/register/a$4;
.super Lcom/netease/epay/sdk/NetCallback;
.source "RegisterDeviceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/register/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/register/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/register/a;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/netease/epay/sdk/register/a$4;->a:Lcom/netease/epay/sdk/register/a;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;)V
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p2}, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;->getLicenceDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/epay/sdk/register/a$4;->a:Lcom/netease/epay/sdk/register/a;

    invoke-static {v2}, Lcom/netease/epay/sdk/register/a;->e(Lcom/netease/epay/sdk/register/a;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SenseID_OCR.lic"

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/base/util/FileUtil;->getExternalFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/FileUtil;->getMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SenseID_OCR md5:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/epay/sdk/base/util/LogUtil;->d(Ljava/lang/String;)V

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net lic md5:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;->getLicenceMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/epay/sdk/base/util/LogUtil;->d(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;->getLicenceMd5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    invoke-virtual {p2}, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;->getLicenceMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 204
    :cond_0
    new-instance v2, Lcom/netease/epay/sdk/base/network/FileDownloader;

    invoke-direct {v2}, Lcom/netease/epay/sdk/base/network/FileDownloader;-><init>()V

    new-instance v3, Lcom/netease/epay/sdk/register/a$4$1;

    invoke-direct {v3, p0, p2}, Lcom/netease/epay/sdk/register/a$4$1;-><init>(Lcom/netease/epay/sdk/register/a$4;Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/netease/epay/sdk/base/network/FileDownloader;->start(Ljava/lang/String;Ljava/io/File;Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;)V

    .line 217
    :cond_1
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 190
    check-cast p2, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/register/a$4;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;)V

    return-void
.end method
