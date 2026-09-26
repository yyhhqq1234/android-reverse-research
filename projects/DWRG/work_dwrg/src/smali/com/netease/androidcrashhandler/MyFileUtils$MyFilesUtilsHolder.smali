.class Lcom/netease/androidcrashhandler/MyFileUtils$MyFilesUtilsHolder;
.super Ljava/lang/Object;
.source "MyFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/MyFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyFilesUtilsHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netease/androidcrashhandler/MyFileUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/netease/androidcrashhandler/MyFileUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/MyFileUtils;-><init>(Lcom/netease/androidcrashhandler/MyFileUtils;)V

    sput-object v0, Lcom/netease/androidcrashhandler/MyFileUtils$MyFilesUtilsHolder;->INSTANCE:Lcom/netease/androidcrashhandler/MyFileUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
