.class public final enum Lcom/tencent/kgvmp/report/a;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_CALLBACK:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_DEVICE_CHECK:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_DOWNLOAD_CONFIG:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_HANDLE_EXCEPTION:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_HARDWAREAPPLY:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_INIT:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_MATCH_FPS:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_REGCALL:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_REPORT_UNIQUE_ID:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_SCENETIME:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_SETTINGS:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_SOCKETINFO:Lcom/tencent/kgvmp/report/a;

.field public static final enum VMP_STRATEGY_INFO:Lcom/tencent/kgvmp/report/a;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_INIT"

    const-string v2, "TGPA_INIT"

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_INIT:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_DOWNLOAD_CONFIG"

    const-string v2, "TGPA_GETCONFIG"

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_DOWNLOAD_CONFIG:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_REGCALL"

    const-string v2, "TGPA_REGCALL"

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_REGCALL:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_SOCKETINFO"

    const-string v2, "TGPA_GAMEINFO"

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_SOCKETINFO:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_HANDLE_EXCEPTION"

    const-string v2, "TGPA_EXCEPTION"

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_HANDLE_EXCEPTION:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_CALLBACK"

    const/4 v2, 0x5

    const-string v3, "TGPA_VENDORINFO"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_CALLBACK:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_SCENETIME"

    const/4 v2, 0x6

    const-string v3, "TGPA_SCENETIME"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_SCENETIME:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_HARDWAREAPPLY"

    const/4 v2, 0x7

    const-string v3, "TGPA_HARDWAREAPPLY"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_HARDWAREAPPLY:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_DEVICE_CHECK"

    const/16 v2, 0x8

    const-string v3, "TGPA_DEVICECHECK"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_DEVICE_CHECK:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_SETTINGS"

    const/16 v2, 0x9

    const-string v3, "TGPA_GAMESETTING"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_SETTINGS:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_STRATEGY_INFO"

    const/16 v2, 0xa

    const-string v3, "TGPA_STRATEGYINFO"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_STRATEGY_INFO:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_MATCH_FPS"

    const/16 v2, 0xb

    const-string v3, "TGPA_MATCHFPS"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_MATCH_FPS:Lcom/tencent/kgvmp/report/a;

    new-instance v0, Lcom/tencent/kgvmp/report/a;

    const-string v1, "VMP_REPORT_UNIQUE_ID"

    const/16 v2, 0xc

    const-string v3, "TGPA_UNIQUEID"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/report/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/report/a;->VMP_REPORT_UNIQUE_ID:Lcom/tencent/kgvmp/report/a;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/tencent/kgvmp/report/a;

    sget-object v1, Lcom/tencent/kgvmp/report/a;->VMP_INIT:Lcom/tencent/kgvmp/report/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/kgvmp/report/a;->VMP_DOWNLOAD_CONFIG:Lcom/tencent/kgvmp/report/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/kgvmp/report/a;->VMP_REGCALL:Lcom/tencent/kgvmp/report/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/kgvmp/report/a;->VMP_SOCKETINFO:Lcom/tencent/kgvmp/report/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/kgvmp/report/a;->VMP_HANDLE_EXCEPTION:Lcom/tencent/kgvmp/report/a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/kgvmp/report/a;->VMP_CALLBACK:Lcom/tencent/kgvmp/report/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/kgvmp/report/a;->VMP_SCENETIME:Lcom/tencent/kgvmp/report/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/kgvmp/report/a;->VMP_HARDWAREAPPLY:Lcom/tencent/kgvmp/report/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/kgvmp/report/a;->VMP_DEVICE_CHECK:Lcom/tencent/kgvmp/report/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/kgvmp/report/a;->VMP_SETTINGS:Lcom/tencent/kgvmp/report/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/kgvmp/report/a;->VMP_STRATEGY_INFO:Lcom/tencent/kgvmp/report/a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/kgvmp/report/a;->VMP_MATCH_FPS:Lcom/tencent/kgvmp/report/a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tencent/kgvmp/report/a;->VMP_REPORT_UNIQUE_ID:Lcom/tencent/kgvmp/report/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/kgvmp/report/a;->$VALUES:[Lcom/tencent/kgvmp/report/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/kgvmp/report/a;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/kgvmp/report/a;
    .locals 1

    const-class v0, Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/kgvmp/report/a;

    return-object v0
.end method

.method public static values()[Lcom/tencent/kgvmp/report/a;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/report/a;->$VALUES:[Lcom/tencent/kgvmp/report/a;

    invoke-virtual {v0}, [Lcom/tencent/kgvmp/report/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/kgvmp/report/a;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/report/a;->value:Ljava/lang/String;

    return-object v0
.end method
