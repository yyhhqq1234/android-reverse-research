.class Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;
.super Ljava/lang/Object;
.source "MyPostEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/MyPostEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileForm"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public file:Ljava/io/File;

.field public isFile:Z

.field final synthetic this$0:Lcom/netease/androidcrashhandler/MyPostEntity;

.field public uploadType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p2, "file"    # Ljava/io/File;
    .param p3, "uploadType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 73
    iput-object p1, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->this$0:Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->isFile:Z

    .line 48
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->content:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->file:Ljava/io/File;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->isFile:Z

    .line 75
    iput-object p2, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->file:Ljava/io/File;

    .line 76
    iput-object p3, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->uploadType:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "uploadType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 62
    iput-object p1, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->this$0:Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->isFile:Z

    .line 48
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->content:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->file:Ljava/io/File;

    .line 63
    iput-object p2, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->content:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->uploadType:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->file:Ljava/io/File;

    return-object v0
.end method

.method public getUploadType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->uploadType:Ljava/lang/String;

    return-object v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->isFile:Z

    return v0
.end method
