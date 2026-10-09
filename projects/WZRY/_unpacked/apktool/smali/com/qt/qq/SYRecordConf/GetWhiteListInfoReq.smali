.class public final Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;
.super Lcom/squareup/wire/Message;
.source "GetWhiteListInfoReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACCESS_TOKEN:Lokio/ByteString;

.field public static final DEFAULT_CPU_VERSION:Lokio/ByteString;

.field public static final DEFAULT_GPU_VERSION:Lokio/ByteString;

.field public static final DEFAULT_OPENID:Lokio/ByteString;

.field public static final DEFAULT_OS_VERSION:Lokio/ByteString;

.field public static final DEFAULT_PHONE_TYPE:Lokio/ByteString;

.field public static final DEFAULT_PKG_NAME:Lokio/ByteString;

.field public static final DEFAULT_PLUGIN_VERSION:Lokio/ByteString;

.field public static final DEFAULT_QQAPPID:Ljava/lang/Long;

.field public static final DEFAULT_SDK_VERSION:Lokio/ByteString;

.field public static final DEFAULT_SOURCE:Ljava/lang/Integer;

.field public static final DEFAULT_USER_ID:Lokio/ByteString;


# instance fields
.field public final access_token:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cpu_version:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final gpu_version:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final openid:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final os_version:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final phone_type:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pkg_name:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final plugin_version:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final qqappid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sdk_version:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final source:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_id:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_USER_ID:Lokio/ByteString;

    .line 20
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_PKG_NAME:Lokio/ByteString;

    .line 21
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_OS_VERSION:Lokio/ByteString;

    .line 22
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_SDK_VERSION:Lokio/ByteString;

    .line 23
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_PLUGIN_VERSION:Lokio/ByteString;

    .line 24
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_PHONE_TYPE:Lokio/ByteString;

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_SOURCE:Ljava/lang/Integer;

    .line 26
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_OPENID:Lokio/ByteString;

    .line 27
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_ACCESS_TOKEN:Lokio/ByteString;

    .line 28
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_QQAPPID:Ljava/lang/Long;

    .line 29
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_CPU_VERSION:Lokio/ByteString;

    .line 30
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->DEFAULT_GPU_VERSION:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;)V
    .locals 13
    .param p1, "builder"    # Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .prologue
    .line 117
    iget-object v1, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->user_id:Lokio/ByteString;

    iget-object v2, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->pkg_name:Lokio/ByteString;

    iget-object v3, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->os_version:Lokio/ByteString;

    iget-object v4, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->sdk_version:Lokio/ByteString;

    iget-object v5, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->plugin_version:Lokio/ByteString;

    iget-object v6, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->phone_type:Lokio/ByteString;

    iget-object v7, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->source:Ljava/lang/Integer;

    iget-object v8, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->openid:Lokio/ByteString;

    iget-object v9, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->access_token:Lokio/ByteString;

    iget-object v10, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->qqappid:Ljava/lang/Long;

    iget-object v11, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->cpu_version:Lokio/ByteString;

    iget-object v12, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->gpu_version:Lokio/ByteString;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;-><init>(Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Integer;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Long;Lokio/ByteString;Lokio/ByteString;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .param p2, "x1"    # Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;-><init>(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Integer;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Long;Lokio/ByteString;Lokio/ByteString;)V
    .locals 0
    .param p1, "user_id"    # Lokio/ByteString;
    .param p2, "pkg_name"    # Lokio/ByteString;
    .param p3, "os_version"    # Lokio/ByteString;
    .param p4, "sdk_version"    # Lokio/ByteString;
    .param p5, "plugin_version"    # Lokio/ByteString;
    .param p6, "phone_type"    # Lokio/ByteString;
    .param p7, "source"    # Ljava/lang/Integer;
    .param p8, "openid"    # Lokio/ByteString;
    .param p9, "access_token"    # Lokio/ByteString;
    .param p10, "qqappid"    # Ljava/lang/Long;
    .param p11, "cpu_version"    # Lokio/ByteString;
    .param p12, "gpu_version"    # Lokio/ByteString;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->user_id:Lokio/ByteString;

    .line 103
    iput-object p2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->pkg_name:Lokio/ByteString;

    .line 104
    iput-object p3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->os_version:Lokio/ByteString;

    .line 105
    iput-object p4, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->sdk_version:Lokio/ByteString;

    .line 106
    iput-object p5, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->plugin_version:Lokio/ByteString;

    .line 107
    iput-object p6, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->phone_type:Lokio/ByteString;

    .line 108
    iput-object p7, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->source:Ljava/lang/Integer;

    .line 109
    iput-object p8, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->openid:Lokio/ByteString;

    .line 110
    iput-object p9, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->access_token:Lokio/ByteString;

    .line 111
    iput-object p10, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->qqappid:Ljava/lang/Long;

    .line 112
    iput-object p11, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->cpu_version:Lokio/ByteString;

    .line 113
    iput-object p12, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->gpu_version:Lokio/ByteString;

    .line 114
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-ne p1, p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    instance-of v3, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 125
    check-cast v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;

    .line 126
    .local v0, "o":Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;
    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->user_id:Lokio/ByteString;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->user_id:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->pkg_name:Lokio/ByteString;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->pkg_name:Lokio/ByteString;

    .line 127
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->os_version:Lokio/ByteString;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->os_version:Lokio/ByteString;

    .line 128
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->sdk_version:Lokio/ByteString;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->sdk_version:Lokio/ByteString;

    .line 129
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->plugin_version:Lokio/ByteString;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->plugin_version:Lokio/ByteString;

    .line 130
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->phone_type:Lokio/ByteString;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->phone_type:Lokio/ByteString;

    .line 131
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->source:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->source:Ljava/lang/Integer;

    .line 132
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->openid:Lokio/ByteString;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->openid:Lokio/ByteString;

    .line 133
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->access_token:Lokio/ByteString;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->access_token:Lokio/ByteString;

    .line 134
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->qqappid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->qqappid:Ljava/lang/Long;

    .line 135
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->cpu_version:Lokio/ByteString;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->cpu_version:Lokio/ByteString;

    .line 136
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->gpu_version:Lokio/ByteString;

    iget-object v4, v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->gpu_version:Lokio/ByteString;

    .line 137
    invoke-virtual {p0, v3, v4}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 142
    iget v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->hashCode:I

    .line 143
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 144
    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->user_id:Lokio/ByteString;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->user_id:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v0

    .line 145
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->pkg_name:Lokio/ByteString;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->pkg_name:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 146
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->os_version:Lokio/ByteString;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->os_version:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 147
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->sdk_version:Lokio/ByteString;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->sdk_version:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 148
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->plugin_version:Lokio/ByteString;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->plugin_version:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 149
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->phone_type:Lokio/ByteString;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->phone_type:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 150
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->source:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->source:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 151
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->openid:Lokio/ByteString;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->openid:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 152
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->access_token:Lokio/ByteString;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->access_token:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 153
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->qqappid:Ljava/lang/Long;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->qqappid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 154
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->cpu_version:Lokio/ByteString;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->cpu_version:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v3, v2

    .line 155
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->gpu_version:Lokio/ByteString;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->gpu_version:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 156
    iput v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->hashCode:I

    .line 158
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 144
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 145
    goto/16 :goto_1

    :cond_4
    move v2, v1

    .line 146
    goto/16 :goto_2

    :cond_5
    move v2, v1

    .line 147
    goto :goto_3

    :cond_6
    move v2, v1

    .line 148
    goto :goto_4

    :cond_7
    move v2, v1

    .line 149
    goto :goto_5

    :cond_8
    move v2, v1

    .line 150
    goto :goto_6

    :cond_9
    move v2, v1

    .line 151
    goto :goto_7

    :cond_a
    move v2, v1

    .line 152
    goto :goto_8

    :cond_b
    move v2, v1

    .line 153
    goto :goto_9

    :cond_c
    move v2, v1

    .line 154
    goto :goto_a
.end method
