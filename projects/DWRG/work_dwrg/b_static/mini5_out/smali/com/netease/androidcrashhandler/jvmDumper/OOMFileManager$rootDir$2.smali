.class final Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$rootDir$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OOMFileManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$rootDir$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$rootDir$2;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$rootDir$2;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$rootDir$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$rootDir$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .locals 3

    .line 38
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->access$getMRootDirInvoker$p()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->access$getMRootDirInvoker$p()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mRootDirInvoker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v0, "STABLE_"

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_2

    .line 41
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->access$getMRootPath$p()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "mRootPath"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$rootDir$2;->invoke()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
