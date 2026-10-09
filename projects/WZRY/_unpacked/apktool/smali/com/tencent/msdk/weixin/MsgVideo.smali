.class public Lcom/tencent/msdk/weixin/MsgVideo;
.super Lcom/tencent/msdk/weixin/MsgBase;
.source "MsgVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/weixin/MsgVideo$Video;
    }
.end annotation


# static fields
.field private static sDefaultHeight:I = 0x0

.field private static sDefaultMediaUrl:Ljava/lang/String; = null

.field private static sDefaultPicUrl:Ljava/lang/String; = null

.field private static sDefaultWidth:I = 0x0

.field private static final sMSG_KEY:Ljava/lang/String; = "type_info"

.field private static final sMSG_TYPE:Ljava/lang/String; = "video"


# instance fields
.field private mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput v0, Lcom/tencent/msdk/weixin/MsgVideo;->sDefaultWidth:I

    .line 14
    sput v0, Lcom/tencent/msdk/weixin/MsgVideo;->sDefaultHeight:I

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/weixin/MsgVideo;->sDefaultPicUrl:Ljava/lang/String;

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/weixin/MsgVideo;->sDefaultMediaUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "video"

    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/MsgBase;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/tencent/msdk/weixin/MsgVideo$Video;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/weixin/MsgVideo$Video;-><init>(Lcom/tencent/msdk/weixin/MsgVideo;Lcom/tencent/msdk/weixin/MsgVideo$1;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    .line 29
    sget-object v0, Lcom/tencent/msdk/weixin/MsgVideo;->sDefaultMediaUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/MsgVideo;->setmMediaUrl(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/tencent/msdk/weixin/MsgVideo;->sDefaultPicUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/MsgVideo;->setmPicUrl(Ljava/lang/String;)V

    .line 31
    sget v0, Lcom/tencent/msdk/weixin/MsgVideo;->sDefaultHeight:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/MsgVideo;->setmHeight(I)V

    .line 32
    sget v0, Lcom/tencent/msdk/weixin/MsgVideo;->sDefaultWidth:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/MsgVideo;->setmWidth(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "mediaUrl"    # Ljava/lang/String;
    .param p3, "height"    # I
    .param p4, "width"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/MsgVideo;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/weixin/MsgVideo;->setmPicUrl(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/tencent/msdk/weixin/MsgVideo;->setmMediaUrl(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p3}, Lcom/tencent/msdk/weixin/MsgVideo;->setmHeight(I)V

    .line 25
    invoke-virtual {p0, p4}, Lcom/tencent/msdk/weixin/MsgVideo;->setmWidth(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public checkParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/tencent/msdk/weixin/MsgBase;->checkParam()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->access$300(Lcom/tencent/msdk/weixin/MsgVideo$Video;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPicUrl cann\'t be Empty;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->access$400(Lcom/tencent/msdk/weixin/MsgVideo$Video;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMediaUrl cann\'t be Empty;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->access$100(Lcom/tencent/msdk/weixin/MsgVideo$Video;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHeihgt cann\'t be a nagtive number;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->access$200(Lcom/tencent/msdk/weixin/MsgVideo$Video;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mWidth cann\'t be a nagtive number;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getMsgKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "type_info"

    return-object v0
.end method

.method public setmHeight(I)V
    .locals 1
    .param p1, "mHeight"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->setmHeight(I)V

    .line 108
    return-void
.end method

.method public setmMediaUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "mMediaurl"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->setmMediaurl(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setmPicUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "mPicUrl"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->setmPicUrl(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setmWidth(I)V
    .locals 1
    .param p1, "mWidth"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->setmWidth(I)V

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 62
    .local v1, "js":Lorg/json/JSONStringer;
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "mediaurl"

    .line 63
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->access$400(Lcom/tencent/msdk/weixin/MsgVideo$Video;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "picurl"

    .line 64
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->access$300(Lcom/tencent/msdk/weixin/MsgVideo$Video;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string/jumbo v3, "width"

    .line 65
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->access$200(Lcom/tencent/msdk/weixin/MsgVideo$Video;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "height"

    .line 66
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/MsgVideo;->mVideo:Lcom/tencent/msdk/weixin/MsgVideo$Video;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/MsgVideo$Video;->access$100(Lcom/tencent/msdk/weixin/MsgVideo$Video;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 68
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 71
    .end local v1    # "js":Lorg/json/JSONStringer;
    :goto_0
    return-object v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    const-string v2, ""

    goto :goto_0
.end method
