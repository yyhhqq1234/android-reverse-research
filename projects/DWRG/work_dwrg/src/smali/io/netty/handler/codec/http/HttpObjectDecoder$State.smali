.class final enum Lio/netty/handler/codec/http/HttpObjectDecoder$State;
.super Ljava/lang/Enum;
.source "HttpObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/netty/handler/codec/http/HttpObjectDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field private static final synthetic ENUM$VALUES:[Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "SKIP_CONTROL_CHARS"

    invoke-direct {v0, v1, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 126
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "READ_INITIAL"

    invoke-direct {v0, v1, v4}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 127
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "READ_HEADER"

    invoke-direct {v0, v1, v5}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 128
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "READ_VARIABLE_LENGTH_CONTENT"

    invoke-direct {v0, v1, v6}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 129
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "READ_FIXED_LENGTH_CONTENT"

    invoke-direct {v0, v1, v7}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 130
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "READ_CHUNK_SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 131
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "READ_CHUNKED_CONTENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 132
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "READ_CHUNK_DELIMITER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 133
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "READ_CHUNK_FOOTER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 134
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "BAD_MESSAGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 135
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "UPGRADED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 124
    const/16 v0, 0xb

    new-array v0, v0, [Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v1, v0, v3

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v1, v0, v4

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v1, v0, v5

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v1, v0, v6

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v2, v0, v1

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ENUM$VALUES:[Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ENUM$VALUES:[Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    array-length v1, v0

    new-array v2, v1, [Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
