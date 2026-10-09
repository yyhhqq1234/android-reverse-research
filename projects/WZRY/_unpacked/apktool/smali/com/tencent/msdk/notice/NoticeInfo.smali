.class public Lcom/tencent/msdk/notice/NoticeInfo;
.super Ljava/lang/Object;
.source "NoticeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/msdk/notice/NoticeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAppId:Ljava/lang/String;

.field public mNoticeContent:Ljava/lang/String;

.field public mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

.field public mNoticeContentWebUrl:Ljava/lang/String;

.field public mNoticeCustom:Ljava/lang/String;

.field public mNoticeEndTime:Ljava/lang/String;

.field public mNoticeHImgHash:Ljava/lang/String;

.field public mNoticeHImgUrl:Ljava/lang/String;

.field public mNoticeId:Ljava/lang/String;

.field public mNoticeOrder:Ljava/lang/String;

.field public mNoticePics:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/notice/NoticePic;",
            ">;"
        }
    .end annotation
.end field

.field public mNoticeScene:Ljava/lang/String;

.field public mNoticeStartTime:Ljava/lang/String;

.field public mNoticeTitle:Ljava/lang/String;

.field public mNoticeType:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

.field public mNoticeUpdateTime:Ljava/lang/String;

.field public mNoticeUrl:Ljava/lang/String;

.field public mNoticeVImgHash:Ljava/lang/String;

.field public mNoticeVImgUrl:Ljava/lang/String;

.field public mOpenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/tencent/msdk/notice/NoticeInfo$1;

    invoke-direct {v0}, Lcom/tencent/msdk/notice/NoticeInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/msdk/notice/NoticeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mAppId:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mOpenId:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeScene:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeStartTime:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeEndTime:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUpdateTime:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeOrder:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeTitle:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContent:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticePics:Ljava/util/Vector;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentWebUrl:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeCustom:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mAppId:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mOpenId:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeScene:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeStartTime:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeEndTime:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUpdateTime:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeOrder:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeTitle:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContent:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticePics:Ljava/util/Vector;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentWebUrl:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeCustom:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mAppId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mOpenId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;->getEnum(I)Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeScene:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeStartTime:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeEndTime:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUpdateTime:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->getEnum(I)Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeType:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeTitle:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContent:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentWebUrl:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeCustom:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseInfoFromJson(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v6, "msgid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    .line 149
    const-string v6, "appid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mAppId:Ljava/lang/String;

    .line 150
    const-string v6, "openid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mOpenId:Ljava/lang/String;

    .line 151
    const-string v6, "msgUrl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    .line 152
    const-string v6, "noticeType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->getEnum(I)Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeType:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .line 153
    const-string v6, "scene"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeScene:Ljava/lang/String;

    .line 154
    const-string v6, "beginTime"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeStartTime:Ljava/lang/String;

    .line 155
    const-string v6, "endTime"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeEndTime:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUpdateTime:Ljava/lang/String;

    .line 158
    const-string v6, "contentType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;->getEnum(I)Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    .line 159
    const-string/jumbo v6, "title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeTitle:Ljava/lang/String;

    .line 160
    const-string v6, "msgContent"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContent:Ljava/lang/String;

    .line 161
    const-string v6, "order"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeOrder:Ljava/lang/String;

    .line 162
    const-string v6, "custom"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeCustom:Ljava/lang/String;

    .line 163
    const-string v6, "picUrlList"

    invoke-virtual {p0, p1, v6}, Lcom/tencent/msdk/notice/NoticeInfo;->getJSONArrayInfoFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 165
    .local v2, "picList":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 166
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 167
    .local v4, "subJson":Lorg/json/JSONObject;
    const-string v6, "screenDir"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 168
    const-string v6, "screenDir"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 169
    .local v3, "screenDir":I
    invoke-static {v3}, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->getEnum(I)Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    move-result-object v5

    .line 170
    .local v5, "temEMSDK_SCREENDIR":Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    sget-object v6, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    if-ne v6, v5, :cond_1

    .line 171
    const-string v6, "picUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    .line 172
    const-string v6, "hashValue"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    .line 165
    .end local v3    # "screenDir":I
    .end local v5    # "temEMSDK_SCREENDIR":Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    .restart local v3    # "screenDir":I
    .restart local v5    # "temEMSDK_SCREENDIR":Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    :cond_1
    const-string v6, "picUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    .line 175
    const-string v6, "hashValue"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 181
    .end local v3    # "screenDir":I
    .end local v4    # "subJson":Lorg/json/JSONObject;
    .end local v5    # "temEMSDK_SCREENDIR":Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "JSONException"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v6, "contentUrl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentWebUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 178
    .restart local v4    # "subJson":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string v6, "Error picList, no screen dir"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getJSONArrayInfoFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    const-string v2, "json key is empty"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 226
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 236
    :cond_0
    :goto_0
    return-object v1

    .line 228
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 230
    .local v1, "valueArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUsableContentValues(Lcom/tencent/msdk/db/NoticeDBModel;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "noticeDBModel"    # Lcom/tencent/msdk/db/NoticeDBModel;

    .prologue
    .line 121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_app_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_open_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mOpenId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_type:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeType:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    invoke-virtual {v2}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->val()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_scene:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeScene:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_start_time:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeStartTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_end_time:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeEndTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_update_time:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUpdateTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_content_type:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    invoke-virtual {v2}, Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;->val()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_content:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_horizontal_img_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_horizontal_img_hash:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_vertical_img_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_vertical_img_hash:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_web_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentWebUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_order:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeOrder:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_custom:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeCustom:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->putValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mOpenId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    invoke-virtual {v0}, Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;->val()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeScene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeStartTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeEndTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUpdateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeType:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    invoke-virtual {v0}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->val()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentWebUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeCustom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return-void
.end method
