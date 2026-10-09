.class public final enum Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;
.super Ljava/lang/Enum;
.source "OOMHprofUploader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HprofType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;",
        "",
        "(Ljava/lang/String;I)V",
        "ORIGIN",
        "STRIPPED",
        "CrashHunterLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

.field public static final enum ORIGIN:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

.field public static final enum STRIPPED:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;


# direct methods
.method private static final synthetic $values()[Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;->ORIGIN:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;->STRIPPED:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    const-string v1, "ORIGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;->ORIGIN:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    const-string v1, "STRIPPED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;->STRIPPED:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;->$values()[Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;->$VALUES:[Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;
    .locals 1

    const-class v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    return-object p0
.end method

.method public static values()[Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;
    .locals 1

    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;->$VALUES:[Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    return-object v0
.end method
