.class public final enum Lcom/tencent/msdk/stat/eEVENT_TYPE;
.super Ljava/lang/Enum;
.source "eEVENT_TYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/stat/eEVENT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/stat/eEVENT_TYPE;

.field public static final enum eEVENT_AD_MORE:Lcom/tencent/msdk/stat/eEVENT_TYPE;

.field public static final enum eEVENT_AD_SHOW:Lcom/tencent/msdk/stat/eEVENT_TYPE;

.field public static final enum eEVENT_BASIC_GAMETIME:Lcom/tencent/msdk/stat/eEVENT_TYPE;

.field public static final enum eEVENT_BASIC_MATIDFAIL:Lcom/tencent/msdk/stat/eEVENT_TYPE;

.field public static final enum eEVENT_BASIC_MD5BAD:Lcom/tencent/msdk/stat/eEVENT_TYPE;

.field public static final enum eEVENT_BASIC_PICLENGTH:Lcom/tencent/msdk/stat/eEVENT_TYPE;

.field public static final enum eEVENT_GAME_TIME:Lcom/tencent/msdk/stat/eEVENT_TYPE;

.field public static final enum eEVENT_NOTICE_MORE:Lcom/tencent/msdk/stat/eEVENT_TYPE;

.field public static final enum eEVENT_NOTICE_SHOW:Lcom/tencent/msdk/stat/eEVENT_TYPE;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 12
    new-instance v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    const-string v1, "eEVENT_NOTICE_SHOW"

    invoke-direct {v0, v1, v6, v4}, Lcom/tencent/msdk/stat/eEVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_NOTICE_SHOW:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    .line 13
    new-instance v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    const-string v1, "eEVENT_NOTICE_MORE"

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/msdk/stat/eEVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_NOTICE_MORE:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    .line 18
    new-instance v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    const-string v1, "eEVENT_BASIC_MD5BAD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/msdk/stat/eEVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_BASIC_MD5BAD:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    .line 19
    new-instance v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    const-string v1, "eEVENT_BASIC_MATIDFAIL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/msdk/stat/eEVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_BASIC_MATIDFAIL:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    .line 20
    new-instance v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    const-string v1, "eEVENT_BASIC_PICLENGTH"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/msdk/stat/eEVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_BASIC_PICLENGTH:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    .line 21
    new-instance v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    const-string v1, "eEVENT_BASIC_GAMETIME"

    const/4 v2, 0x5

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/msdk/stat/eEVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_BASIC_GAMETIME:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    .line 23
    new-instance v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    const-string v1, "eEVENT_GAME_TIME"

    const/4 v2, 0x6

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/msdk/stat/eEVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_GAME_TIME:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    .line 27
    new-instance v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    const-string v1, "eEVENT_AD_SHOW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/tencent/msdk/stat/eEVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_AD_SHOW:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    .line 28
    new-instance v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    const-string v1, "eEVENT_AD_MORE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v5}, Lcom/tencent/msdk/stat/eEVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_AD_MORE:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    .line 8
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/tencent/msdk/stat/eEVENT_TYPE;

    sget-object v1, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_NOTICE_SHOW:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_NOTICE_MORE:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_BASIC_MD5BAD:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_BASIC_MATIDFAIL:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_BASIC_PICLENGTH:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_BASIC_GAMETIME:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_GAME_TIME:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_AD_SHOW:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_AD_MORE:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->$VALUES:[Lcom/tencent/msdk/stat/eEVENT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->value:I

    .line 32
    iput p3, p0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->value:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/stat/eEVENT_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/stat/eEVENT_TYPE;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->$VALUES:[Lcom/tencent/msdk/stat/eEVENT_TYPE;

    invoke-virtual {v0}, [Lcom/tencent/msdk/stat/eEVENT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/stat/eEVENT_TYPE;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/tencent/msdk/stat/eEVENT_TYPE;->value:I

    return v0
.end method
