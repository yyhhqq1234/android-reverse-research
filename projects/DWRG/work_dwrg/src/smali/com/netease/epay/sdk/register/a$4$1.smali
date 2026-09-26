.class Lcom/netease/epay/sdk/register/a$4$1;
.super Ljava/lang/Object;
.source "RegisterDeviceRequest.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/register/a$4;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;

.field final synthetic b:Lcom/netease/epay/sdk/register/a$4;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/register/a$4;Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/netease/epay/sdk/register/a$4$1;->b:Lcom/netease/epay/sdk/register/a$4;

    iput-object p2, p0, Lcom/netease/epay/sdk/register/a$4$1;->a:Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "infos"    # Ljava/lang/String;

    .prologue
    .line 214
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a$4$1;->b:Lcom/netease/epay/sdk/register/a$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/register/a$4;->a:Lcom/netease/epay/sdk/register/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/register/a;->e(Lcom/netease/epay/sdk/register/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "epaysdk_st_lic_file_mdwu"

    iget-object v2, p0, Lcom/netease/epay/sdk/register/a$4$1;->a:Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;->getLicenceMd5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/SharedPreferencesUtil;->writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method
