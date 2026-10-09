.class public final enum Lcom/tencent/msdk/api/eRelationRetType;
.super Ljava/lang/Enum;
.source "eRelationRetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/api/eRelationRetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/api/eRelationRetType;

.field public static final enum eRet_QueryGameFriends:Lcom/tencent/msdk/api/eRelationRetType;

.field public static final enum eRet_QueryMyInfo:Lcom/tencent/msdk/api/eRelationRetType;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/tencent/msdk/api/eRelationRetType;

    const-string v1, "eRet_QueryMyInfo"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/msdk/api/eRelationRetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eRelationRetType;->eRet_QueryMyInfo:Lcom/tencent/msdk/api/eRelationRetType;

    .line 5
    new-instance v0, Lcom/tencent/msdk/api/eRelationRetType;

    const-string v1, "eRet_QueryGameFriends"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/msdk/api/eRelationRetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eRelationRetType;->eRet_QueryGameFriends:Lcom/tencent/msdk/api/eRelationRetType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/msdk/api/eRelationRetType;

    sget-object v1, Lcom/tencent/msdk/api/eRelationRetType;->eRet_QueryMyInfo:Lcom/tencent/msdk/api/eRelationRetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/api/eRelationRetType;->eRet_QueryGameFriends:Lcom/tencent/msdk/api/eRelationRetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/msdk/api/eRelationRetType;->$VALUES:[Lcom/tencent/msdk/api/eRelationRetType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/eRelationRetType;->value:I

    .line 9
    iput p3, p0, Lcom/tencent/msdk/api/eRelationRetType;->value:I

    .line 10
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/api/eRelationRetType;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "type":Lcom/tencent/msdk/api/eRelationRetType;
    packed-switch p0, :pswitch_data_0

    .line 22
    sget-object v0, Lcom/tencent/msdk/api/eRelationRetType;->eRet_QueryMyInfo:Lcom/tencent/msdk/api/eRelationRetType;

    .line 25
    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/api/eRelationRetType;->eRet_QueryMyInfo:Lcom/tencent/msdk/api/eRelationRetType;

    .line 17
    goto :goto_0

    .line 19
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/api/eRelationRetType;->eRet_QueryGameFriends:Lcom/tencent/msdk/api/eRelationRetType;

    .line 20
    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/api/eRelationRetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/tencent/msdk/api/eRelationRetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/api/eRelationRetType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/api/eRelationRetType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/msdk/api/eRelationRetType;->$VALUES:[Lcom/tencent/msdk/api/eRelationRetType;

    invoke-virtual {v0}, [Lcom/tencent/msdk/api/eRelationRetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/api/eRelationRetType;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/tencent/msdk/api/eRelationRetType;->value:I

    return v0
.end method
