.class final Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$hprofAnalysisDir$2;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOOMFileManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OOMFileManager.kt\ncom/netease/androidcrashhandler/jvmDumper/OOMFileManager$hprofAnalysisDir$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"
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
.field public static final INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$hprofAnalysisDir$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$hprofAnalysisDir$2;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$hprofAnalysisDir$2;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$hprofAnalysisDir$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$hprofAnalysisDir$2;

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

    .line 45
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "memory/hprof-aly"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$hprofAnalysisDir$2;->invoke()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
