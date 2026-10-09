.class public final enum Lcom/tencent/msdk/qq/ApiName;
.super Ljava/lang/Enum;
.source "ApiName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/qq/ApiName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/qq/ApiName;

.field public static MAX_QQ_API:I

.field public static MAX_WX_API:I

.field public static final enum WGAddGameFriendToQQ:Lcom/tencent/msdk/qq/ApiName;

.field public static final enum WGBindQQGroup:Lcom/tencent/msdk/qq/ApiName;

.field public static final enum WGJoinQQGroup:Lcom/tencent/msdk/qq/ApiName;

.field public static final enum WGSendToQQWithPhoto:Lcom/tencent/msdk/qq/ApiName;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/tencent/msdk/qq/ApiName;

    const-string v1, "WGSendToQQWithPhoto"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/msdk/qq/ApiName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/qq/ApiName;->WGSendToQQWithPhoto:Lcom/tencent/msdk/qq/ApiName;

    .line 5
    new-instance v0, Lcom/tencent/msdk/qq/ApiName;

    const-string v1, "WGJoinQQGroup"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/msdk/qq/ApiName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/qq/ApiName;->WGJoinQQGroup:Lcom/tencent/msdk/qq/ApiName;

    .line 6
    new-instance v0, Lcom/tencent/msdk/qq/ApiName;

    const-string v1, "WGAddGameFriendToQQ"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/msdk/qq/ApiName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/qq/ApiName;->WGAddGameFriendToQQ:Lcom/tencent/msdk/qq/ApiName;

    .line 7
    new-instance v0, Lcom/tencent/msdk/qq/ApiName;

    const-string v1, "WGBindQQGroup"

    invoke-direct {v0, v1, v5, v5}, Lcom/tencent/msdk/qq/ApiName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/qq/ApiName;->WGBindQQGroup:Lcom/tencent/msdk/qq/ApiName;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/msdk/qq/ApiName;

    sget-object v1, Lcom/tencent/msdk/qq/ApiName;->WGSendToQQWithPhoto:Lcom/tencent/msdk/qq/ApiName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/qq/ApiName;->WGJoinQQGroup:Lcom/tencent/msdk/qq/ApiName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/qq/ApiName;->WGAddGameFriendToQQ:Lcom/tencent/msdk/qq/ApiName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/msdk/qq/ApiName;->WGBindQQGroup:Lcom/tencent/msdk/qq/ApiName;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/msdk/qq/ApiName;->$VALUES:[Lcom/tencent/msdk/qq/ApiName;

    .line 9
    const/16 v0, 0x2710

    sput v0, Lcom/tencent/msdk/qq/ApiName;->MAX_QQ_API:I

    .line 10
    const/16 v0, 0x4e20

    sput v0, Lcom/tencent/msdk/qq/ApiName;->MAX_WX_API:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/tencent/msdk/qq/ApiName;->val:I

    .line 15
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/qq/ApiName;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 28
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/qq/ApiName;->WGSendToQQWithPhoto:Lcom/tencent/msdk/qq/ApiName;

    goto :goto_0

    .line 22
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/qq/ApiName;->WGJoinQQGroup:Lcom/tencent/msdk/qq/ApiName;

    goto :goto_0

    .line 24
    :pswitch_2
    sget-object v0, Lcom/tencent/msdk/qq/ApiName;->WGAddGameFriendToQQ:Lcom/tencent/msdk/qq/ApiName;

    goto :goto_0

    .line 26
    :pswitch_3
    sget-object v0, Lcom/tencent/msdk/qq/ApiName;->WGBindQQGroup:Lcom/tencent/msdk/qq/ApiName;

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/qq/ApiName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/tencent/msdk/qq/ApiName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/qq/ApiName;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/qq/ApiName;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/msdk/qq/ApiName;->$VALUES:[Lcom/tencent/msdk/qq/ApiName;

    invoke-virtual {v0}, [Lcom/tencent/msdk/qq/ApiName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/qq/ApiName;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/tencent/msdk/qq/ApiName;->val:I

    return v0
.end method
