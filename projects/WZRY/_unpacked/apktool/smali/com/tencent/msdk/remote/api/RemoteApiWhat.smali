.class public final enum Lcom/tencent/msdk/remote/api/RemoteApiWhat;
.super Ljava/lang/Enum;
.source "RemoteApiWhat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/remote/api/RemoteApiWhat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum CleanLocation:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum CreateQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum CreateWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum Feedback:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum GetLocationInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum GetWXDeeplink:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum GetWXQrSignature:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum JoinQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum JoinWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryNearbyPlayer:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryQQFriends:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryQQGroupKey:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryQQMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryWXFriends:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryWXGroupStatus:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryWXMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum RegisterReq:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum SendToQzone:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum ShareToQQ:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum ShareToWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum ShareToWx:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum ShareWeChatGameCenter:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum UnBindQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum UnbindWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;


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
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "ShareToQQ"

    invoke-direct {v0, v1, v3}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->ShareToQQ:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 5
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "CleanLocation"

    invoke-direct {v0, v1, v4}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->CleanLocation:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 6
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "SendToQzone"

    invoke-direct {v0, v1, v5}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->SendToQzone:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 7
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "ShareToWx"

    invoke-direct {v0, v1, v6}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->ShareToWx:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 8
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryQQFriends"

    invoke-direct {v0, v1, v7}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQFriends:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 9
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryWXFriends"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXFriends:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 10
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryWXMyInfo"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 11
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryQQMyInfo"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 12
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "Feedback"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->Feedback:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 13
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryNearbyPlayer"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryNearbyPlayer:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 14
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "ShareWeChatGameCenter"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->ShareWeChatGameCenter:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 15
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "RegisterReq"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->RegisterReq:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 16
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "GetLocationInfo"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->GetLocationInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 17
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "UnBindQQGroup"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->UnBindQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 18
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryQQGroup"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 19
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryQQGroupKey"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQGroupKey:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 20
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "GetWXDeeplink"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->GetWXDeeplink:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 21
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "GetWXQrSignature"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->GetWXQrSignature:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 22
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryWXGroup"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 23
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "JoinWXGroup"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->JoinWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 24
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "CreateWXGroup"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->CreateWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 25
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "ShareToWXGroup"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->ShareToWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "UnbindWXGroup"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->UnbindWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryWXGroupStatus"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXGroupStatus:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "CreateQQGroup"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->CreateQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "JoinQQGroup"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->JoinQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 3
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    sget-object v1, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->ShareToQQ:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->CleanLocation:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->SendToQzone:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->ShareToWx:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQFriends:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXFriends:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->Feedback:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryNearbyPlayer:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->ShareWeChatGameCenter:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->RegisterReq:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->GetLocationInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->UnBindQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQGroupKey:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->GetWXDeeplink:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->GetWXQrSignature:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->JoinWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->CreateWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->ShareToWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->UnbindWXGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXGroupStatus:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->CreateQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->JoinQQGroup:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->$VALUES:[Lcom/tencent/msdk/remote/api/RemoteApiWhat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/remote/api/RemoteApiWhat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/remote/api/RemoteApiWhat;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->$VALUES:[Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    invoke-virtual {v0}, [Lcom/tencent/msdk/remote/api/RemoteApiWhat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    return-object v0
.end method
