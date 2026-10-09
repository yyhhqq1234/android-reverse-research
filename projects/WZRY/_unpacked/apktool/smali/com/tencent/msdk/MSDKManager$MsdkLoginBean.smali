.class public Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
.super Ljava/lang/Object;
.source "MSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/MSDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsdkLoginBean"
.end annotation


# static fields
.field public static final TYPE_QQ:I = 0x2

.field public static final TYPE_WX:I = 0x1


# instance fields
.field public msdkAcessToken:Ljava/lang/String;

.field public msdkAppID:Ljava/lang/String;

.field public msdkLoginType:I

.field public msdkOpenID:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/msdk/MSDKManager;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/MSDKManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tencent/msdk/MSDKManager;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->this$0:Lcom/tencent/msdk/MSDKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkLoginType:I

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAppID:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkOpenID:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAcessToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msdkLoginType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkLoginType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msdkAppID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAppID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msdkOpenID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkOpenID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msdkAcessToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAcessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public validated()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAppID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkOpenID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAcessToken:Ljava/lang/String;

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
