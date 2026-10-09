.class public Lcom/subao/common/intf/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/subao/common/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/subao/common/intf/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appId:Ljava/lang/String;

.field private final token:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/subao/common/intf/UserInfo$1;

    invoke-direct {v0}, Lcom/subao/common/intf/UserInfo$1;-><init>()V

    sput-object v0, Lcom/subao/common/intf/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/subao/common/intf/UserInfo;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/intf/UserInfo;->userId:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/subao/common/intf/UserInfo;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/intf/UserInfo;->token:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/subao/common/intf/UserInfo;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/intf/UserInfo;->appId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/subao/common/intf/UserInfo$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/subao/common/intf/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/subao/common/intf/UserInfo;->userId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/subao/common/intf/UserInfo;->token:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/subao/common/intf/UserInfo;->appId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    instance-of v2, p1, Lcom/subao/common/intf/UserInfo;

    if-eqz v2, :cond_0

    .line 95
    check-cast p1, Lcom/subao/common/intf/UserInfo;

    .line 96
    iget-object v2, p0, Lcom/subao/common/intf/UserInfo;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/intf/UserInfo;->userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/intf/UserInfo;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/intf/UserInfo;->token:Ljava/lang/String;

    .line 97
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/intf/UserInfo;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/intf/UserInfo;->appId:Ljava/lang/String;

    .line 98
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/subao/common/intf/UserInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/subao/common/intf/UserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/subao/common/intf/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 104
    const-string/jumbo v0, "userId"

    iget-object v1, p0, Lcom/subao/common/intf/UserInfo;->userId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 105
    const-string/jumbo v0, "token"

    iget-object v1, p0, Lcom/subao/common/intf/UserInfo;->token:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 106
    const-string v0, "appId"

    iget-object v1, p0, Lcom/subao/common/intf/UserInfo;->appId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 107
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    const-string v0, "[UserInfo: %s, %s, %s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/subao/common/intf/UserInfo;->userId:Ljava/lang/String;

    .line 79
    invoke-static {v3}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/subao/common/intf/UserInfo;->token:Ljava/lang/String;

    .line 80
    invoke-static {v3}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/subao/common/intf/UserInfo;->appId:Ljava/lang/String;

    .line 81
    invoke-static {v3}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 78
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/subao/common/intf/UserInfo;->userId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/subao/common/intf/UserInfo;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/subao/common/intf/UserInfo;->token:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/subao/common/intf/UserInfo;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/subao/common/intf/UserInfo;->appId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/subao/common/intf/UserInfo;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 120
    return-void
.end method
