.class public final enum Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;
.super Ljava/lang/Enum;
.source "syrecordconf_cmd_types.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

.field public static final enum CMD_SYRECORDCONF:Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

    const-string v1, "CMD_SYRECORDCONF"

    const/16 v2, 0x464

    invoke-direct {v0, v1, v3, v2}, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;->CMD_SYRECORDCONF:Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

    sget-object v1, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;->CMD_SYRECORDCONF:Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;->$VALUES:[Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;->value:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

    return-object v0
.end method

.method public static values()[Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;->$VALUES:[Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

    invoke-virtual {v0}, [Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;->value:I

    return v0
.end method
