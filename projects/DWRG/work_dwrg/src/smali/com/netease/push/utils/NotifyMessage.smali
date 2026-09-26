.class public Lcom/netease/push/utils/NotifyMessage;
.super Ljava/lang/Object;
.source "NotifyMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netease/push/utils/NotifyMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mExt:Ljava/lang/String;

.field public mIcon:I

.field public mMsg:Ljava/lang/String;

.field public mNative:Z

.field public mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/push/utils/NotifyMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/push/utils/NotifyMessage;->TAG:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/netease/push/utils/NotifyMessage$1;

    invoke-direct {v0}, Lcom/netease/push/utils/NotifyMessage$1;-><init>()V

    sput-object v0, Lcom/netease/push/utils/NotifyMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/push/utils/NotifyMessage;->mNative:Z

    .line 63
    invoke-virtual {p0}, Lcom/netease/push/utils/NotifyMessage;->clear()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/push/utils/NotifyMessage;->mNative:Z

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/push/utils/NotifyMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/push/utils/NotifyMessage;->mNative:Z

    .line 48
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "ext"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/push/utils/NotifyMessage;->mNative:Z

    .line 53
    iput-object p1, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static getFrom(Landroid/app/Activity;)Lcom/netease/push/utils/NotifyMessage;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/push/utils/NotifyMessage;->getFrom(Landroid/content/Intent;)Lcom/netease/push/utils/NotifyMessage;

    move-result-object v0

    return-object v0
.end method

.method public static getFrom(Landroid/content/Intent;)Lcom/netease/push/utils/NotifyMessage;
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    sget-object v9, Lcom/netease/push/utils/NotifyMessage;->TAG:Ljava/lang/String;

    const-string v10, "getFrom"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v9, "NOTIFICATION_TITLE"

    invoke-virtual {p0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "title":Ljava/lang/String;
    const-string v9, "NOTIFICATION_MESSAGE"

    invoke-virtual {p0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "msg":Ljava/lang/String;
    const-string v9, "NOTIFICATION_EXT"

    invoke-virtual {p0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "ext":Ljava/lang/String;
    const-string v9, "NOTIFICATION_ICON"

    const/4 v10, -0x1

    invoke-virtual {p0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 149
    .local v4, "icon":I
    sget-object v9, Lcom/netease/push/utils/NotifyMessage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "title="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v9, Lcom/netease/push/utils/NotifyMessage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "msg="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v9, Lcom/netease/push/utils/NotifyMessage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ext="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v9, Lcom/netease/push/utils/NotifyMessage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "icon="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v7, 0x0

    .line 154
    .local v7, "notify":Lcom/netease/push/utils/NotifyMessage;
    if-eqz v8, :cond_0

    if-nez v6, :cond_1

    .line 156
    :cond_0
    :try_start_0
    const-string v9, "com.netease.inner.pushclient.miui.MiuiPushClient"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 157
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "getNotifyMessageFromIntent"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Intent;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 158
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/netease/push/utils/NotifyMessage;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    if-nez v7, :cond_2

    .line 165
    new-instance v7, Lcom/netease/push/utils/NotifyMessage;

    .end local v7    # "notify":Lcom/netease/push/utils/NotifyMessage;
    invoke-direct {v7, v6, v8, v3}, Lcom/netease/push/utils/NotifyMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .restart local v7    # "notify":Lcom/netease/push/utils/NotifyMessage;
    :cond_2
    iput v4, v7, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    .line 168
    return-object v7

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    sget-object v9, Lcom/netease/push/utils/NotifyMessage;->TAG:Ljava/lang/String;

    const-string v10, "MiPush_SDK_Client jars not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/netease/push/utils/NotifyMessage;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public static readFromJsonString(Ljava/lang/String;)Lcom/netease/push/utils/NotifyMessage;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "title"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "title":Ljava/lang/String;
    const-string v6, "content"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "content":Ljava/lang/String;
    const-string v6, "ext"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "ext":Ljava/lang/String;
    const-string v6, "icon"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 94
    .local v2, "icon":I
    new-instance v4, Lcom/netease/push/utils/NotifyMessage;

    invoke-direct {v4, v0, v5, v1}, Lcom/netease/push/utils/NotifyMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .local v4, "notify":Lcom/netease/push/utils/NotifyMessage;
    iput v2, v4, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    .line 96
    return-object v4
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/push/utils/NotifyMessage;->mNative:Z

    .line 71
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToJsonString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "title"

    iget-object v2, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "content"

    iget-object v2, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "ext"

    iget-object v2, p0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "icon"

    iget v2, p0, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return-void
.end method
