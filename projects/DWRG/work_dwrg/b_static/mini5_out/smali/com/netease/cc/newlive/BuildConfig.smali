.class public final Lcom/netease/cc/newlive/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.netease.cc.newlive"

.field public static final BUILD_CAMERA:Z = false

.field public static final BUILD_RTMP_BRIDGE:Z = false

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z

.field public static final ENABLE_CC_ADDIO:Z = true

.field public static final FLAVOR:Ljava/lang/String; = "screenCcaudioNotinker"

.field public static final FLAVOR_audio:Ljava/lang/String; = "ccaudio"

.field public static final FLAVOR_capture:Ljava/lang/String; = "screen"

.field public static final FLAVOR_tinker:Ljava/lang/String; = "notinker"

.field public static final IMAGE_LOADER_PROXY:Z = true

.field public static final VERSION_CODE:I = 0x1

.field public static final VERSION_NAME:Ljava/lang/String; = "1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "true"

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netease/cc/newlive/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
