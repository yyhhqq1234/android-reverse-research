.class final Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;
.super Ljava/lang/Object;
.source "ImgManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->uploadImg(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imgUri:Ljava/lang/Object;

.field final synthetic val$listener:Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;

.field final synthetic val$upInfo:Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$imgUri:Ljava/lang/Object;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$upInfo:Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;

    iput-object p4, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$listener:Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 45
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$imgUri:Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$upInfo:Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;

    iget v3, v3, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->size:I

    invoke-static {v1, v2, v3}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->access$000(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "imgFilePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "gm_bridge ImgManager"

    const-string v2, "can\'t ge a suitable img,it\'s over"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$listener:Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$upInfo:Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;

    iget-object v3, v3, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->access$100(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v1, "gm_bridge ImgManager"

    const-string v2, "img file path = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$upInfo:Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;->val$listener:Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->access$200(Ljava/lang/String;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V

    goto :goto_0
.end method
