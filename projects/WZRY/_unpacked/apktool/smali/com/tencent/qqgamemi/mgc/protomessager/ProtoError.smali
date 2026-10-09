.class public final enum Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;
.super Ljava/lang/Enum;
.source "ProtoError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

.field public static final enum BUSY:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

.field public static final enum CONNECT_FAIL:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

.field public static final enum FORMAT_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

.field public static final enum IO_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

.field public static final enum LOGIN_CANCELED:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

.field public static final enum OTHER_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

.field public static final enum SEND_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

.field public static final enum TIMEOUT:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;


# instance fields
.field private mException:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->TIMEOUT:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    .line 5
    new-instance v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    const-string v1, "FORMAT_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->FORMAT_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    .line 6
    new-instance v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->IO_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    .line 7
    new-instance v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    const-string v1, "SEND_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->SEND_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    .line 8
    new-instance v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    const-string v1, "CONNECT_FAIL"

    invoke-direct {v0, v1, v7}, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->CONNECT_FAIL:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    .line 9
    new-instance v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    const-string v1, "BUSY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->BUSY:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    .line 10
    new-instance v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    const-string v1, "LOGIN_CANCELED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->LOGIN_CANCELED:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    .line 11
    new-instance v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    const-string v1, "OTHER_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->OTHER_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    sget-object v1, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->TIMEOUT:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->FORMAT_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->IO_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->SEND_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->CONNECT_FAIL:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->BUSY:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->LOGIN_CANCELED:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->OTHER_ERROR:Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->$VALUES:[Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->$VALUES:[Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    invoke-virtual {v0}, [Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;

    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method setException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->mException:Ljava/lang/Exception;

    .line 20
    return-void
.end method

.method public toHumanEasyReadText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoError;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 51
    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    const-string/jumbo v0, "\u8fde\u63a5\u8d85\u65f6"

    .line 31
    goto :goto_0

    .line 33
    :pswitch_1
    const-string/jumbo v0, "\u670d\u52a1\u5668\u51fa\u9519"

    .line 34
    goto :goto_0

    .line 38
    :pswitch_2
    const-string/jumbo v0, "\u7f51\u7edc\u4f3c\u4e4e\u6709\u95ee\u9898"

    .line 39
    goto :goto_0

    .line 41
    :pswitch_3
    const-string/jumbo v0, "\u6b63\u5728\u8bf7\u6c42\uff0c\u8bf7\u7a0d\u7b49"

    .line 42
    goto :goto_0

    .line 44
    :pswitch_4
    const-string/jumbo v0, "\u60a8\u8fd8\u672a\u767b\u5f55"

    .line 45
    goto :goto_0

    .line 47
    :pswitch_5
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
