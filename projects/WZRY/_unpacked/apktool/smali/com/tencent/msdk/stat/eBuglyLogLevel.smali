.class public final enum Lcom/tencent/msdk/stat/eBuglyLogLevel;
.super Ljava/lang/Enum;
.source "eBuglyLogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/stat/eBuglyLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/stat/eBuglyLogLevel;

.field public static final enum eBuglyLogLevel_D:Lcom/tencent/msdk/stat/eBuglyLogLevel;

.field public static final enum eBuglyLogLevel_E:Lcom/tencent/msdk/stat/eBuglyLogLevel;

.field public static final enum eBuglyLogLevel_I:Lcom/tencent/msdk/stat/eBuglyLogLevel;

.field public static final enum eBuglyLogLevel_S:Lcom/tencent/msdk/stat/eBuglyLogLevel;

.field public static final enum eBuglyLogLevel_V:Lcom/tencent/msdk/stat/eBuglyLogLevel;

.field public static final enum eBuglyLogLevel_W:Lcom/tencent/msdk/stat/eBuglyLogLevel;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;

    const-string v1, "eBuglyLogLevel_S"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/msdk/stat/eBuglyLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_S:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 5
    new-instance v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;

    const-string v1, "eBuglyLogLevel_E"

    invoke-direct {v0, v1, v5, v5}, Lcom/tencent/msdk/stat/eBuglyLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_E:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 6
    new-instance v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;

    const-string v1, "eBuglyLogLevel_W"

    invoke-direct {v0, v1, v6, v6}, Lcom/tencent/msdk/stat/eBuglyLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_W:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 7
    new-instance v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;

    const-string v1, "eBuglyLogLevel_I"

    invoke-direct {v0, v1, v7, v7}, Lcom/tencent/msdk/stat/eBuglyLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_I:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 8
    new-instance v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;

    const-string v1, "eBuglyLogLevel_D"

    invoke-direct {v0, v1, v8, v8}, Lcom/tencent/msdk/stat/eBuglyLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_D:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 9
    new-instance v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;

    const-string v1, "eBuglyLogLevel_V"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/msdk/stat/eBuglyLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_V:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/msdk/stat/eBuglyLogLevel;

    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_S:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_E:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_W:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_I:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_D:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_V:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->$VALUES:[Lcom/tencent/msdk/stat/eBuglyLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "_value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->value:I

    .line 14
    iput p3, p0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->value:I

    .line 15
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/stat/eBuglyLogLevel;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 20
    .local v0, "level":Lcom/tencent/msdk/stat/eBuglyLogLevel;
    packed-switch p0, :pswitch_data_0

    .line 40
    sget-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_E:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 44
    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_S:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 23
    goto :goto_0

    .line 25
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_E:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 26
    goto :goto_0

    .line 28
    :pswitch_2
    sget-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_W:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 29
    goto :goto_0

    .line 31
    :pswitch_3
    sget-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_I:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 32
    goto :goto_0

    .line 34
    :pswitch_4
    sget-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_D:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 35
    goto :goto_0

    .line 37
    :pswitch_5
    sget-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_V:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    .line 38
    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/stat/eBuglyLogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/stat/eBuglyLogLevel;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->$VALUES:[Lcom/tencent/msdk/stat/eBuglyLogLevel;

    invoke-virtual {v0}, [Lcom/tencent/msdk/stat/eBuglyLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/stat/eBuglyLogLevel;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/tencent/msdk/stat/eBuglyLogLevel;->value:I

    return v0
.end method
