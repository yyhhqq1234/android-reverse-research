.class public Lcom/tencent/msdk/weixin/MsgImage;
.super Lcom/tencent/msdk/weixin/MsgBase;
.source "MsgImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/weixin/MsgImage$Image;
    }
.end annotation


# static fields
.field private static final MSG_TYPE:Ljava/lang/String; = "image"

.field private static sDefaultHeight:I

.field private static sDefaultPicUrl:Ljava/lang/String;

.field private static sDefaultWidth:I


# instance fields
.field private final MSG_KEY:Ljava/lang/String;

.field private mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput v0, Lcom/tencent/msdk/weixin/MsgImage;->sDefaultWidth:I

    .line 14
    sput v0, Lcom/tencent/msdk/weixin/MsgImage;->sDefaultHeight:I

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/weixin/MsgImage;->sDefaultPicUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "image"

    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/MsgBase;-><init>(Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "type_info"

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgImage;->MSG_KEY:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/weixin/MsgImage$Image;-><init>(Lcom/tencent/msdk/weixin/MsgImage;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    .line 25
    sget-object v0, Lcom/tencent/msdk/weixin/MsgImage;->sDefaultPicUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/MsgImage;->setmPicUrl(Ljava/lang/String;)V

    .line 26
    sget v0, Lcom/tencent/msdk/weixin/MsgImage;->sDefaultHeight:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/MsgImage;->setmHeight(I)V

    .line 27
    sget v0, Lcom/tencent/msdk/weixin/MsgImage;->sDefaultWidth:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/MsgImage;->setmWidth(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "height"    # I
    .param p3, "width"    # I

    .prologue
    .line 18
    const-string v0, "image"

    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/MsgBase;-><init>(Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "type_info"

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgImage;->MSG_KEY:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/weixin/MsgImage$Image;-><init>(Lcom/tencent/msdk/weixin/MsgImage;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    .line 19
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/weixin/MsgImage;->setmPicUrl(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/tencent/msdk/weixin/MsgImage;->setmHeight(I)V

    .line 21
    invoke-virtual {p0, p3}, Lcom/tencent/msdk/weixin/MsgImage;->setmWidth(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public checkParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Lcom/tencent/msdk/weixin/MsgBase;->checkParam()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/MsgImage$Image;->access$200(Lcom/tencent/msdk/weixin/MsgImage$Image;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPicUrl cann\'t be Empty;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/MsgImage$Image;->access$100(Lcom/tencent/msdk/weixin/MsgImage$Image;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHeihgt cann\'t be a nagtive number;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/MsgImage$Image;->access$000(Lcom/tencent/msdk/weixin/MsgImage$Image;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mWidth cann\'t be a nagtive number;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getMsgKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "type_info"

    return-object v0
.end method

.method public setmHeight(I)V
    .locals 1
    .param p1, "mHeihgt"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/MsgImage$Image;->setmHeight(I)V

    .line 63
    return-void
.end method

.method public setmPicUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "mPicUrl"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/MsgImage$Image;->setmPicUrl(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setmWidth(I)V
    .locals 1
    .param p1, "mWidth"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/MsgImage$Image;->setmWidth(I)V

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 69
    .local v1, "js":Lorg/json/JSONStringer;
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "picurl"

    .line 70
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/MsgImage$Image;->access$200(Lcom/tencent/msdk/weixin/MsgImage$Image;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "height"

    .line 71
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/MsgImage$Image;->access$100(Lcom/tencent/msdk/weixin/MsgImage$Image;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string/jumbo v3, "width"

    .line 72
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/MsgImage;->mImage:Lcom/tencent/msdk/weixin/MsgImage$Image;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/MsgImage$Image;->access$000(Lcom/tencent/msdk/weixin/MsgImage$Image;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 74
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    .end local v1    # "js":Lorg/json/JSONStringer;
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    const-string v2, ""

    goto :goto_0
.end method
