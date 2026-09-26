.class Lcom/netease/androidcrashhandler/AndroidCrashHandler$AndroidCrashHandlerHolder;
.super Ljava/lang/Object;
.source "AndroidCrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/AndroidCrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCrashHandlerHolder"
.end annotation


# static fields
.field public static INSTANCE:Lcom/netease/androidcrashhandler/AndroidCrashHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;-><init>(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)V

    sput-object v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$AndroidCrashHandlerHolder;->INSTANCE:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
