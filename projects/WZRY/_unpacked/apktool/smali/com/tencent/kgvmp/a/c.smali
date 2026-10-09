.class public final enum Lcom/tencent/kgvmp/a/c;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/kgvmp/a/c;

.field public static final enum BATTLE:Lcom/tencent/kgvmp/a/c;

.field public static final enum EFFECTCOUNT:Lcom/tencent/kgvmp/a/c;

.field public static final enum FPS:Lcom/tencent/kgvmp/a/c;

.field public static final enum LEVEL:Lcom/tencent/kgvmp/a/c;

.field public static final enum LOADING:Lcom/tencent/kgvmp/a/c;

.field public static final enum NETLATENCY:Lcom/tencent/kgvmp/a/c;

.field public static final enum OBJECTCOUNT:Lcom/tencent/kgvmp/a/c;

.field public static final enum PICQUALITY:Lcom/tencent/kgvmp/a/c;

.field public static final enum RESOLUTION:Lcom/tencent/kgvmp/a/c;

.field public static final enum ROLESTATUS:Lcom/tencent/kgvmp/a/c;

.field public static final enum SCENEID:Lcom/tencent/kgvmp/a/c;

.field public static final enum SERVERIP:Lcom/tencent/kgvmp/a/c;

.field public static final enum TARGETFPS:Lcom/tencent/kgvmp/a/c;

.field public static final enum THREADNAME:Lcom/tencent/kgvmp/a/c;

.field public static final enum THREADTID:Lcom/tencent/kgvmp/a/c;

.field public static final enum USERCOUNT:Lcom/tencent/kgvmp/a/c;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "SCENEID"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->SCENEID:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "LEVEL"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->LEVEL:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "FPS"

    const-string v2, "3"

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->FPS:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "OBJECTCOUNT"

    const-string v2, "4"

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->OBJECTCOUNT:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "EFFECTCOUNT"

    const-string v2, "5"

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->EFFECTCOUNT:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "ROLESTATUS"

    const/4 v2, 0x5

    const-string v3, "6"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->ROLESTATUS:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "NETLATENCY"

    const/4 v2, 0x6

    const-string v3, "7"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->NETLATENCY:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "LOADING"

    const/4 v2, 0x7

    const-string v3, "8"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->LOADING:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "SERVERIP"

    const/16 v2, 0x8

    const-string v3, "9"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->SERVERIP:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "TARGETFPS"

    const/16 v2, 0x9

    const-string v3, "10"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->TARGETFPS:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "RESOLUTION"

    const/16 v2, 0xa

    const-string v3, "11"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->RESOLUTION:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "PICQUALITY"

    const/16 v2, 0xb

    const-string v3, "12"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->PICQUALITY:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "USERCOUNT"

    const/16 v2, 0xc

    const-string v3, "13"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->USERCOUNT:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "THREADNAME"

    const/16 v2, 0xd

    const-string v3, "14"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->THREADNAME:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "THREADTID"

    const/16 v2, 0xe

    const-string v3, "15"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->THREADTID:Lcom/tencent/kgvmp/a/c;

    new-instance v0, Lcom/tencent/kgvmp/a/c;

    const-string v1, "BATTLE"

    const/16 v2, 0xf

    const-string v3, "16"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/c;->BATTLE:Lcom/tencent/kgvmp/a/c;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/tencent/kgvmp/a/c;

    sget-object v1, Lcom/tencent/kgvmp/a/c;->SCENEID:Lcom/tencent/kgvmp/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/kgvmp/a/c;->LEVEL:Lcom/tencent/kgvmp/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/kgvmp/a/c;->FPS:Lcom/tencent/kgvmp/a/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/kgvmp/a/c;->OBJECTCOUNT:Lcom/tencent/kgvmp/a/c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/kgvmp/a/c;->EFFECTCOUNT:Lcom/tencent/kgvmp/a/c;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/kgvmp/a/c;->ROLESTATUS:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/kgvmp/a/c;->NETLATENCY:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/kgvmp/a/c;->LOADING:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/kgvmp/a/c;->SERVERIP:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/kgvmp/a/c;->TARGETFPS:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/kgvmp/a/c;->RESOLUTION:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/kgvmp/a/c;->PICQUALITY:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tencent/kgvmp/a/c;->USERCOUNT:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tencent/kgvmp/a/c;->THREADNAME:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tencent/kgvmp/a/c;->THREADTID:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tencent/kgvmp/a/c;->BATTLE:Lcom/tencent/kgvmp/a/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/kgvmp/a/c;->$VALUES:[Lcom/tencent/kgvmp/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/kgvmp/a/c;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/kgvmp/a/c;
    .locals 1

    const-class v0, Lcom/tencent/kgvmp/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/kgvmp/a/c;

    return-object v0
.end method

.method public static values()[Lcom/tencent/kgvmp/a/c;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/c;->$VALUES:[Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v0}, [Lcom/tencent/kgvmp/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/kgvmp/a/c;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/a/c;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyID()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/a/c;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
