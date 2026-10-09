.class public Lcom/tencent/msdk/communicator/MHttpResponse;
.super Ljava/lang/Object;
.source "MHttpResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/msdk/communicator/MHttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final HTTP_CPROTOCOL_EXCEPTION:I = 0xbbe

.field public static final HTTP_ILLEGAL_ARGUMENT:I = 0xbbc

.field public static final HTTP_ILLEGAL_STATE:I = 0xbba

.field public static final HTTP_IO_EXCEPTION:I = 0xbbb

.field public static final HTTP_OTHER_ERROR:I = 0xbb8

.field public static final HTTP_PARAMS_ERROR:I = 0x3ee

.field public static final HTTP_RETURN_NULL_VALUE:I = 0x3ea

.field public static final HTTP_SOCKET_EXCEPTION:I = 0xbbd

.field public static final HTTP_SOCKET_TIME_OUT:I = 0xbc0

.field public static final HTTP_SUCCESS:I = 0xc8

.field public static final HTTP_TIME_OUT:I = 0xbb9

.field public static final HTTP_UNKNOWN_HOST:I = 0xbbf


# instance fields
.field private body:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/tencent/msdk/communicator/MHttpResponse$1;

    invoke-direct {v0}, Lcom/tencent/msdk/communicator/MHttpResponse$1;-><init>()V

    sput-object v0, Lcom/tencent/msdk/communicator/MHttpResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->status:I

    .line 28
    iput-object p2, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->msg:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->body:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->status:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->msg:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "bodyLength":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->body:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->status:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->body:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->msg:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->status:I

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 87
    iget v0, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpResponse;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return-void
.end method
