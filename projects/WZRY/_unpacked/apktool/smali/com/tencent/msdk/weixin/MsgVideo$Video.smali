.class Lcom/tencent/msdk/weixin/MsgVideo$Video;
.super Ljava/lang/Object;
.source "MsgVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/weixin/MsgVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Video"
.end annotation


# instance fields
.field private mHeight:I

.field private mMediaUrl:Ljava/lang/String;

.field private mPicUrl:Ljava/lang/String;

.field private mWidth:I

.field final synthetic this$0:Lcom/tencent/msdk/weixin/MsgVideo;


# direct methods
.method private constructor <init>(Lcom/tencent/msdk/weixin/MsgVideo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    iput-object p1, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->this$0:Lcom/tencent/msdk/weixin/MsgVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mPicUrl:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mWidth:I

    .line 38
    iput v1, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mHeight:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mMediaUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/msdk/weixin/MsgVideo;Lcom/tencent/msdk/weixin/MsgVideo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/msdk/weixin/MsgVideo;
    .param p2, "x1"    # Lcom/tencent/msdk/weixin/MsgVideo$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/MsgVideo$Video;-><init>(Lcom/tencent/msdk/weixin/MsgVideo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/weixin/MsgVideo$Video;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/MsgVideo$Video;

    .prologue
    .line 35
    iget v0, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/msdk/weixin/MsgVideo$Video;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/MsgVideo$Video;

    .prologue
    .line 35
    iget v0, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/msdk/weixin/MsgVideo$Video;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/MsgVideo$Video;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/msdk/weixin/MsgVideo$Video;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/MsgVideo$Video;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mMediaUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setmHeight(I)V
    .locals 0
    .param p1, "mHeight"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mHeight:I

    .line 51
    return-void
.end method

.method public setmMediaurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMediaurl"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mMediaUrl:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setmPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPicUrl"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mPicUrl:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setmWidth(I)V
    .locals 0
    .param p1, "mWidth"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/tencent/msdk/weixin/MsgVideo$Video;->mWidth:I

    .line 47
    return-void
.end method
