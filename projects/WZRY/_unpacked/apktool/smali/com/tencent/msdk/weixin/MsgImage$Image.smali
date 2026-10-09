.class Lcom/tencent/msdk/weixin/MsgImage$Image;
.super Ljava/lang/Object;
.source "MsgImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/weixin/MsgImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Image"
.end annotation


# instance fields
.field private mHeight:I

.field private mPicUrl:Ljava/lang/String;

.field private mWidth:I

.field final synthetic this$0:Lcom/tencent/msdk/weixin/MsgImage;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/weixin/MsgImage;)V
    .locals 2
    .param p1, "this$0"    # Lcom/tencent/msdk/weixin/MsgImage;

    .prologue
    const/4 v1, 0x0

    .line 35
    iput-object p1, p0, Lcom/tencent/msdk/weixin/MsgImage$Image;->this$0:Lcom/tencent/msdk/weixin/MsgImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgImage$Image;->mPicUrl:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/tencent/msdk/weixin/MsgImage$Image;->mWidth:I

    .line 38
    iput v1, p0, Lcom/tencent/msdk/weixin/MsgImage$Image;->mHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/weixin/MsgImage$Image;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/MsgImage$Image;

    .prologue
    .line 35
    iget v0, p0, Lcom/tencent/msdk/weixin/MsgImage$Image;->mWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/msdk/weixin/MsgImage$Image;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/MsgImage$Image;

    .prologue
    .line 35
    iget v0, p0, Lcom/tencent/msdk/weixin/MsgImage$Image;->mHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/msdk/weixin/MsgImage$Image;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/MsgImage$Image;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgImage$Image;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setmHeight(I)V
    .locals 0
    .param p1, "mHeight"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/tencent/msdk/weixin/MsgImage$Image;->mHeight:I

    .line 50
    return-void
.end method

.method public setmPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPicUrl"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tencent/msdk/weixin/MsgImage$Image;->mPicUrl:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setmWidth(I)V
    .locals 0
    .param p1, "mWidth"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/tencent/msdk/weixin/MsgImage$Image;->mWidth:I

    .line 46
    return-void
.end method
