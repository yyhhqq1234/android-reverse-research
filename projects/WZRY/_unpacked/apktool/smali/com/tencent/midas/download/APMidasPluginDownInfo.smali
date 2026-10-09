.class public Lcom/tencent/midas/download/APMidasPluginDownInfo;
.super Ljava/lang/Object;
.source "APMidasPluginDownInfo.java"


# instance fields
.field public diff_md5:Ljava/lang/String;

.field public down_url:Ljava/lang/String;

.field public full_url:Ljava/lang/String;

.field public fullsize:I

.field public is_force:Z

.field public is_split:Z

.field public name:Ljava/lang/String;

.field public new_md5_decode:Ljava/lang/String;

.field public new_md5_encode:Ljava/lang/String;

.field public old_md5:Ljava/lang/String;

.field public size:I

.field public split_download_url:Ljava/lang/String;

.field public update_version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->is_split:Z

    .line 23
    iput-boolean v1, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->is_force:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->new_md5_encode:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->new_md5_decode:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->size:I

    .line 37
    iput v1, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->fullsize:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->down_url:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->full_url:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->is_split:Z

    .line 41
    iput-boolean v1, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->is_force:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->old_md5:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->diff_md5:Ljava/lang/String;

    .line 44
    iput v1, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->update_version:I

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 49
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    instance-of v2, p1, Lcom/tencent/midas/download/APMidasPluginDownInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;

    .line 58
    .local v0, "info":Lcom/tencent/midas/download/APMidasPluginDownInfo;
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x1

    .line 64
    .local v0, "result":I
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
