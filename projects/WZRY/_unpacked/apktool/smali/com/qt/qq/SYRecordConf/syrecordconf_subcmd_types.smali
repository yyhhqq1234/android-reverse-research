.class public final enum Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;
.super Ljava/lang/Enum;
.source "syrecordconf_subcmd_types.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

.field public static final enum SUBCMD_GET_GAME_WITH_SDK:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

.field public static final enum SUBCMD_GET_UPGRADE_INFO:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

.field public static final enum SUBCMD_GET_UPGRADE_INFO_WITH_STATUS:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

.field public static final enum SUBCMD_GET_WHITELIST_INFO:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

.field public static final enum SUBCMD_GET_WHITELIST_WITH_STATUS:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9
    new-instance v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    const-string v1, "SUBCMD_GET_WHITELIST_INFO"

    invoke-direct {v0, v1, v7, v3}, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_WHITELIST_INFO:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    .line 13
    new-instance v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    const-string v1, "SUBCMD_GET_UPGRADE_INFO"

    invoke-direct {v0, v1, v3, v4}, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_UPGRADE_INFO:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    .line 17
    new-instance v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    const-string v1, "SUBCMD_GET_WHITELIST_WITH_STATUS"

    invoke-direct {v0, v1, v4, v5}, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_WHITELIST_WITH_STATUS:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    .line 21
    new-instance v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    const-string v1, "SUBCMD_GET_GAME_WITH_SDK"

    invoke-direct {v0, v1, v5, v6}, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_GAME_WITH_SDK:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    .line 25
    new-instance v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    const-string v1, "SUBCMD_GET_UPGRADE_INFO_WITH_STATUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_UPGRADE_INFO_WITH_STATUS:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    sget-object v1, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_WHITELIST_INFO:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_UPGRADE_INFO:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_WHITELIST_WITH_STATUS:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_GAME_WITH_SDK:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_UPGRADE_INFO_WITH_STATUS:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->$VALUES:[Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->value:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    return-object v0
.end method

.method public static values()[Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->$VALUES:[Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    invoke-virtual {v0}, [Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->value:I

    return v0
.end method
