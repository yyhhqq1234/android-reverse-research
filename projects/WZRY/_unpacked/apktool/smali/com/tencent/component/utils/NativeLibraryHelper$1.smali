.class final Lcom/tencent/component/utils/NativeLibraryHelper$1;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"

# interfaces
.implements Lcom/tencent/component/utils/NativeLibraryHelper$IterateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/utils/NativeLibraryHelper;->copyNativeBinariesIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dstDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tencent/component/utils/NativeLibraryHelper$1;->val$dstDir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntry(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "ze"    # Ljava/util/zip/ZipEntry;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/component/utils/NativeLibraryHelper$1;->val$dstDir:Ljava/lang/String;

    invoke-static {p1, p2, v0, p3}, Lcom/tencent/component/utils/NativeLibraryHelper;->access$000(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
