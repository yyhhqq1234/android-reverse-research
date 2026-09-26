.class public Lcom/netease/cloud/nos/android/core/WanNOSObject;
.super Ljava/lang/Object;
.source "WanNOSObject.java"


# instance fields
.field private contentMD5:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private nosBucketName:Ljava/lang/String;

.field private nosObjectName:Ljava/lang/String;

.field private uploadToken:Ljava/lang/String;

.field private userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "uploadToken"    # Ljava/lang/String;
    .param p2, "nosBucketName"    # Ljava/lang/String;
    .param p3, "nosObjectName"    # Ljava/lang/String;
    .param p4, "contentMD5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p5, "userMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->uploadToken:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->nosBucketName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->nosObjectName:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->contentMD5:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->userMetadata:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public getContentMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->contentMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getNosBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->nosBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getNosObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->nosObjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->uploadToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->userMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentMD5"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->contentMD5:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->contentType:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setNosBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nosBucketName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->nosBucketName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setNosObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nosObjectName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->nosObjectName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUploadToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadToken"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->uploadToken:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setUserMetadata(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "userMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/WanNOSObject;->userMetadata:Ljava/util/Map;

    .line 50
    return-void
.end method
